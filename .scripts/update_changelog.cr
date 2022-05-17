#! /usr/bin/env crystal

require "option_parser"

require "./src/changelog"

next_version = nil
previous_reference = nil

OptionParser.parse do |parser|
  parser.banner = "Usage: ./update_changelog [arguments]"
  parser.on("--next-version VERSION", "Version to create CHANGELOG for") { |v| next_version = v }
  parser.on("--previous-reference REF", "Ref/version to start CHANGELOG entries from") { |v| previous_reference = v }
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

if next_version.nil?
  abort("--next-version is required")
end

Changelog.update_changelog(next_version.as(String), previous_reference)
