#! /usr/bin/env bash
# Author: Caspian Baska
# Description: Updates placeos services shards, run from the root of the release repository
# Requirements: github cli, git
# Usage: ./.scripts/update_shards.sh

working_directory="$(mktemp -d)"
date_string="$(date +"%Y-%m-%d-%H%M")"
branch="chore/shards-${date_string}"

for service_repository_path in services/*/; do
    repository_name="$(basename "${service_repository_path}")"
    temporary_repository_path="${working_directory}/${repository_name}"

    cp -r "${service_repository_path}" "${temporary_repository_path}"

    (
        cd "${temporary_repository_path}" || return
        git stash
        git checkout master || git checkout main
        git pull
        git checkout -b "${branch}"
        shards update
        git commit -am "chore: update shards ${date_string}"
        git push -u origin "${branch}"
        gh pr create --fill
    )
done
