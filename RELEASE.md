# PlaceOS Release Process

The majority of this is handled in github actions that are available to the @placeos/release team.

## Updating the `VERSION`

Run...

```shell-session
crystal run .scripts/update.cr
```

 When called with no arguments, this script will update increment of the previous version in `VERSION` for the current month.

- `--minor`

This will produce the next minor version. This is the default, and implied unless other flags are passed.

- `--major`

This will produce the next major version.

- `--month`

This will produce the monthly version for the upcoming month. Best used with `--preview`.

- `--preview`

Passing `--preview` will create the latest release candidate.
If there's a preview for whatever type of bump you've request already in `VERSION`, it will bump that.
Otherwise, a preview will be created (either new monthly, new major, new minor)
Similar to when called with no arguments, just adds an incremental `rc` suffix to whatever the new version _will_ be.

### Usage

```shell-session
Usage: crystal run .scripts/update.cr -- [arguments]

`--preview` can be combined with other flags.
Defaults to bumping to the next minor version.

    --preview                        Create a release candidate
    --major                          Create next major release
    --month                          Create next month release
    --minor                          Create next minor release
    -h, --help                       Show this help
```

## Updating the `CHANGELOG.md`

### Usage

```shell-session
Usage: crystal run .scripts/update_changelog.cr -- [arguments]

`--next-version` is required.

    --next-version VERSION           Version to create CHANGELOG for
    --previous-reference REF         Ref/version to start CHANGELOG entries from
    -h, --help                       Show this help
```
