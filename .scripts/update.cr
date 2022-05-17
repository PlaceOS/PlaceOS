#! /usr/bin/env crystal

require "option_parser"
require "src/update"

#  When called with no arguments, this script will...
#  - update increment of previous version in `VERSION`.
#
# Passing `--preview` will create the latest release candidate.
# Similar to when called with no arguments, just adds an incremental `rc` suffix to whatever the new version _will_ be.
#
# CLI Arguments
###############################################################################################
#
# --major
#
# --month
#
# --minor
#
# --preview
#   + if there's a preview already in `VERSION`, bump that
#   + otherwise, create preview of next minor (either new monthly OR new minor)

# PlaceOS Release Process
preview = false

release_type = nil

type_count = 0

OptionParser.parse do |parser|
  parser.banner = "Usage: ./update [arguments]\n\n`--preview` can be combined with either flags.\nDefaults to bumping to the next minor version."
  parser.on("--preview", "Create a release candidate") { preview = true }
  parser.on("--major", "Create next major release") { type_count += 1; release_type = Update::Type::Major }
  parser.on("--month", "Create next month release") { type_count += 1; release_type = Update::Type::Month }
  parser.on("--minor", "Create next minor release") { type_count += 1; release_type = Update::Type::Minor }
  parser.on("-h", "--help", "Show this help") do
    puts parser
    exit
  end

  parser.invalid_option do |flag|
    STDERR.puts "ERROR: #{flag} is not a valid option."
    STDERR.puts parser
    exit(1)
  end
end

abort("Specify at most ONE of `--major`, `--month`, and `--minor`") if type_count > 1

# Default to minor if no type specified
release_type = Update::Type::Minor if release_type.nil?

version = PlaceCalver.from_file

new_version = Update.update(version, type: release_type, preview: preview)

puts "Updated #{version} to #{new_version}"

File.write(PlaceCalver::VERSION_FILE, "placeos-#{new_version}")
