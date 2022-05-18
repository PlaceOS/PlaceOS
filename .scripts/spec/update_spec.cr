require "spec"
require "timecop"
require "../src/update"

# Freeze the time to 2022-05-17
Timecop.freeze(Time.utc(2022, 5, 17))

# Mock of the versions returned for our git remote
VERSION_MOCKS = [
  PlaceCalver.new(2, 2022, 5, 0, release_candidate: 0),
  PlaceCalver.new(1, 2022, 6, 0, release_candidate: 1),
  PlaceCalver.new(1, 2022, 6, 0, release_candidate: 0),
  PlaceCalver.new(1, 2022, 5, 2),
  PlaceCalver.new(1, 2022, 5, 2, release_candidate: 1),
  PlaceCalver.new(1, 2022, 5, 2, release_candidate: 0),
  PlaceCalver.new(1, 2022, 5, 1),
  PlaceCalver.new(1, 2022, 5, 1, release_candidate: 2),
  PlaceCalver.new(1, 2022, 5, 1, release_candidate: 1),
  PlaceCalver.new(1, 2022, 5, 1, release_candidate: 0),
  PlaceCalver.new(1, 2022, 5, 0),
  PlaceCalver.new(1, 2022, 5, 0, release_candidate: 0),
  PlaceCalver.new(1, 2022, 4, 1),
]

describe "./update" do
  describe "--minor" do
    it "creates the next minor version" do
      current_version = "1.2205.2"
      expected_version = "1.2205.3"
      Update.update(current_version, type: :minor, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)

      current_version = "nightly"
      Update.update(current_version, type: :minor, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)
    end

    it "starts from zero for a new month" do
      # Freeze the time to 2022-06-17
      Timecop.travel(Time.utc(2022, 6, 17)) do
        mocks = VERSION_MOCKS.reject { |v| v.month == 6 }
        current_version = "1.2205.2"
        expected_version = "1.2206.0"
        Update.update(current_version, type: :minor, preview: false, versions: mocks).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :minor, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end
    end

    context "--preview" do
      it "starts from zero for a new month" do
        # Freeze the time to 2022-06-17
        Timecop.travel(Time.utc(2022, 6, 17)) do
          mocks = VERSION_MOCKS.reject { |v| v.month == 6 }
          current_version = "1.2205.2"
          expected_version = "1.2206.0-rc0"
          Update.update(current_version, type: :minor, preview: true, versions: mocks).to_s.should eq(expected_version)
          current_version = "nightly"
          Update.update(current_version, type: :minor, preview: true, versions: mocks).to_s.should eq(expected_version)
        end
      end
      it "creates a preview of the next minor" do
        current_version = "1.2205.2"
        expected_version = "1.2205.3-rc0"
        Update.update(current_version, type: :minor, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :minor, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end

      it "creates the next preview version" do
        current_version = "1.2205.2-rc1"
        expected_version = "1.2205.3-rc0"
        Update.update(current_version, type: :minor, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :minor, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end

      it "bumps an existing preview version" do
        current_version = "1.2205.3-rc0"

        # Add the current version as a tag
        mocks = (VERSION_MOCKS.dup << PlaceCalver.parse?(current_version).as(PlaceCalver)).sort!.reverse!
        expected_version = "1.2205.3-rc1"
        Update.update(current_version, type: :minor, preview: true, versions: mocks).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :minor, preview: true, versions: mocks).to_s.should eq(expected_version)
      end
    end
  end

  describe "--month" do
    it "creates the next monthly version" do
      current_version = "1.2206.0-rc1"
      expected_version = "1.2206.0"
      Update.update(current_version, type: :month, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)

      current_version = "nightly"
      Update.update(current_version, type: :month, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)
    end

    context "--preview" do
      it "creates a preview of the next month" do
        current_version = "1.2205.2"
        expected_version = "1.2206.0-rc2"
        Update.update(current_version, type: :month, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :month, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end

      it "creates the next preview version" do
        current_version = "1.2205.2-rc1"
        expected_version = "1.2206.0-rc2"
        Update.update(current_version, type: :month, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :month, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end

      it "bumps an existing preview version" do
        current_version = "1.2206.0-rc1"
        expected_version = "1.2206.0-rc2"
        Update.update(current_version, type: :month, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :month, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end
    end
  end

  describe "--major" do
    it "creates the next major version" do
      current_version = "2.2205.0-rc0"
      expected_version = "2.2205.0"
      Update.update(current_version, type: :major, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)

      current_version = "nightly"
      Update.update(current_version, type: :major, preview: false, versions: VERSION_MOCKS).to_s.should eq(expected_version)
    end

    context "--preview" do
      it "creates a preview of the next major" do
        current_version = "1.2205.2"
        expected_version = "2.2205.0-rc1"
        Update.update(current_version, type: :major, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :major, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end

      it "creates the next preview version" do
        current_version = "1.2205.2-rc0"
        expected_version = "2.2205.0-rc1"
        Update.update(current_version, type: :major, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :major, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end

      it "bumps an existing preview version" do
        current_version = "2.2205.0-rc0"
        expected_version = "2.2205.0-rc1"
        Update.update(current_version, type: :major, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)

        current_version = "nightly"
        Update.update(current_version, type: :major, preview: true, versions: VERSION_MOCKS).to_s.should eq(expected_version)
      end
    end
  end
end
