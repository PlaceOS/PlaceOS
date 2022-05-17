module Update
  enum Type
    Minor
    Month
    Major
  end

  def self.update(
    version : String | PlaceCalver,
    type : Type = Type::Minor,
    preview : Bool = false,
    versions : Array(PlaceCalver)? = nil
  )
    unless version.is_a?(PlaceCalver)
      version = PlaceCalver.parse?(version) || abort("Malformed version: #{version}")
    end

    args = {preview: preview, versions: versions}

    case type
    in .major? then version.next_major(**args)
    in .month? then version.next_month(**args)
    in .minor? then version.next_minor(**args)
    end
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
  def self.from_tags
    `git fetch --all`
    `git ls-remote --tags`
      .lines
      .compact_map { |ref|
        unless ref.empty?
          tag = ref.split("\trefs/tags/", limit: 2).last
          parse?(tag)
        end
      }.sort!.reverse!
  end

  def self.from_file(file : String = VERSION_FILE) : PlaceCalver
    version = File.read(VERSION_FILE) rescue abort("Expected a `VERSION` file")
    parse?(version) || abort("Expected well formated version file")
  end

  REGEX        = /(placeos-)?(?<major>\d+)\.(?<year>\d{2})(?<month>\d{2})\.(?<minor>\d+)(-rc(?<release_candidate>\d+))?/
  VERSION_FILE = "VERSION"

  getter branch : String do
    if preview?
      "#{major}.#{justified_year}#{justified_month}.#{minor}-preview"
    else
      "#{major}.#{justified_year}#{justified_month}"
    end
  end

  getter? preview : Bool do
    !release_candidate.nil?
  end

  # Calver is lexicographically sortable...
  # EXCEPT if the other is a preview of current version.
  def <=>(other : PlaceCalver)
    if other.major == major && other.year == year && other.month == month && other.minor == minor
      if !preview? && other.preview?
        1
      elsif preview? && !other.preview?
        -1
      else
        to_s <=> other.to_s
      end
    else
      to_s <=> other.to_s
    end
  end

  # Return the latest _non_ preview
  def self.latest(versions = nil)
    versions = PlaceCalver.from_tags if versions.nil?

    versions.find(&.preview?.!).as(PlaceCalver)
  end

  def next_minor(preview : Bool = false, versions = nil)
    versions = PlaceCalver.from_tags if versions.nil?

    current_year, current_month, _current_day = Time.utc.date

    latest_version = versions.find { |v| v.major == major && v.month == current_month }

    if preview
      next_release_candidate = latest_version.try(&.release_candidate.try { |v| v + 1 }) || 0
    end

    next_minor_value = latest_version.try { |v| v.preview? ? v.minor : v.minor + 1 } || 0

    PlaceCalver.new(major, current_year, current_month, next_minor_value, next_release_candidate)
  end

  def next_major(preview : Bool = false, versions = nil)
    versions = PlaceCalver.from_tags if versions.nil?

    current_year, current_month, _current_day = Time.utc.date

    # If there are no major releases for current preview, create a major of current.
    if versions.none? { |v| v.major == major && !v.preview? } && preview?
      next_major_value = major
    else
      next_major_value = major + 1
    end

    next_version = versions.find { |v| v.major == next_major_value }

    if preview
      next_release_candidate = next_version.try(&.release_candidate.try { |v| v + 1 }) || 0
      next_minor_value = next_version.try(&.minor) || 0
    else
      next_minor_value = next_version.try { |v| v.preview? ? v.minor : v.minor + 1 } || 0
    end

    PlaceCalver.new(next_major_value, current_year, current_month, next_minor_value, next_release_candidate)
  end

  # Produce the next preview for the next month
  def next_month(preview : Bool = false, versions = nil)
    versions = PlaceCalver.from_tags if versions.nil?

    next_year_value, next_month_value, _day = (Time.utc + 1.month).date

    next_version = versions.find { |v| v.year == next_year_value && v.month == next_month_value }

    if preview
      next_release_candidate = next_version.try(&.release_candidate.try { |v| v + 1 }) || 0
      next_minor_value = next_version.try(&.minor) || 0
    else
      next_minor_value = next_version.try { |v| v.preview? ? v.minor : v.minor + 1 } || 0
    end

    PlaceCalver.new(major, next_year_value, next_month_value, next_minor_value, next_release_candidate)
  end

  def self.parse?(version)
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
