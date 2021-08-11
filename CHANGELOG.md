# Changelog
All notable changes to PlaceOS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [PlaceOS Platform Versioning](./README.md#platform-versioning).


## [Unreleased]

## [1.2108.1]

### Fixed
- Recover from malformed data in `source`.
- Resolve cross-branch driver compilation bug in `core`.

## [1.2108.0]

### Added
- Support for `X-API-Key` header authorization.

### Fixed
- Missing default health check on `auth` service.
- Attempted use of git credentials in encrypted form when cloning repositories.
