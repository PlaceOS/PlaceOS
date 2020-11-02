require "./helper"

describe "Module" do
  it "should simulate the module creation flow and execute a command on a module", focus: true do
    with_client do |client|
      # # # Module Creation Flow
      # # add a repository
      # repo = client.repositories.create(name: "Place", uri: "uri", repo_type: "FIX THIS", username: "GabFitzgerald", password: "iheartadamlambert", key: "sshhhshsh", folder_name: "your-fave-folder", description: "description description", commit_hash: "b930e07d9fd2b682de48e881d5405176888a1de7")

      # # list details about driver in a repository
      # repo_detail = client.repositories.details id: repo.id, driver: "drivers/place/spec_helper.cr", commit: "b930e07d9fd2b682de48e881d5405176888a1de7"

      # # create a driver
      # driver = client.drivers.create(name: "Place", role: Role::Device, commit: "string", file_name: "string", module_name: "string", repository_id: "string")
      # pp! driver

      # # create a module
      # mod = client.modules.create driver_id: driver.id

      # toggle the module online

      # # # Execute a command on a module
      # mod_stopped = client.modules.stop mod.id
      # mod_started = client.modules.start mod.id

      # # use an existing module

      # # perform exec request
    end
  end
end
