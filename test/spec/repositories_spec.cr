require "./helper"

describe "Repositories" do
  it "should simulate the repository flows" do
    with_client do |client|
      # # # Drivers

      # # Add Driver repository
      # client.repositories.create(name: "Place", uri: "uri", repo_type: "FIX THIS", username: "GabFitzgerald", password: "iheartadamlambert", key: "sshhhshsh", folder_name: "your-fave-folder", description: "description description", commit_hash: "b930e07d9fd2b682de48e881d5405176888a1de7")

      # # List commits for the repository
      # client.commits id: "repo-G03MS-DUJCo", driver: "drivers/place/private_helper.cr"

      # # # Frontends

      # # Add Frontend repository
      # client.create(name: "Place", uri: "uri", repo_type: "FIX THIS", username: "GabFitzgerald", password: "iheartadamlambert", key: "sshhhshsh", folder_name: "your-fave-folder", description: "description description", commit_hash: "b930e07d9fd2b682de48e881d5405176888a1de7")

      # # List commits for the repository
      # client.commits id: "repo-G03MS-DUJCo", driver: "drivers/place/private_helper.cr"
    end
  end
end
