<a href="https://placeos.com">
    <img align="right" src="https://github.com/placeos.png?size=200" alt="PlaceOS" />
</a>

# PlaceOS

[![Build](https://github.com/PlaceOS/PlaceOS/actions/workflows/build.yml/badge.svg)](https://github.com/PlaceOS/PlaceOS/actions/workflows/build.yml)

This repository defines [PlaceOS](https://place.technology/) platform releases.
It provides new release notification and the canonical reference for the platform's release history.


## Platform Versioning

A PlaceOS deployment is a set of interdependent services and associated tools.
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

### `latest`
Main release channel.

Recommended for production environments.

### `preview`
The latest preview build.

**NOT** recommended for production environments.

## Release Artefacts

### Docker

Images for all services are available from [Docker Hub](https://hub.docker.com/u/placeos).

### Source Code

References to all source repositories exist as submodules.
If you have already cloned this repo, you can access these via `git submodule update --init`.
These reference commits used to construct the built artefacts at each release.

## CI Status

### Libraries

[![Models](https://img.shields.io/github/workflow/status/PlaceOS/models/CI?label=models&logo=github)](https://github.com/PlaceOS/models/actions/workflows/ci.yml)

[![Resource](https://img.shields.io/github/workflow/status/place-labs/resource/CI?label=resource&logo=github)](https://github.com/PlaceOS/models/actions/workflows/ci.yml)

[![Driver](https://img.shields.io/github/workflow/status/PlaceOS/driver/CI?label=driver&logo=github)](https://github.com/PlaceOS/models/actions/workflows/ci.yml)

### Services

[![Build](https://img.shields.io/github/workflow/status/PlaceOS/build/CI?label=build&logo=github)](https://github.com/PlaceOS/build/actions/workflows/ci.yml)

[![Core](https://img.shields.io/github/workflow/status/PlaceOS/core/CI?label=core&logo=github)](https://github.com/PlaceOS/core/actions/workflows/ci.yml)

[![Dispatch](https://img.shields.io/github/workflow/status/PlaceOS/dispatch/CI?label=dispatch&logo=github)](https://github.com/PlaceOS/dispatch/actions/workflows/ci.yml)

[![Frontend Loader](https://img.shields.io/github/workflow/status/PlaceOS/frontend-loader/CI?label=frontend-loader&logo=github)](https://github.com/PlaceOS/frontend-loader/actions/workflows/ci.yml)

[![Rest API](https://img.shields.io/github/workflow/status/PlaceOS/rest-api/CI?label=rest-api&logo=github)](https://github.com/PlaceOS/rest-api/actions/workflows/ci.yml)

[![Search Ingest](https://img.shields.io/github/workflow/status/PlaceOS/search-ingest/CI?label=search-ingest&logo=github)](https://github.com/PlaceOS/search-ingest/actions/workflows/ci.yml)

[![Source](https://img.shields.io/github/workflow/status/PlaceOS/source/CI?label=source&logo=github)](https://github.com/PlaceOS/source/actions/workflows/ci.yml)

[![Staff API](https://img.shields.io/github/workflow/status/PlaceOS/staff-api/CI?label=staff-api&logo=github)](https://github.com/PlaceOS/staff-api/actions/workflows/ci.yml)

[![Triggers](https://img.shields.io/github/workflow/status/PlaceOS/triggers/CI?label=triggers&logo=github)](https://github.com/PlaceOS/triggers/actions/workflows/ci.yml)
