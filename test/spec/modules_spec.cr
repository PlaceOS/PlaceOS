require "./helper"

describe "Module" do
  it "should print" do
    pp "Test starts"
  end

  it "should simulate the module creation flow and execute a command on a module" do
    # # Module Creation Flow
    # api = PlaceOS::Client::APIWrapper.new
    # client = PlaceOS::Client::APIWrapper::Modules.new api

    # add a repository
    with_client { |client|
      (client.APIWrapper.Modules.new PLACEOS_URI).create driver_id: "xyz-123"
    }

    # list details about driver in a repository

    # create a driver
    client.create driver_id: "xyz-123"

    # create a module

    # toggle the module online

    # # Execute a command on a module

    # use an existing module
    # perform exec request

  end
end
