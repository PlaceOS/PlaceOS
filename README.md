<p align="center">
  <img src="https://github.com/placeos.png?size=200" alt="PlaceOS" />
</p>

This repository defines PlaceOS platform releases.
It provides new release notification and the canonical reference for release history.


## Platform Versioning

A PlaceOS deployment is a set of interdependant services and associated tools.
Each of these have their own version number, test and release process.
Platform versions overlay this to provide a set of compatible, deployable components.

A platform version looks like:

    placeos-1.2104.1
            |  |   |
            |  |   revision
            |  |
            |  minor release (year, month)
            |
            major release

### Major
Releases that share a major version are consistent for core features.

Moving to a new major version _may_ include breaking changes and the removal of deprecated functionality.
This includes both machine facing (API’s, infrastructure) and human facing (core platform concepts, UX).

### Minor
Minor versions introduce new features that are forwards compatible.

Numbering reflects the original release packaging date (`YYMM`). This will perpetually increase, including across major versions.

When moving to a new minor version deprecation warnings _may_ appear in API responses and logging, but functionality will remain.

### Revision
Revisions increment within each minor version, resetting to `0`.
These represent change to address a bug, feature limitation or security vulnerability in the originally packaged minor release.

An increment to a release number can represent a change to one or more underlying services.

---

When operating a deployment, all components should use a consistent version.


## Channels

Release channels exist as a set of dynamic tags on service images.
They provide a way to pair a PlaceOS instance with a release maturity suited to the deployment environment.

### `nightly`
Collects the state of all services based on their primary branch and builds against upstream dependencies every 24 hours.
Releases on this channel are automated and should not be considered stable.
These are ephemeral and _do not_ have a corresponding platform version.

Intended primarily for development environments.

### `preview`
References the latest release candidate.
This may contain issues that do not present within test environments.

Releases on this channel are suitable for staging and canary deployments.

### `latest`
Main release channel.
This tails `preview` by one minor release cycle.

Recommended for production environments.


## Release Artefacts

### Docker

Images for all services are available from [Docker Hub](https://hub.docker.com/u/placeos).

### Source Code

References to all source repositories exist as submodules.
If you have already cloned this repo, you can access these via `git submodule update --init`.
These reference commits used to construct the built artefacts at each release.

