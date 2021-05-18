require "./helper"

describe "Drivers" do
  it "should simulate the driver creation flow" do
    with_client do |client|
      # # List metadata for a driver
      # client.drivers.fetch "driver-oOj2lGgsz"

      # # Create a driver
      # driver = client.create(name: "Place", role: Role::Device, commit: "string", file_name: "string", module_name: "string", repository_id: "string")

      # # Check driver is compiled
      # compiled = client.compiled "driver-oOj2lGgsz"

      # # Recompile a driver
      # recompile = client.recompile "driver-oOj2lGgsz"

      # # Check driver is compiled
      # compiled2 = client.compiled "driver-oOj2lGgsz"
    end
  end
end
