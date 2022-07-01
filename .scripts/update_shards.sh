#! /usr/bin/env bash
# Author: Caspian Baska
# Description:
#   Updates placeos services shards.
#   Please run from the _root_ of the release repository,
#   the script is NOT relocatable.
# Requirements: github cli, git
# Usage: ./.scripts/update_shards.sh

set -euo pipefail

working_directory="$(mktemp -d)"
date_string="$(date +"%Y-%m-%d-%H%M")"
branch="chore/shards-${date_string}"


for service_repository_path in services/*/; do
    (
        repository_name="$(basename "${service_repository_path}")"
        temporary_repository_path="${working_directory}/${repository_name}"

        # Copy the repository
        cp -R "${service_repository_path}" "${temporary_repository_path}" || exit

        git_dir="${temporary_repository_path}/.git"

        # Check if there's an _actual_ git dir in the repository
        if [[ -f "$git_dir" ]]; then
            # Remove the submodule git dir reference file
            rm "${git_dir}"
            # Copy the actual git dir
            cp -R ".git/modules/services/${repository_name}"  "${git_dir}"
        fi

        # Using submodules is a pain.
        # This config line must be removed.
        sed -i .bak -E '/[[:space:]]+worktree = /d' "${git_dir}/config" || true

        cd "${temporary_repository_path}" || exit

        # Only update crystal services
        if [[ -f shard.yml ]]; then
            git stash
            git checkout master 2> /dev/null || git checkout main
            git pull
            git checkout -b "${branch}"

            echo "Updating shards for ${repository_name}"

            if ! (shards update 2> /dev/null); then
                echo "Failed to update shards for ${repository_name}"
                exit
            fi

            git commit -am "chore: update shards ${date_string}"
            git push -u origin "${branch}"
            gh pr create \
                --fill \
                --label 'type: maintenance'
        fi
    ) &
done

wait

echo "Done!"
