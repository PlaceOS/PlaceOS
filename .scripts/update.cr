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
# --preview
#   + if there's a preview already in `VERSION`, bump that
#   + otherwise, create preview of next minor (either new monthly OR new minor)

# PlaceOS Release Process
preview = false
month = false
major = false

OptionParser.parse do |parser|
  parser.banner = "Usage: ./update [arguments]\n\n`--preview` can be combined with either flags.\nDefaults to bumping to the next minor version."
  parser.on("--preview", "Create a release candidate") { preview = true }
  parser.on("--major", "Create next major release") { major = true }
  parser.on("--month", "Create next month release") { month = true }
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

version = PlaceCalver.from_file

new_version = Update.update(version, major: major, month: month, preview: preview)

puts "Updated #{version} to #{new_version}"

File.write(PlaceCalver::VERSION_FILE, "placeos-#{new_version}")
