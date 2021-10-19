# Changelog

All notable changes to PlaceOS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [PlaceOS Platform Versioning](./README.md#platform-versioning).

## 1.2110.5

### Added

- Reindexes of Elasticsearch now return whether the action failed or succeeded.

### Changed

- Search indexing's resiliency to failover has been improved.
- The dispatch service mounted on `/api/dispatch/v1` instead of `/api/server`

### Fixed

- Resolve an issue with debugging drivers that have been reloaded.
- Resolve a corruption issue with the WebSocket API.
- Invalid UTF-8 responses from drivers are scrubbed.


## 1.2110.4

### Changed

- Initial load of interfaces is now non-blocking. This removes an unneccessary failover-dependency between the interface loader and other services.

### Added

- `frontend-loader` exposes `/api/frontend-loader/v1/startup` for `startupProbe` in Kubernetes

### Fixed

- Elasticsearch document indexing is more resilient to connection failures.


## 1.2110.3

### Fixed

- Drivers with malformed settings were not loading
- Using websockets, in Javascript, with `X-API-KEY` authentication


## 1.2110.0

### Added
- Granular OAuth Scopes in `rest-api`
- Support for nested hashes in `source` influx publisher
- JSON logging, configurable via `PLACE_LOG_FORMAT=json` in container environment

### Fixed
- Handle proxied PUBLISH events in `edge`
- Resolved issues with Elasticsearch indexing
- Add validation for booking times in `staff-api`
- Look up events with system mailbox in `staff-api`
- Ability to mark visitor as unexpected in `staff-api`
- Allow tenant conference_type to be configurable in `staff-api`


## 1.2109.1

### Changed
- Use full commit hashes for repository pinning.

### Fixed
- Update default healthcheck on `frontend-loader` service.
- Support commit listing on repositories using non-default branches.
- Prevent repositories reverting to master branch.
- Ensure reconnection to RethinkDB following write error.
- Build `staff-api` service against crystal 1.1.1.
- Resolve replication issue for search indicies.

### Security
- Add permissions check on event creation in `staff-api`.
- Support refresh token revocation.


## 1.2109.0

### Added
- Support updates to guest email addresses.
- Provide user context to driver method execution.
- Support guest search against multiple tokens.
- Include [`build`](https://github.com/PlaceOS/build) in release packaging.
  _(note: early preview only)_

### Changed
- Renamed `frontends` → `frontend-loader`.
- Renamed environment variables for UDP logging.
- Build services against crystal 1.1.1.
- Use crystal 1.1.1 for driver compilation.

### Fixed
- Improve application-level recovery of `staff-api` following disruption to database connectivity.
- Normalise handling of user email case sensitivity.
- Provide full commit list for current repository branches.
- Prevent cyclic behaviour when updating interface repositories.
- Support updates to repository credentials.
- Incorrect default healthcheck on `triggers` service.


## 1.2108.4

### Fixed
- SSO email hashing


## 1.2108.3

### Fixed
- Fixes an issue showing SSO users PlaceOS/rest-api#172
- Adds missing DB indexes to Auth container

### Added
- Allow 3rd party apps to use PlaceOS as an SSO provider


## 1.2108.2

### Added
- Inclusion of [`staff-api`](https://github.com/PlaceOS/staff-api) in release packaging.
- Metadata endpoints on `rest-api` entities.


## 1.2108.1

### Fixed
- Recover from malformed data in `source`.
- Resolve cross-branch driver compilation bug in `core`.


## 1.2108.0

### Added
- Support for `X-API-Key` header authorization.

### Fixed
- Missing default health check on `auth` service.
- Attempted use of git credentials in encrypted form when cloning repositories.
