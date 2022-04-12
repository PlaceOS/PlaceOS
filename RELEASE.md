# PlaceOS Release Process

## Updating the `VERSION`

Run...

```shell-session
crystal run ./scripts/update.cr
```

 When called with no arguments, this script will...
 - update increment of previous version in `VERSION`.
 - create a `VERSION` with the latest the calver, if no is `VERSION` found.

Passing `--preview` will create the latest release candidate.
Similar to when called with no arguments, just adds an incremental `rc` suffix to whatever the new version _will_ be.

## Updating the `CHANGELOG.md`

Run...

```shell-session
crystal run ./scripts/update_changelog.cr -- <new_version> <previous_reference>
```
