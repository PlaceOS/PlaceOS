#! /usr/bin/env crystal

require "yaml"

# Can use the version from shards itself
record Pin, git : String, version : String do
  include YAML::Serializable

  def_equals git, version
end

record ShardLock, version : String, shards : Hash(String, Pin) do
  include YAML::Serializable
end

record Shard, name : String, pin : Pin do
  def reference
    if (data = pin.version.split("+git.commit.")).size == 2
      data.last
    else
      "v#{data.first}"
    end
  end

  def repository_markdown
    "[**#{pin.version.gsub("+git.commit.", "@")}**](#{repository_link})"
  end

  def repository_link
    File.join(pin.git.rchop(".git"), "/tree/#{reference}")
  end

  def_equals name, pin
end

USAGE = <<-DOC
  ./query_shard_versions.cr DIRECTORY [SHARD]

  If no shards are passed, statistics are printed for every shard discovered
  under DIRECTORY.
  Otherwise, the statistics are filtered down to the passed shards.
  DOC

abort(USAGE) if ARGV.size < 1

directory = ARGV[0]
filtered_shards = ARGV[1..]

current_remote = `GIT_TERMINAL_PROMPT=0 git remote get-url origin`.chomp
current_commmit = `GIT_TERMINAL_PROMPT=0 git rev-parse HEAD`.chomp

project_shards = Dir.glob(Path[directory] / "**/shard.lock").map do |path|
  shards = File.open(path, &->ShardLock.from_yaml(IO)).shards.map do |shard_name, pin|
    Shard.new(shard_name, pin)
  end
  project_base = path.rchop("/shard.lock").lchop("./")
  {project_base, shards}
end.to_h

all_shards = project_shards.values.flatten
shard_tallys = all_shards.tally

tally = false
shard_listing = true

puts "# PlaceOS `shards` audit"
puts "\nDate: #{Time.local(Time::Location.fixed(10)).to_rfc3339} AEST"
puts "PlaceOS Version: #{ENV["PLACEOS_VERSION"]}" if ENV.has_key? "PLACEOS_VERSION"
puts "\n**Shards considered**\n"
puts "- #{filtered_shards.join("")}\n\n"

if tally
  puts "## `shards` by frequency\n\n"
  puts "| **shard** | **version** | **count** |"
  puts "|-----------|-------------|-----------|"

  # Print a tally
  shard_tallys.to_a.sort_by(&.[1].*(-1)).each do |shard, count|
    next unless filtered_shards.empty? || shard.name.in?(filtered_shards)

    puts "| `#{ shard.name }` | #{ shard.repository_markdown } | #{ count } |"
  end

  puts ""
end

shard_project_distribution = all_shards.to_h do |shard|
  {
    shard,
    project_shards.compact_map do |project, shards|
      project if shard.in? shards
    end,
  }
end

if shard_listing
  puts "## `shards` by version\n\n"

  # Print locations of multiple shards, filtered by the list _or_ all of them
  shard_project_distribution.group_by(&.first.name).each do |shard_name, occurrences|
    next unless filtered_shards.empty? || shard_name.in?(filtered_shards)

    puts "### `#{shard_name}`\n"

    occurrences.sort(&.last.size).each do |shard, projects|
      project_links = projects.join("\n - ") do |project|
        "[#{project}](#{File.join(current_remote, "/tree/#{current_commmit}", project)})"
      end
      puts "\n#{shard.repository_markdown}\n\n - #{project_links}"
    end

    puts ""
  end
end

# NOTE: Bash script that inspired the above.
#
# shard_name="$1"
#
# (yq -j eval ".shards | { filename: .${shard_name} } " ./services/*/shard.lock 2> /dev/null || echo "") | \
# jq -s '
#     map(to_entries)
#     | flatten
#     | map(.value + {path: .key})
#     | group_by(.git, .version)
#     | map({
#         version: .[0].version,
#         git: .[0].git,
#         repositories: [ .[].path | rtrimstr("/shard.lock")]
#     })
# '
