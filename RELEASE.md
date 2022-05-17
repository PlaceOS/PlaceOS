# PlaceOS Release Process

The majority of this is handled in github actions that are available to the @placeos/release team.

## Updating the `VERSION`

Run...

```shell-session
crystal run .scripts/update.cr
```

 When called with no arguments, this script will update increment of the previous version in `VERSION` for the current month.

- `--major`

This will produce the next major version.

- `--month`

This will produce the next monthly version.

- `--preview`

Passing `--preview` will create the latest release candidate.
If there's a preview for whatever type of bump you've request already in `VERSION`, it will bump that.
Otherwise, a preview will be created (either new monthly, new major, new minor)
Similar to when called with no arguments, just adds an incremental `rc` suffix to whatever the new version _will_ be.

## Updating the `CHANGELOG.md`

Run...

```shell-session
crystal run .scripts/update_changelog.cr -- <new_version> <previous_reference>
```
