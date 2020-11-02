require "./helper"

describe "Settings" do
  it "should simulate the settings flow" do
    with_client do |client|
      # # # Could be merged with Module tests (answer the question “what are Settings trying to achieve?”)
      # # # Manage settings for a x where x = { Module, Driver, Zone, Control System }

      # # Create an entity
      # client.settings.create

      # # Create settings at different encryption levels
      # client.settings.create

      # # Update settings at different encryption levels
      # client.settings.update
    end
  end
end
