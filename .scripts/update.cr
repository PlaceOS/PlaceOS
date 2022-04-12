require "option_parser"

#  When called with no arguments, this script will...
#  - update increment of previous version in `VERSION`.
#
# Passing `--preview` will create the latest release candidate.
# Similar to when called with no arguments, just adds an incremental `rc` suffix to whatever the new version _will_ be.

# Types of updates
#
# - Major
# - Monthly
#   - Current month
#   - Next Month
# - Preview
#   - New candidate for existing preview
#   - Preview current month
#   - Preview major

# CLI Arguments
###############################################################################################
#
# --major
#
# --month
#
# --next-month
#   + implies preview
#
# --preview
#   + if there's a preview already in `VERSION`, bump that
#   + otherwise, create preview of next minor (either new monthly OR new minor)

# PlaceOS Release Process
preview = false

OptionParser.parse do |parser|
  parser.banner = "Usage: salute [arguments]"
  parser.on("--preview", "Create the latest release candidate") { preview = true }
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

def fetch_all
  `git fetch --all`
end

module Version
  NIGHTLY = "nightly"

  abstract def next
  abstract def branch

  def self.parse?(version)
    if version == NIGHTLY
      Nightly.new
    else
      PlaceCalver.parse_calver?(version)
    end
  end

  def self.from_file(file : String = VERSION_FILE) : Version | Nightly
    version = File.read(VERSION_FILE) rescue abort("Expected a `VERSION` file")

    parse?(version) || abort("Expected well formated version file")
  end
end

struct Nightly
  include Version

  # Fetch git tags to find current major
  def next
    current_year, current_month, _current_day = Time.utc.date
  end

  def branch
  end
end

record(
  PlaceCalver,
  major : Int32,
  year : Int32,
  month : Int32,
  minor : Int32,
  release_candidate : Int32? = nil,
) do
  include Version

  REGEX        = /(?<major>\d+)\.(?<year>\d{2})(?<month>\d{2})\.(?<minor>\d+)(-rc(?<release_candidate>\d+))?/
  VERSION_FILE = "VERSION"

  getter branch : String do
    if preview?
      "#{major}.#{justified_year}#{justified_month}.#{minor}-preview"
    else
      "#{major}.#{justified_year}#{justified_month}"
    end
  end

  getter? preview : Bool do
    release_candidate.nil?
  end

  def next
    current_year, current_month, _current_day = Time.utc.date
    if current_year == year && current_month == month
      # Produce the next minor version for this month
      Version.new(major, year, month, minor + 1)
    else
      Version.new(major, current_year, current_month, 0)
    end
  end

  def self.parse_calver?(version)
    return unless data = REGEX.match(version)

    year = data["year"].to_i + 2000
    month = data["month"].to_i
    major = data["major"].to_i
    minor = data["minor"].to_i
    release_candidate = data["release_candidate"]?.try(&.to_i?)

    new(
      year: year,
      month: month,
      major: major,
      minor: minor,
      release_candidate: release_candidate,
    )
  end

  protected getter justified_year : String { year.to_s[-2...] }
  protected getter justified_month : String { month.to_s.rjust(2, '0') }

  def to_s(io)
    io << "#{major}.#{justified_year}#{justified_month}.#{minor}"
    io << "-rc#{release_candidate}" if preview?
  end
end
