require "path"

module Changelog
  extend self

  GITHUB_ORGANISATION = "https://github.com/PlaceOS"

  def submodules(reference)
    `git ls-tree -r #{reference}`
      .lines
      .compact_map do |line|
        _, tree_type, commit, submodule_path = line.split(/\s+/)
        {Path[submodule_path.chomp], commit} if tree_type == "commit"
      end
  end

  def commits(previous_reference)
    submodules(previous_reference)
      .flat_map { |submodule, from| log(submodule, from) }
      .group_by { |commit| Commit::CHANGELOG_HEADINGS[commit.type] }
      .transform_values!(&.sort_by!(&.date).sort_by!(&.name))
  end

  def log(path, from = nil)
    output = IO::Memory.new

    arguments = [
      "log",
      "--pretty=%at %s",
    ]

    arguments << "#{from}..HEAD" if from

    Process.run("git", arguments, output: output, chdir: path.to_s)
    output.to_s.lines.compact_map do |line|
      Commit.from_line?(path, line)
    end
  end

  def changelog(version, previous_reference)
    String.build do |io|
      io.puts "## #{version}\n\n"
      commits(previous_reference: previous_reference).each do |heading, commits|
        io.puts "### #{heading}"
        commits.each { |commit| io.puts commit }
        io.puts ""
      end
    end
  end

  def update_changelog(version, previous, file = "CHANGELOG.md")
    changelog_lines = File.read_lines(file)
    latest_version_index = changelog_lines.index do |line|
      line.starts_with?("## ")
    end || 0

    latest_version_header = changelog_lines[latest_version_index]

    # Remove latest changelog run for current version
    if latest_version_header.includes?(version)
      previous_version_index = changelog_lines.index(offset: latest_version_index + 1) do |line|
        line.starts_with?("## ")
      end || latest_version_index

      changelog_lines.delete_at(latest_version_index..previous_version_index - 1)
    end

    new_changelog_entry = changelog(version, previous).chomp
    updated_changelog = changelog_lines.insert(latest_version_index, new_changelog_entry).join('\n')
    File.write(file, updated_changelog)
  end

  record(
    Commit,
    submodule_path : Path,
    date : Time,
    message : String,
    scope : String?,
    type : String,
    subject : String,
    breaking : Bool
  ) do
    getter name : String do
      self.class.normalize_name(submodule_path)
    end

    getter repository_url : String do
      repo = submodule_path.to_s.split('/').last
      File.join(GITHUB_ORGANISATION, repo)
    end

    REGEX = /(?<type>\w+)(?<scope>(?:\([^()\r\n]*\)|\())?(?<breaking>!)?: ?(?<subject>.+$)/

    CHANGELOG_HEADINGS = {
      "feat"     => "Added",
      "fix"      => "Fixed",
      "refactor" => "Changed",
      "build"    => "Changed",
      "perf"     => "Added",
    }

    CHANGELOG_TYPES = CHANGELOG_HEADINGS.keys

    # - Capitalize
    # - Add links to PR on github
    def normalized_subject
      subject.capitalize
        .gsub(/#([0-9]+)/) do |pr_number|
          "[#{pr_number}](#{repository_url}/pull/#{pr_number.gsub('#', "")})"
        end
    end

    def to_s(io)
      io << "- "
      io << name << ": "
      io << normalized_subject
    end

    def self.normalize_name(path)
      path
        .to_s
        .split('/')
        .last
        .split('-').join("", &.capitalize)
        .gsub(/api/i, "API")
        .camelcase
    end

    def self.from_line?(repository_path, line)
      unix_epoch, _seperator, message = line.partition(' ')

      return unless data = REGEX.match(message)
      return unless data["type"].in? CHANGELOG_TYPES

      new(
        submodule_path: repository_path,
        date: Time.unix(unix_epoch.to_i64),
        message: message,
        type: data["type"],
        scope: data["scope"]?,
        subject: data["subject"],
        breaking: !!data["breaking"]?,
      )
    end
  end
end
