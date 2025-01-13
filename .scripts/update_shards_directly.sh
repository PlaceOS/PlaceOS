#!/usr/bin/env bash
# Author: Stephen von Takach
# Description:
#   1. Reads submodule URLs from .gitmodules for each folder under services/.
#   2. Shallow clones the submodule into /tmp.
#   3. Skips submodules whose folder names end in auth, build, edge, or nginx.
#   4. Runs `shards update` with specified flags, commits & pushes changes to the default branch.
#   5. Removes temp folder.
#
# Requirements: git, shards

set -euo pipefail

# Make sure we run from the repo root (where .gitmodules should live).
if [[ ! -f .gitmodules ]]; then
  echo "No .gitmodules file found. Please run from the repository root."
  exit 1
fi

# Gather submodules under services/
mapfile -t submodule_paths < <(git config -f .gitmodules --get-regexp 'submodule\..*\.path' \
  | awk '{print $2}' \
  | grep '^services/')

if [[ ${#submodule_paths[@]} -eq 0 ]]; then
  echo "No submodules found under services/. Exiting."
  exit 0
fi

for submodule_path in "${submodule_paths[@]}"; do
  repository_name="$(basename "$submodule_path")"

  # Skip if name ends with "auth", "build", "edge", or "nginx"
  if [[ "$repository_name" =~ (auth|build|edge|nginx)$ ]]; then
    echo "Skipping submodule: $submodule_path"
    continue
  fi

  # Get the submodule's remote URL
  submodule_config="submodule.$submodule_path.url"
  repo_url="$(git config -f .gitmodules --get "$submodule_config")"

  if [[ -z "$repo_url" ]]; then
    echo "No URL found for $submodule_path — skipping."
    continue
  fi

  echo "--------------------------------------------------"
  echo "Processing submodule: $submodule_path ($repo_url)"
  echo "--------------------------------------------------"

  # Create temp dir for shallow clone
  tmp_dir="$(mktemp -d)"

  # Shallow clone of the default branch
  git clone --depth=1 --single-branch "$repo_url" "$tmp_dir"

  pushd "$tmp_dir" >/dev/null

  # Only proceed if shard.yml is present
  if [[ -f shard.yml ]]; then
    echo "Running shards update in $tmp_dir"
    if ! shards update --ignore-crystal-version --skip-postinstall --skip-executables; then
      echo "Failed to update shards for $submodule_path"
      popd >/dev/null
      rm -rf "$tmp_dir"
      continue
    fi

    # If there are changes, commit and push them
    if [[ -n "$(git status --porcelain)" ]]; then
      git commit -am "chore: update shards"
      git push
    else
      echo "No changes to commit in $submodule_path"
    fi
  else
    echo "No shard.yml found in $submodule_path; skipping shards update."
  fi

  popd >/dev/null

  # Cleanup
  rm -rf "$tmp_dir"

done

echo "All done!"
