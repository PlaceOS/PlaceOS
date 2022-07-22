# Changelog

All notable changes to PlaceOS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [PlaceOS Platform Versioning](https://github.com/PlaceOS/PlaceOS/blob/release/README.md#platform-versioning).

## 1.2207.1

### Fixed

- Interfaces/Backoffice [**admin**]: Fix required display for conference type on staff tenant form
- Interfaces/Backoffice [**admin**]: Hide delegate checkbox for google platform
- Interfaces/Templates [**assets**]: Tweaks to asset select modal
- Interfaces/Templates [**catering**]: Minor fixes
- Interfaces/Templates [**events**]: Fix post form call
- Interfaces/Templates [**events**]: Add fallback for room ids when checking availability
- Interfaces/Templates [**form-fields**]: Add host select form field for selecting delegated users as host for bookings
- Interfaces/Templates [**workplace**]: Add names to space booking form fields
- Interfaces/Templates [**explore**]: Set booking type to desk when making desk booking from map
- Interfaces/Templates: Fix adding and removing items from asset and catering fields
- Interfaces/Templates: Change to inline styling
- Interfaces/Templates [**workplace**]: Remove unused property
- Interfaces/Templates [**explore**]: Minor tweak to desk name display on info tooltip
- Interfaces/Templates: Fix booking and event form get values from disabled fields
- Interfaces/Templates [**workplace**]: Fix desk flow form
- Interfaces/Templates [**workplace**]: Fix selecting user calendars on schedule page ([#171](https://github.com/PlaceOS/templates/pull/171))
- Interfaces/Templates: Remove empty fields when making booking/event requests
- Libraries/Driver [**interface/lighting**]: Fix `join_with` helper
- Libraries/LogBackend: Remove dispatch specification on log backend
- Services/Build [**client**]: Ensure correct forwarding of environment variables
- Services/Build: Typo broke specs
- Services/Build [**Client#compiled?**]: Add missing parameters and authorization
- Services/Build [**repository_store**]: Relative paths for commit listing
- Services/Core [**control_system_modules**]: Ensure correct totals when refreshing ([#222](https://github.com/PlaceOS/core/pull/222))
- Services/Edge [**control_system_modules**]: Ensure correct totals when refreshing ([#222](https://github.com/PlaceOS/edge/pull/222))
- Services/Nginx [**nginx.conf**]: Add trailing / redirect to app requests ([#20](https://github.com/PlaceOS/nginx/pull/20))
- Services/SearchIngest: Update placeos-log-backend
- Services/StaffAPI [**utilities/helpers**]: Ensure emails are downcased ([#202](https://github.com/PlaceOS/staff-api/pull/202))

### Added

- Interfaces/Templates [**desk**]: Wip new desk flow
- Interfaces/Templates [**workplace**]: Wip, new desk flow selector
- Interfaces/Templates [**catering**]: Add components for new order item select modal
- Interfaces/Templates [**explore**]: Add legend to map view
- Interfaces/Templates [**workplace**]: Desk filters
- Interfaces/Templates [**workplace**]: Favourite desk and filtering
- Interfaces/Templates [**catering**]: Add more logic to new catering order modal components
- Interfaces/Templates [**workplace**]: Desk details
- Interfaces/Templates [**catering**]: Add filters for catering order menu
- Interfaces/Templates [**spaces**]: Add desktop styles to new space select modal
- Interfaces/Templates [**workplace**]: Desk details map
- Interfaces/Templates [**catering**]: Add desktop styles for catering order modal
- Interfaces/Templates [**worplace**]: Desk map view
- Interfaces/Templates [**workplace**]: Booking confirmation flow
- Interfaces/Templates [**workplace**]: Desk booking success state
- Interfaces/Templates [**workplace**]: Styling tweaks
- Interfaces/Templates [**workplace**]: Add assets booking
- Interfaces/Templates [**assets**]: Add desktop styles for asset select modal
- Interfaces/Templates [**workplace**]: Add work from home settings components
- Interfaces/Templates [**bookings**]: Add component for inviting visitors ([#123](https://github.com/PlaceOS/templates/pull/123))
- Interfaces/Templates [**workplace**]: Add invite visitor flow to workplace
- Interfaces/Templates [**workplace**]: Hookup font size changes in accessibility options
- Interfaces/Templates [**payments**]: Add form field for card inputs
- Interfaces/Templates [**org**]: Add setting to allow setting a default building
- Libraries/Driver: Improve memory usage ([#150](https://github.com/PlaceOS/placeos-driver/pull/150))
- Libraries/Driver: Add termination check helper ([#152](https://github.com/PlaceOS/placeos-driver/pull/152))
- Services/Core [**module_manager**]: Periodically check that processes are alive ([#225](https://github.com/PlaceOS/core/pull/225))
- Services/Edge [**module_manager**]: Periodically check that processes are alive ([#225](https://github.com/PlaceOS/edge/pull/225))

### Changed

- Interfaces/Templates [**components**]: Tweak styling and cleanup image carousel
- Services/Auth [**deps**]: Bump rails-html-sanitizer from 1.4.2 to 1.4.3 ([#73](https://github.com/PlaceOS/auth/pull/73))
- Services/Auth [**deps**]: Bump tzinfo from 1.2.9 to 1.2.10 ([#74](https://github.com/PlaceOS/auth/pull/74))
- Services/Build: Use a compiler built in release ([#48](https://github.com/PlaceOS/build/pull/48))
- Services/Build [**Dockerfile**]: Revert to crystal build
- Services/Build [**client**]: Return an object from compiled endpoint
- Services/Core [**deps**]: Bump alstr/todo-to-issue-action from 4.6.5 to 4.6.7 ([#220](https://github.com/PlaceOS/core/pull/220))
- Services/Edge [**deps**]: Bump alstr/todo-to-issue-action from 4.6.5 to 4.6.7 ([#220](https://github.com/PlaceOS/edge/pull/220))

## 1.2207.0

### Added

- Clients/Crystal [**users**]: Add `include_metadata` flag
- Interfaces/Templates [**outlook addin**]: Add 'new booking' button in booking-confirmed component to return to form
- Interfaces/Templates [**explore**]: Add handling for signs of life for desk data ([#157](https://github.com/PlaceOS/templates/pull/157))
- Libraries/Driver: Provide a method for dumping memory usage stats
- Libraries/LogBackend: Use only one signal and toggle log levels
- Services/RestAPI [**webhook**]: Add additional routes ([#293](https://github.com/PlaceOS/rest-api/pull/293))

### Fixed

- Interfaces/Backoffice [**ui**]: Allow clear of input on selecting items from search component ([#274](https://github.com/PlaceOS/backoffice/pull/274))
- Interfaces/Templates [**outlook addin**]: Disable submit button in room-confirm component after first click, as it was making multiple bookings for the same room
- Interfaces/Templates [**spaces**]: Change control and booking panel uis to request rooms on demand
- Interfaces/Templates [**workplace**]: Minor fixes to meeting flow
- Interfaces/Templates: Add error handling to querying bookings and events
- Interfaces/Templates [**components**]: Add empty state to interactive map component ([#162](https://github.com/PlaceOS/templates/pull/162))
- Interfaces/Templates [**form-fields**]: Add favourite toggling to space list field items
- Interfaces/Templates [**outlook addin**]: Fix type error in form fields and delete booking_type which was unnecessary
- Libraries/Driver [**driver_manager**]: Apply system config updates
- Libraries/Driver: Re-establish the signal registration once executed
- Services/Core [**control_system_modules**]: Update system references in modules ([#215](https://github.com/PlaceOS/core/pull/215))
- Services/RestAPI [**websocket**]: Resolve a memory leak in control API ([#291](https://github.com/PlaceOS/rest-api/pull/291))
- Services/StaffAPI [**calendar**]: Downcase candidate keys ([#200](https://github.com/PlaceOS/staff-api/pull/200))

### Changed

- Interfaces/Templates: Add notfound component and redirect wildcard url paths to this component
- Libraries/LogBackend: `opentelemetry-api` -> `opentelemetry-sdk`

## 1.2206.3

### Fixed

- Libraries/LogBackend [**opentelemetry-backend**]: Log with a sync dispatcher
- Services/Init [**entities**]: Upsert appliation on name and redirect_uri ([#66](https://github.com/PlaceOS/init/pull/66))
- Services/RestAPI [**metadata**]: Users can create their own metadata ([#287](https://github.com/PlaceOS/rest-api/pull/287))
- Services/StaffAPI: Use correct routes for calendar view with delegated access ([#198](https://github.com/PlaceOS/staff-api/pull/198))

### Added

- Libraries/Models [**user**]: Add admin_metadata json output ([#179](https://github.com/PlaceOS/placeos-models/pull/179))
- Libraries/Models [**metadata**]: Remove queries and optimize uniqueness check ([#180](https://github.com/PlaceOS/placeos-models/pull/180))
- Services/Init [**initialization**]: Use `place_skip_placeholders` to skip base entities ([#67](https://github.com/PlaceOS/init/pull/67))
- Services/RestAPI [**users**]: Add route for deleting resource tokens ([#283](https://github.com/PlaceOS/rest-api/pull/283))
- Services/RestAPI: Add metadata change signaling ([#286](https://github.com/PlaceOS/rest-api/pull/286))
- Services/RestAPI [**users**]: Optionally include user metadata ([#288](https://github.com/PlaceOS/rest-api/pull/288))
- Services/RestAPI [**metadata**]: Remove metadata querying ([#289](https://github.com/PlaceOS/rest-api/pull/289))
- Services/RestAPI [**application**]: Improve query result accuracy ([#290](https://github.com/PlaceOS/rest-api/pull/290))

## 1.2206.2

### Fixed

- Services/Auth [**sessions/destroy**]: Use current_authority helper to obtain logout url

### Added

- Services/StaffAPI [**bookings**]: Checked_in to canclled state transition ([#196](https://github.com/PlaceOS/staff-api/pull/196))

## 1.2206.1

### Fixed

- Interfaces/Templates [**events**]: Only check availability when there are spaces selected
- Services/Build [**driver_store/filesystem**]: More effectively search for drivers

### Added

- Interfaces/Templates [**spaces**]: Start adding logic for space select map components
- Interfaces/Templates [**form-fields**]: Add rich text input component ([#142](https://github.com/PlaceOS/templates/pull/142))
- Services/StaffAPI [**events**]: Add dedicated metadata update methods ([#195](https://github.com/PlaceOS/staff-api/pull/195))

## 1.2206.0

### Added

- Clients/Crystal [**api_wrapper/users**]: Add `include_deleted` param ([#31](https://github.com/PlaceOS/crystal/pull/31))
- Interfaces/Backoffice [**admin**]: Add ability to edit StaffAPI tenant's booking limits
- Libraries/Models: Add `PlaceOS::Model::Executable`
- Services/RestAPI [**users**]: Add route for reviving a deleted user ([#280](https://github.com/PlaceOS/rest-api/pull/280))
- Services/StaffAPI: Add group related routes ([#192](https://github.com/PlaceOS/staff-api/pull/192))
- Services/StaffAPI [**staff**]: Add query for a users manager
- Services/StaffAPI [**staff**]: Add query for a users calendars

### Fixed

- Interfaces/Backoffice [**admin**]: Tweak handling of fields for StaffAPI tenants
- Interfaces/Backoffice [**ui**]: Fix filtering of item search list ([#272](https://github.com/PlaceOS/backoffice/pull/272))
- Libraries/Driver: Don't use back ticks to obtain interface ([#148](https://github.com/PlaceOS/placeos-driver/pull/148))
- Libraries/Driver: Prevent log leaking into defaults output ([#149](https://github.com/PlaceOS/placeos-driver/pull/149))
- Libraries/Models [**executable**]: Short commit ([#177](https://github.com/PlaceOS/placeos-models/pull/177))
- Services/Build [**api**]: Write headers before body ([#42](https://github.com/PlaceOS/build/pull/42))
- Services/Core, Services/Edge [**edge**]: Use correct api-key param and update key validation  ([#181](https://github.com/PlaceOS/core/pull/181))
- Services/StaffAPI [**events**]: Update on graph api where host event switch not made ([#194](https://github.com/PlaceOS/staff-api/pull/194))

## 1.2205.4

### Added

- Clients/Crystal(**`Metadata`**): Add `merge` ([#30](https://github.com/PlaceOS/crystal/pull/30))

### Fixed

- Services/Build(**run_from**): Skip clearing env
- Services/StaffAPI(**bookings**): refactor checkin function ([#191](https://github.com/PlaceOS/staff-api/pull/191))

## 1.2205.3

### Added

- Interfaces/Templates(**spaces**): New space select modal
- Interfaces/Templates(**spaces**): Add space list component
- Interfaces/Templates(**spaces**): Add space details component
- Interfaces/Templates(**spaces**): Add space filter display component
- Interfaces/Templates(**spaces**): Add logic to handle selecting spaces
- Interfaces/Templates(**spaces**): Add space filters component
- Services/FrontendLoader: Add support for dev.azure repositories

### Fixed

- Services/FrontendLoader(**app**): Removal of connect-proxy ext broke compilation
- Services/RestAPI(**repositories**): Inconsistent pull responses ([#277](https://github.com/PlaceOS/rest-api/pull/277))

## 2.2205.4

### Added

- Clients/Crystal(**`Metadata`**): Add `merge` ([#30](https://github.com/PlaceOS/crystal/pull/30))

### Fixed

- Services/Build(**run_from**): Skip clearing env
- Services/StaffAPI(**bookings**): refactor checkin function ([#191](https://github.com/PlaceOS/staff-api/pull/191))

## 1.2205.3

### Added

- Interfaces/Templates(**spaces**): New space select modal
- Interfaces/Templates(**spaces**): Add space list component
- Interfaces/Templates(**spaces**): Add space details component
- Interfaces/Templates(**spaces**): Add space filter display component
- Interfaces/Templates(**spaces**): Add logic to handle selecting spaces
- Interfaces/Templates(**spaces**): Add space filters component
- Services/FrontendLoader: Add support for dev.azure repositories

### Fixed

- Services/FrontendLoader(**app**): Removal of connect-proxy ext broke compilation
- Services/RestAPI(**repositories**): Inconsistent pull responses ([#277](https://github.com/PlaceOS/rest-api/pull/277))

## 1.2205.2

### Added

- Services/Core(**cloning**): Use deployed_commit_hash to indicate current commit ([#179](https://github.com/PlaceOS/core/pull/179))
- Services/RestAPI(**repositories**): New method for repository pull feedback ([#275](https://github.com/PlaceOS/rest-api/pull/275))

### Fixed

- Services/FrontendLoader(**loader**): Provide feedback of the deployed commit hash ([#67](https://github.com/PlaceOS/frontend-loader/pull/67))

## 1.2205.1

### Fixed

- Clients/Typescript(**metadata**): Parse details if a string instead of JSON
- Services/Auth(**coauth controller**): Improve redirect security check
- Services/Auth(**Gemfile.lock**): Handle changes to std lib ([#70](https://github.com/PlaceOS/auth/pull/70))
- Services/Core(**edge**): Resolve `crystal not found` error ([#178](https://github.com/PlaceOS/core/pull/178))
- Services/FrontendLoader(**remote**): Previously listing a single commit ([#65](https://github.com/PlaceOS/frontend-loader/pull/65))
- Services/FrontendLoader(**client**): Revert changes to the commit response
- Services/FrontendLoader(**api/remote**): Cleanup temp files
- Services/RestAPI(**controller/edges**): Include `x_api_token` in edge creation response ([#270](https://github.com/PlaceOS/rest-api/pull/270))

### Added

- Services/Auth: Default to root if continue not provided
- Services/Auth(**generic_oauth**): Add support for fallback values
- Services/Auth(**telemetry**): Add opentelemetry ([#69](https://github.com/PlaceOS/auth/pull/69))
- Services/FrontendLoader: Refactor using git-repository ([#66](https://github.com/PlaceOS/frontend-loader/pull/66))
- Services/RestAPI(**controller/metadata**): Add pagination for `query` route ([#271](https://github.com/PlaceOS/rest-api/pull/271))
- Services/RestAPI(**users**): Resource token to default to first oauth app ([#273](https://github.com/PlaceOS/rest-api/pull/273))
- Services/StaffAPI: Add support for delegated api access ([#188](https://github.com/PlaceOS/staff-api/pull/188))
- Services/StaffAPI(**bookings**): Adjust booking limit checks ([#189](https://github.com/PlaceOS/staff-api/pull/189))
- Services/StaffAPI(**controllers/bookings**): Add include checked out flag ([#190](https://github.com/PlaceOS/staff-api/pull/190))

### Changed

- Services/StaffAPI: Set app name to `staff-api` ([#185](https://github.com/PlaceOS/staff-api/pull/185))

## 1.2205.0

### Fixed

- Update `placeos-compiler` to resolve issues compiling the PlaceOS StaffAPI Driver.
- RestAPI: Default of logged in user when creating an Edge token
- StaffAPI: Handle pull parser when setting history

### Changed

- Add OpenTelemetry instrumentation to `placeos-resource`

### Added

- RestAPI: `PATCH` to patch `Metadata.details`, `PUT` to replace ([#269](https://github.com/PlaceOS/rest-api/pull/269))

## 1.2204.2

### Fixed

- FrontendLoader: Bring logging inline with other services ([#59](https://github.com/PlaceOS/frontend-loader/pull/59))
- Backoffice: Allow selecting branches if release are unavailable
- Backoffice: Simplify metadata ui into one component
- Backoffice: Simplify url validation
- Backoffice: Fix display of settings details and metadata details
- Init: Solves issue with changing primary key ([#63](https://github.com/PlaceOS/init/pull/63))
- Backoffice: Fix tab data post changes of domain items and staff tenants ([#52](https://github.com/PlaceOS/backoffice/pull/52))

### Added

- RestAPI: Return `staff_id` in User responses
- StaffAPI: Change error code on booking limits ([#179](https://github.com/PlaceOS/staff-api/pull/179))
- StaffAPI: Add user_id migrations ([#180](https://github.com/PlaceOS/staff-api/pull/180))
- Add OpenTelemetry instrumentation
- Support `LOG_LEVEL` environment variable to configure runtime logging severity.
- FrontendLoader: Add support for generic repositories ([#60](https://github.com/PlaceOS/frontend-loader/pull/60))
- Models: Expose `staff_id` in users ([#171](https://github.com/PlaceOS/models/pull/171))
- Init: Lock migration tasks
- Init: Lock start tasks

### Changed

- SearchIngest: Utilise `PlaceOS::Resource(T)` ([#56](https://github.com/PlaceOS/search-ingest/pull/56))

## 1.2204.1

### Fixed

- Init: Skip validation of User model in migration ([#61](https://github.com/placeos/init/pull/61))

## 1.2204.0

### Fixed

- Auth: User id should be prefixed ([#66](https://github.com/placeos/auth/pull/66))
- Auth: Apply `nobrainer` duplicate table fix
- Auth: Fix any remaining open redirects ([#61](https://github.com/placeos/auth/pull/61))
- Auth: Mark deleted users as active on SSO ([#60](https://github.com/placeos/auth/pull/60))
- Auth: Check if user deleted ([#58](https://github.com/placeos/auth/pull/58))
- Auth: Prevent local auth on deleted users
- Build: Discovery no longer matches abstract classes ([#39](https://github.com/placeos/build/pull/39))
- Core: Propagate RemoteExceptions ([#175](https://github.com/placeos/core/pull/175))
- Core: Add error codes to coming from RemoteExceptions ([#172](https://github.com/placeos/core/pull/172))
- FrontendLoader: Remove the creation of the base www model ([#55](https://github.com/placeos/frontend-loader/pull/55))
- Init: Ensure user id prefixed by user table name ([#61](https://github.com/placeos/init/pull/61))
- Init: Discard extraneous lines in `create:instance_key` ([#57](https://github.com/placeos/init/pull/57))
- Interface/BookingPanel: Allow for panel UI to scale with screen size
- RestAPI: Extract status from exec response ([#242](https://github.com/placeos/rest-api/pull/242))
- RestAPI: Response using driver status codes ([#240](https://github.com/placeos/rest-api/pull/240))
- StaffAPI: Correct booking logic ([#169](https://github.com/placeos/staff-api/pull/169))
- StaffAPI: Update to support limits by tenant ([#168](https://github.com/placeos/staff-api/pull/168))
- StaffAPI: Avoid unnecessary allocation ([#160](https://github.com/placeos/staff-api/pull/160))

### Changed

- Core: Better module stopped errors ([#163](https://github.com/placeos/core/pull/163))
- FrontendLoader: Download git repo archive instead of clone & pull ([#47](https://github.com/placeos/frontend-loader/pull/47))
- Init: Migrate `Metadata.details` to JSON ([#59](https://github.com/placeos/init/pull/59))
- StaffAPI: Improve booking validation ([#166](https://github.com/placeos/staff-api/pull/166))

### Added

- Auth: Add `flux` scope ([#58](https://github.com/placeos/auth/pull/58))
- Interface/BookingPanel: allow for custom URLs for QR code
- Interface/ContactTracing: Hookup contact tracing to API
- Interface/Workplace: Add logic to handle group desk bookings
- Interface/Workplace: Add setting to hide dashboard availability
- RestAPI: Add `include_parent` to metadata index
- RestAPI: Add an index method `../metadata` ([#264](https://github.com/placeos/rest-api/pull/264))
- RestAPI: Add releases endpoint ([#262](https://github.com/placeos/rest-api/pull/262))
- RestAPI: Query by single email ([#260](https://github.com/placeos/rest-api/pull/260))
- RestAPI: Add driver response codes to public API ([#261](https://github.com/placeos/rest-api/pull/261))
- RestAPI: Add `/metadata/:parent_id/history` ([#258](https://github.com/placeos/rest-api/pull/258))
- RestAPI: Set modifier for metadata and settings ([#256](https://github.com/placeos/rest-api/pull/256))
- StaffAPI: Add support for declining events ([#176](https://github.com/placeos/staff-api/pull/176))
- StaffAPI: Precise free/busy availability requests ([#170](https://github.com/placeos/staff-api/pull/170))
- StaffAPI: Expose tenant booking limits in the API ([#164](https://github.com/placeos/staff-api/pull/164))
- StaffAPI: Restrict `booking_limits` by zones ([#163](https://github.com/placeos/staff-api/pull/163))

## 1.2203.1

### Fixed

- Init: Remove `Edge` placeholder
- Core: Better module stopped errors ([#163](https://github.com/placeos/core/pull/163))
- RestAPI: fix response using driver status codes ([#240](https://github.com/placeos/rest-api/pull/240), [#242](https://github.com/PlaceOS/rest-api/pull/242))
- RestAPI: `put_redirect` to prevent manual  update redirect ([#239](https://github.com/placeos/rest-api/pull/239))

### Changed

- Core: Move process manager lookup by path to ModuleManager
- Core: Refactor: use `Log.with_context` with args
- Core: Use `require "uri/json"`
- Triggers: DRY through abstract inheritance ([#24](https://github.com/placeos/triggers/pull/24))

## 1.2203.0

### Added

- Core: Add support for custom response codes ([#161](https://github.com/placeos/core/pull/161))
- RestAPI: Add support for influx query authentication tokens
- RestAPI: InfluxDB query proxy route on `/api/v2/query` ([#238](https://github.com/placeos/rest-api/pull/238))
- RestAPI: Change logging severity via `LOG_LEVEL` environment variable ([#237](https://github.com/placeos/rest-api/pull/237))
- RestAPI: Add additional logging to signal requests ([#234](https://github.com/placeos/rest-api/pull/234))

### Fixed

- nginx, Core, FrontendLoader: Resolve swath of `expat` CVEs
- Triggers: Don't error when SaaS `X-API-KEY` already present
- RestAPI: Expose `/platform` ([#236](https://github.com/placeos/rest-api/pull/236))
- StaffAPI: Handle additional booking state transitions ([#157](https://github.com/placeos/staff-api/pull/157))
- StaffAPI: Improve uniqueness constraint ([#151](https://github.com/placeos/staff-api/pull/151))

### Changed

- Edge, Core, RestAPI: `X-API-KEY` for edge token authentication ([#174](https://github.com/PlaceOS/rest-api/issues/174))

### Known Issues

- Failure to create seed `Edge` model breaks fresh initiation of `partner-environment`
- Malformed responses from module executes via `/systems` and `/modules` routes

## 1.2202.2

### Added

- Interface/Backoffice: Show platform changelogs.
- Interface/Concierge: Add ability to add desks from the management
- StaffAPI: Booking `department` field ([#149](https://github.com/placeos/staff-api/pull/149))

### Fixed

- FrontendLoader, Nginx: Resolve CVE-2022-23990
- Interface/Explore: Tweak desks status handling
- Source: MQTT publishing

## 1.2202.1

### Added

- StaffAPI: Add `current_state` and `history` to bookings ([#146](https://github.com/placeos/staff-api/pull/146))

## 1.2202.0

### Changed

- Crystal services built with [Crystal 1.3.2](https://github.com/crystal-lang/crystal/blob/master/CHANGELOG.md#132-2022-01-18)
- Interface/Backoffice: Clarify columns on System's Module page.

### Added

- RestAPI: Add `/api/engine/v2/platform` to render platform metadata. ([#228](https://github.com/placeos/rest-api/pull/228))
- Workplace: Add logic for auto allocation of desks when booking. ([#99](https://github.com/placeos/user-interfaces/pull/99))
- Workplace: Add logic for preventing duplicate parking space bookings.
- StaffAPI: Add configurable limits on booked assets. ([#145](https://github.com/placeos/staff-api/pull/145))

### Fixed

- Resolve CVE-2022-22823 ([#15](https://github.com/placeos/nginx/pull/15), [#53](https://github.com/placeos/init/pull/53), [#157](https://github.com/placeos/core/pull/157))
- Interface/Backoffice: Fix adding new MQTT brokers. ([#247](https://github.com/placeos/backoffice/pull/247))
- Interface/Backoffice: Fix to user name display.
- Source: Creating mqtt publisher no longer blocks. ([#29](https://github.com/placeos/source/pull/29))
- RestAPI: Swallow channel errors in produced by single-document changefeeds. ([#227](https://github.com/placeos/rest-api/pull/227))
- RestAPI, Core: Merge settings favouring lower privilege keys. ([#137](https://github.com/PlaceOS/models/pull/137))
- RestAPI: Support `authority_id` in addition to `authority` param to auth source requests.

## 1.2201.2

### Added

- Auth: Enable all available scopes

### Fixed

- Core: Resolve issue where initiating user's id was not propagated to module instance  ([#155](https://github.com/PlaceOS/core/pull/155))

## 1.2201.1

### Added

- Source: Allow drivers to define measurement names ([#27](https://github.com/PlaceOS/source/pull/27))
- Interface/Backoffice: Update version view to show new data from API ([#238](https://github.com/PlaceOS/backoffice/pull/238))
- RestAPI: Add support for user model soft delete ([#224](https://github.com/PlaceOS/rest-api/pull/224))

### Fixed

- Patch CVE-2021-44790
- Interface/Backoffice: Fix updating local state for triggers on change ([#240](https://github.com/PlaceOS/backoffice/pull/240))
- Interface/Backoffice: Fix copying and removing keys ([#242](https://github.com/PlaceOS/backoffice/pull/242))
- Interface/Backoffice: Fix for obtaining domain auth sources ([#244](https://github.com/PlaceOS/backoffice/pull/244))
- RestAPI: Deny flag is also a Read flag for Mosquitto MQTT auth route ([#223](https://github.com/PlaceOS/rest-api/pull/223))
- Source: Tags are required to be unique ([#28](https://github.com/PlaceOS/source/pull/28))
- StaffAPI: Add unique migration for deleted and email digest ([#139](https://github.com/PlaceOS/staff-api/pull/139))
- StaffAPI: Render `deleted` and `deleted_at` in the booking model ([#138](https://github.com/PlaceOS/staff-api/pull/138))
- StaffAPI: Ignore deleted entries when checking for clashes in the bookings controller

## 1.2112.0

### Added

- Asset manager. ([#222](https://github.com/PlaceOS/rest-api/pull/222))
- Static analysis via `brakeman` and `standardrb` to `auth`.
- Support `X-Api-Key` in `auth`. ([#44](https://github.com/PlaceOS/auth/pull/44))
- Routes for authenticating Mosquitto MQTT broker. ([#219](https://github.com/PlaceOS/rest-api/pull/219))
- Upstream MQTT broker in `nginx`.

### Changed

- HTTP is no longer supported.
- Flag deleted bookings instead of removing them. ([#136](https://github.com/PlaceOS/staff-api/pull/136))
- Improved load errors in `core`.

### Fixed

- Guests queries in `staff-api` are scoped beneath tenant. ([#137](https://github.com/PlaceOS/staff-api/pull/137))
- Fixed incorrect secret generation that prevented `partner-environment` starting.
- Fix `htpasswd` generation in `init`.
- Stricter domain modelling of emails in `staff-api`.
- Remove a potentially reflected parameter in `auth`.

## 1.2111.3

### Changed

- Update to Crystal v1.2.2

### Added

- Forward `user_id` for identifying the initiator of module executes. ([#217](https://github.com/PlaceOS/rest-api/pull/217), [#153](https://github.com/PlaceOS/core/pull/153), [#103](https://github.com/PlaceOS/driver/pull/103))
- Endpoint to get events by extension data. ([#131](https://github.com/PlaceOS/staff-api/pull/131))

### Fixed

- Allow spaces in passwords passed to the `init` container.
- Tweak handling of auth for websockets when in an iframe.
- Improve cleanup of IO resources in drivers.
- Resolve an issue where an event's hosts were included as a guest. ([#132](https://github.com/PlaceOS/staff-api/pull/132))

### Known Issues

- Fresh installs of the [`partner-environment`](https://github.com/place-labs/partner-environment) fail to generate secrets

## 1.2111.2

### Changed

- Support for `etcd` versions less than `3.4` has been dropped.

### Added

- Support sessions in iframes.
- `core` waits for upstream services before starting boot processes.

### Fixed

- Resolved an issue with service discovery and Crystal v1.2.x
- `PLACE_SERVER_SECRET` was incorrectly generated in `init`

## 1.2111.1

### Changed

- `search-ingest` waits for `elasticsearch` to be healthy before interaction.

### Fixed

- Emails are normalised in `staff-api`.
- Invalid schema responses from `elasticsearch` are gracefully handled.

## 1.2111.0

### Added

- Persist driver binaries and repositories across container recreation.
- PlaceOS Pulse telemetry added (disabled by default).
- Place Staff API gained support for delegated calendar access in O365.
- An instance's encryption secret can be rotated via a task defined in PlaceOS Init
- Updated services to Crystal v1.2.1

### Changed

- Unified boolean URI parameter handling across the API surface.
- Renamed `rubber-soul` to `search-ingest`.

### Fixed

- Requests for driver metadata had the potential of blocking.
- Improved concurrent safety of the WebSocket API.
- Calendar availability check improved.
- Resolve CVE advisories for container dependencies.
- Improved updating a module onto a new driver process.

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
- Using WebSockets, in Javascript, with `X-API-KEY` authentication

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
- Resolve replication issue for search indices.

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