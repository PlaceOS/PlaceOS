require "path"

begin
new_version, previous_reference = ARGV
rescue IndexError
  abort("Expected positional arguments: <new_version> <previous_reference>")
end

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
    .group_by(&.type)
    .transform_values!(&.sort_by!(&.date))
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
    "https://github.com/PlaceOS/#{repo}"
  end

  MESSAGE_REGEX = /(?<type>\w+)(?<scope>(?:\([^()\r\n]*\)|\())?(?<breaking>!)?(?<separator>:)? ?(?<subject>.+$)/

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

    return unless data = MESSAGE_REGEX.match(message)
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
  puts "## #{version}\n\n"
  commits(previous_reference: "1.2203").each do |type, commits|
    puts "### #{Commit::CHANGELOG_HEADINGS[type]}"
    commits.sort_by(&.name).each { |commit| puts commit }
    puts ""
  end
end

changelog(new_version, previous_reference)
