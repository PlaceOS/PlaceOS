# PlaceOS

This repository defines PlaceOS platform releases.
It provides new release notification and the canonical reference for release history.


## Platform Versioning

A PlaceOS deployment is a set of interdependant services and associated tools.
Each of these have their own version number, test and release process.
Platform versions overlay this to provide a set of compatible, deployable components.

A platform version looks like:

    placeos-1.2007.1
            |  |   |
            |  |   revision
            |  |
            |  minor release (year, month)
            |
            major release

When operating a deployment, all components should use a consistent version.


## Release Artefacts

### Docker

Images for all services are available from [Docker Hub](https://hub.docker.com/u/placeos).
References to these are available in [`docker-images.yaml`](./docker-images.yaml).
This includes YAML anchors to allow this to merge with a templated configuration.

#### Tags

##### `placeos-<major>.<minor>.<revision>`
Each release has a full release tag.
These are _immutable_—once applied, this will always refer to a specific platform version.
Recommended for environments pinning releases.

##### `placeos-<major>`
Tracks the current stable release.
As new releases are available, this will reference the latest available build.
These tags are a good option for environment using automated deployment tooling.

##### `placeos-<major>-lts`
Tracks the current stable LTS release.
LTS releases take place every 6 months.
These will continue to receive security and patch updates for 18 months from the original release date.
Best suited for environments using planned / non automated update intervals.

##### `placeos-<major>-latest`
Latest platform release.
This provide new feature preview and canary support for upcoming stable releases.
Suitable for staging and development environments.


## Source

References to all source repositories are also included via submodules.
If you have already cloned this repo, you can access these via `git submodule update --init`.
This references commits used to construct the built artefacts at each release.

