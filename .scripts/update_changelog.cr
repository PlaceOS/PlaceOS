require "./src/changelog"

begin
  new_version, previous_reference = ARGV
rescue IndexError
  abort("Expected positional arguments: <new_version> <previous_reference>")
end

Changelog.update_changelog(new_version, previous_reference)
