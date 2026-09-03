# Changelog

All notable changes to PlaceOS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [PlaceOS Platform Versioning](https://github.com/PlaceOS/PlaceOS/blob/release/README.md#platform-versioning).

## 2.2609.3

### Added

- Clients/Typescript [**signage**]: Add template endpoints
- Clients/Typescript [**signage**]: Sync endpoints and types with openapi_doc
- Clients/Typescript [**signage**]: Add shared_with field to media, playlists and templates
- Clients/Typescript [**signage**]: Add media tag management
- Interfaces/Backoffice [**admin**]: Remove the elasticsearch reindex/backfill cards (ppt-2644)
- Interfaces/Backoffice [**ui**]: Make about values selectable
- Interfaces/Backoffice [**signage**]: Add plugin type selector
- Interfaces/Backoffice [**signage**]: Show plugin type in table
- Interfaces/Templates [**e2e**]: Remove elasticsearch and search-ingest from the test stack (ppt-2644)
- Interfaces/Templates [**signage-manager**]: Initial implementation for templates
- Interfaces/Templates [**signage**]: Add template player
- Interfaces/Templates [**signage-manager**]: Add display management ppt-2673
- Interfaces/Templates [**signage-manager**]: Add template media backgrounds
- Interfaces/Templates [**signage-manager**]: Show media tag counts ppt-2554
- Interfaces/Templates [**signage-manager**]: Show media details when editing item schedules ppt-2677
- Interfaces/Templates [**signage-manager**]: Search existing tags when tagging media ppt-2676
- Interfaces/Templates [**signage-manager**]: Show groups signage items are shared with ppt-2679
- Interfaces/Templates [**signage-manager**]: Show playlist sharing details
- Interfaces/Templates [**signage-manager**]: Add template approval workflow
- Interfaces/Templates [**signage-manager**]: Add template sharing
- Interfaces/Templates [**signage-manager**]: Add playlist bulk actions ppt-2689
- Interfaces/Templates [**signage-manager**]: Add live template preview
- Interfaces/Templates [**signage-manager**]: Show tags in media preview
- Interfaces/Templates [**signage-manager**]: Show template sharing details
- Interfaces/Templates [**signage**]: Add editable debug overlay layout ppt-2691
- Interfaces/Templates [**signage**]: Apply templates to displays and zones ppt-2690
- Interfaces/Templates [**signage-manager**]: Add template details sidebar
- Interfaces/Templates [**signage**]: Schedule display templates (ppt-2742)
- Interfaces/Templates [**desks**]: Support asset-backed resources
- Interfaces/Templates [**signage**]: Enable templates by default
- Interfaces/Templates [**events**]: Support multi-location room bookings ppt-2572
- Interfaces/Templates [**signage-manager**]: Allow managers to manage zones ppt-2758
- Interfaces/Templates [**catering**]: Support per-room orders ppt-2571
- Interfaces/Templates [**signage-manager**]: Highlight disabled playlists
- Interfaces/Templates [**signage-manager**]: Add signage tag management ppt-2766
- Libraries/Models: Pg full-text search columns (ppt-2644, 1/2) ([#324](https://github.com/PlaceOS/placeos-models/pull/324))
- Libraries/Models [**playlist/schedule**]: Add valid until support
- Libraries/Models [**signage-ai**]: Provider and job models (ppt-2741) ([#326](https://github.com/PlaceOS/placeos-models/pull/326))
- Services/Auth.cr: Add backtraces to production builds
- Services/Init: Remove elasticsearch drop task and constants (ppt-2644) ([#104](https://github.com/PlaceOS/init/pull/104))
- Services/RestAPI: Replace elasticsearch with postgresql full-text search (ppt-2644, 2/2) ([#445](https://github.com/PlaceOS/rest-api/pull/445))
- Services/RestAPI [**search**]: Match elasticsearch token semantics exactly (ppt-2644) ([#446](https://github.com/PlaceOS/rest-api/pull/446))
- Services/RestAPI [**signage**]: Implement unshare for media and templates
- Services/RestAPI [**signage/media**]: Add tag_counts route
- Services/RestAPI [**signage/plugins**]: Allow filtering on plugin type
- Services/RestAPI [**signage**]: Show groups media is shared with
- Services/RestAPI [**signage/playlist_media**]: Return playlists on show route
- Services/RestAPI [**signage/playlists**]: Add unshare option to destroy
- Services/RestAPI [**proxy**]: Add get proxy for use by frontends
- Services/RestAPI [**signage**]: Add template mappings to player response
- Services/RestAPI [**zones**]: Allow signage managers to create signage zones
- Services/RestAPI [**signage-ai**]: Image generation runtime and controllers (ppt-2741) ([#447](https://github.com/PlaceOS/rest-api/pull/447))
- Services/RestAPI [**signage/playlist_media**]: Tag management
- Services/RestAPI [**signage**]: Improve caching

### Fixed

- Clients/Typescript [**signage**]: Add shared_with to playlist
- Clients/Typescript [**signage**]: Add new fields to schedule and media item
- Clients/Typescript [**api**]: Sync client types with current spec
- Interfaces/Backoffice [**admin**]: Drop the now-unused translatepipe import from database details (ppt-2644)
- Interfaces/Backoffice [**signage**]: Resolve relative plugin urls
- Interfaces/Backoffice [**signage**]: Stop edit modal plugin reloads
- Interfaces/Backoffice [**signage**]: Make plugin defaults optional
- Interfaces/Backoffice [**modules**]: Preserve control system on creation
- Interfaces/Backoffice [**modules**]: Stop treating settings collection as string
- Interfaces/Backoffice [**modules**]: Omit control system from device modules
- Interfaces/Templates [**auth**]: Avoid unauthorised redirect during slow startup
- Interfaces/Templates [**concierge**]: Skip terminal bookings in reject all
- Interfaces/Templates [**parking**]: Correct request status field mapping
- Interfaces/Templates [**bookings**]: Ignore ended visitor conflicts (ppt-2658)
- Interfaces/Templates [**concierge**]: Allow removing visitor passes (ppt-2657)
- Interfaces/Templates [**bookings**]: Retain cancelled booking history (ppt-2656)
- Interfaces/Templates [**bookings**]: Hide cancel action after check-in
- Interfaces/Templates [**bookings**]: Wait for current availability (ppt-2663)
- Interfaces/Templates [**bookings**]: Serialize linked visitor bookings ppt-2662
- Interfaces/Templates [**explore**]: Align desk booking dialog wording
- Interfaces/Templates [**workplace**]: Expose visitor invite settings ppt-2666
- Interfaces/Templates [**concierge**]: Save only application setting overrides
- Interfaces/Templates [**concierge**]: Normalise legacy application logos
- Interfaces/Templates [**signage-manager**]: Page the media library as the user scrolls
- Interfaces/Templates [**concierge**]: Persist conflicting desk cancellations
- Interfaces/Templates [**events**]: Preserve host in attendee list
- Interfaces/Templates [**signage-manager**]: Show template details in responsive tabs
- Interfaces/Templates [**signage-manager**]: Generate template plugin parameter fields
- Interfaces/Templates [**signage-manager**]: Improve unselected layout preview contrast
- Interfaces/Templates [**signage-manager**]: Normalise layout dimension inputs
- Interfaces/Templates [**bookings**]: Filter desks by map level (ppt-2668)
- Interfaces/Templates [**bookings**]: Hide check-in for unallocated parking
- Interfaces/Templates [**signage-manager**]: Unshare deleted items by group ppt-2651
- Interfaces/Templates [**signage-manager**]: Send default layout positions
- Interfaces/Templates [**bookings**]: Use stored recurrence end date ppt-2672
- Interfaces/Templates [**bookings**]: Check in single occurrence of recurring bookings ppt-2674
- Interfaces/Templates [**bookings**]: Roll back bookings when asset requests fail ppt-2678
- Interfaces/Templates [**signage-manager**]: Add shared with list to media preview modal
- Interfaces/Templates [**signage-manager**]: Separate plugin and widget catalogues
- Interfaces/Templates [**signage-manager**]: Include display version when editing ppt-2673
- Interfaces/Templates [**concierge**]: Preserve parking bay zones when editing
- Interfaces/Templates [**signage-manager**]: Fix shown details for template layouts after save
- Interfaces/Templates [**signage-manager**]: Use media response playlists in previews ppt-2686
- Interfaces/Templates [**signage**]: Support schedule expiry ppt-2685
- Interfaces/Templates [**signage-manager**]: Handle template draft ids ppt-2687
- Interfaces/Templates [**signage-manager**]: Add 15-minute play period ppt-2688
- Interfaces/Templates [**signage-manager**]: Refresh playlist share details
- Interfaces/Templates [**signage-manager**]: Show display zones in details
- Interfaces/Templates [**events**]: Preserve external host details
- Interfaces/Templates [**e2e**]: Restore elasticsearch and search-ingest to the test stack
- Interfaces/Templates [**workplace**]: Show recurring end date on booking success ppt-2694
- Interfaces/Templates [**bookings**]: Show cancel series by default ppt-2682
- Interfaces/Templates [**common**]: Update favourite signals immediately ppt-2695
- Interfaces/Templates [**events**]: Book room assets reliably ppt-2693
- Interfaces/Templates [**events**]: Use attendee details for external hosts
- Interfaces/Templates [**ci**]: Open prs for changelog updates
- Interfaces/Templates [**signage**]: Remove plugin cut transition delay
- Interfaces/Templates [**events**]: Resolve aliased host names
- Interfaces/Templates [**events**]: Show aliased host name in event details
- Interfaces/Templates [**concierge**]: Bound parking booking pagination
- Interfaces/Templates [**concierge**]: Resolve aliased hosts in booking views
- Interfaces/Templates [**events**]: Resolve host name from attendees
- Interfaces/Templates [**concierge**]: Load paginated data in 200-item pages
- Interfaces/Templates [**concierge**]: Resolve room host names from attendees
- Interfaces/Templates [**concierge**]: Fix management level selectors (ppt-2566)
- Interfaces/Templates [**events**]: Persist public event visibility ppt-2247
- Interfaces/Templates [**events**]: Separate selected rooms from results ppt-2572
- Interfaces/Templates [**events**]: Handle multi-room booking edge cases ppt-2572
- Interfaces/Templates [**signage-manager**]: Prevent sidebar overflow
- Interfaces/Templates [**signage**]: Keep plugin visible until playback starts
- Libraries/Driver [**protocol/management**]: Settle pending start on a seq-less result
- Libraries/Models [**shortener**]: Retry id generation on same-second create collisions ([#325](https://github.com/PlaceOS/placeos-models/pull/325))
- Libraries/Models [**migrations**]: Use `if not exists`
- Libraries/Models [**migrations**]: Ordering due to outdated merge
- Libraries/Models: Migration not fail if run a second time
- Libraries/Models [**booking**]: Ensure history is saved on instances
- Libraries/Models [**signage_template**]: Plugin.authority_id can be nil
- Libraries/Models [**template/layout**]: Can be 0 for floating plugins
- Libraries/Models [**bookings**]: Pagination performance
- Services/Auth.cr [**saml**]: Bump crystal-saml — namespace declarations + shibboleth signature verification
- Services/Build_service: Add support for crystal 1.21
- Services/Core [**driver_manager**]: Ensure drivers are compiled if missing on lazy load path
- Services/Core: Specs and bump driver
- Services/Edge [**driver_manager**]: Ensure drivers are compiled if missing on lazy load path
- Services/Edge: Specs and bump driver
- Services/Init [**sam**]: Binary size
- Services/Init: Raise error on failed migration
- Services/RestAPI [**systems**]: Signage manager users can add and edit displays
- Services/RestAPI [**models**]: Template widget validation fix
- Services/RestAPI [**signage/templates**]: Should return the drafts by default
- Services/RestAPI [**signage/templates**]: Improve draft handling
- Services/RestAPI [**signage/playlist_media**]: Bust signage caches on updates
- Services/RestAPI [**subsystem**]: Fixes for support subsystem access
- Services/StaffAPI [**bookings**]: Recurring instance history saved
- Services/StaffAPI [**bookings**]: Pagination calculation

### Changed

- Interfaces/Templates [**nx**]: Migrate workspace to nx 23
- Swagger/RestAPI: Update for placeos-2.2608.1
- Swagger/StaffAPI: Update for placeos-2.2608.1

## 2.2608.1

### Added

- Interfaces/Backoffice [**delete**]: Optionally remove resources associated with a zone or domain (ppt-1203)
- Interfaces/Backoffice [**delete**]: Show what a cascade removed, with ids
- Interfaces/Backoffice [**repositories**]: Add branch and commit search
- Interfaces/Templates [**map-studio**]: Add map studio application
- Interfaces/Templates [**map-studio**]: Sync floorplans with placeos zones
- Interfaces/Templates [**signage**]: Add a stall-based recovery watchdog
- Interfaces/Templates [**signage**]: Hold application reloads until they are safe to apply
- Interfaces/Templates [**signage**]: Add window.signage console diagnostics
- Interfaces/Templates [**signage-manager**]: Show zone pickers as trees
- Interfaces/Templates [**signage-manager**]: Scope zone search to selected hierarchy
- Interfaces/Templates [**workplace**]: Add meeting notes reset
- Libraries/Models: [ppt-2596] add ai support agent models ([#321](https://github.com/PlaceOS/placeos-models/pull/321))
- Services/RestAPI [**tenant_consent**]: Live progress page for the admin-consent flow (ppt-2032) ([#441](https://github.com/PlaceOS/rest-api/pull/441))
- Services/RestAPI: Store app-only graph credentials in the staff-api tenant (ppt-2000) ([#442](https://github.com/PlaceOS/rest-api/pull/442))
- Services/Source [**mqtt**]: Upgrade to mqtt 2.0.1 and the negotiating client
- Services/Source: Clear retained state when a topic moves or goes away ([#64](https://github.com/PlaceOS/source/pull/64))
- Services/StaffAPI [**events**]: Hand a meeting to a new host (ppt-2640) ([#383](https://github.com/PlaceOS/staff-api/pull/383))

### Fixed

- Interfaces/Templates [**bookings**]: Save visitors against their own asset (ppt-2635)
- Interfaces/Templates [**bookings**]: Treat assigned bookings as reserved resources (ppt-2469)
- Interfaces/Templates [**bookings**]: Match visitor group siblings by group reference (ppt-2638)
- Interfaces/Templates [**bookings**]: Keep user input entered while the booking form initialises (ppt-2643)
- Interfaces/Templates [**bookings**]: Resolve current desk names
- Interfaces/Templates [**concierge**]: Sort parking levels last on non-parking views (ppt-2566)
- Interfaces/Templates [**concierge**]: Reset desk booking levels (ppt-2566)
- Interfaces/Templates [**concierge**]: Correct parking no-show reports (ppt-2565)
- Interfaces/Templates [**concierge**]: Prevent broadcast recipient flicker (ppt-2400)
- Interfaces/Templates [**concierge**]: Exclude rooms from broadcast recipients
- Interfaces/Templates [**concierge**]: Clarify overnight parking bookings
- Interfaces/Templates [**events**]: Show attendee-only notify option again (ppt-2514)
- Interfaces/Templates [**events**]: Warn on visitor meeting host changes (ppt-2375)
- Interfaces/Templates [**events**]: Warn when changed host remains attendee (ppt-2640)
- Interfaces/Templates [**events**]: Prevent recurrence polluting form state
- Interfaces/Templates [**form-fields**]: Remove only the clicked visitor from the list (ppt-2634)
- Interfaces/Templates [**form-fields**]: Ignore blank bookable hours ranges (ppt-2641)
- Interfaces/Templates [**parking**]: Derive request status from the booking process state
- Interfaces/Templates [**signage**]: Resolve cron schedules to the most recent run
- Interfaces/Templates [**signage**]: Recover media that is missing from the cache
- Interfaces/Templates [**signage**]: Let an api-key player start with no network
- Interfaces/Templates [**signage**]: Stop a version update navigating away from the display
- Interfaces/Templates [**signage-manager**]: Search id, name and display_name fields
- Interfaces/Templates [**signage-manager**]: Correct playlist zone assignment state
- Interfaces/Templates [**common**]: Let fixed devices boot offline from cached state
- Interfaces/Templates [**workplace**]: Cancel the group-booking timer when the success page is destroyed
- Libraries/Models [**user**]: Logged_out_at should have a timezone
- Services/Auth.cr [**saml**]: Reject assertions that cannot be verified
- Services/Auth.cr [**oauth**]: Refuse revoked refresh tokens
- Services/Auth.cr [**oauth**]: Enforce pkce at redemption (rfc 7636 §4.6)
- Services/Auth.cr [**oauth**]: Spend authorization codes exactly once (rfc 6749 §4.1.2)
- Services/Auth.cr [**oauth**]: Bind the authorization code to its client (rfc 6749 §4.1.3)
- Services/Auth.cr [**oauth**]: Cascade access-token revocation to its refresh token (rfc 7009 §2.1)
- Services/Auth.cr [**oauth**]: Answer an undecodable grant with 400, and keep tokens out of caches
- Services/Auth.cr [**oidc**]: Give the id_token exp and iat (oidc core §2)
- Services/Auth.cr [**auth**]: Reject an expired api key
- Services/Auth.cr [**auth**]: Close the backslash open-redirect bypass in sanitize_continue
- Services/Auth.cr [**logging**]: Redact code_verifier, tokens and assertions from request logs
- Services/Auth.cr [**config**]: Do not go silent when production has no session secret
- Services/Auth.cr [**boot**]: Name the cause when oauth_tokens has not been migrated
- Services/RestAPI [**tenant_consent**]: Retry graph calls that race directory replication (ppt-2000) ([#440](https://github.com/PlaceOS/rest-api/pull/440))
- Services/StaffAPI [**events**]: Suppress stale mirror echo in staff/event/changed signal (ppt-2375) ([#380](https://github.com/PlaceOS/staff-api/pull/380))
- Services/StaffAPI [**events**]: Keep event metadata when a meeting changes room (ppt-2375) ([#382](https://github.com/PlaceOS/staff-api/pull/382))
- Services/StaffAPI [**deps**]: Pg-orm 2.2.4 to stop the connection pool being poisoned ([#386](https://github.com/PlaceOS/staff-api/pull/386))

### Changed

- Interfaces/Templates [**assistant-panel**]: Migrate person detection to litert.js
- Services/Auth.cr [**deps**]: Pin crystal-saml to the inherited-namespace signature fix

## 2.2607.3

### Fixed

- Interfaces/Templates [**bookings**]: Preserve recurrence end date proj-1953
- Interfaces/Templates [**uploads**]: Report upload failures instead of reporting success
- Interfaces/Templates [**signage-manager**]: Decode images deterministically before capture
- Interfaces/Templates [**form-fields**]: Preserve visitors on removal (ppt-2634)
- Interfaces/Templates [**bookings**]: Reposition parking autocomplete on scroll (ppt-2633)
- Interfaces/Templates [**bookings**]: Load delegated visitor group siblings (ppt-2637)
- Interfaces/Templates [**bookings**]: Migrate visitor groups to containers (ppt-2638)
- Interfaces/Templates [**explore**]: Separate area and sensor overlays (ppt-2639)
- Interfaces/Templates [**bookings**]: Sync edited host identity (ppt-2640)
- Interfaces/Templates [**events**]: Limit attendee-only notifications for ppt-2514
- Interfaces/Templates [**signage**]: Delay webpage switches after load
- Libraries/Models [**booking_instance**]: Extension_data is an override, not a replacement
- Libraries/Models [**user**]: Logged_out_at does not map well in es, ignore it
- Services/RestAPI [**signage**]: Stable index ordering for pagination
- Services/StaffAPI [**events**]: [ppt-2627] skip  exchange events with no ical_uid instead of raising ([#381](https://github.com/PlaceOS/staff-api/pull/381))
- Services/StaffAPI [**bookings**]: Add history for new asset allocation

### Added

- Interfaces/Templates [**concierge**]: Show desk booking history
- Interfaces/Templates [**signage-manager**]: Let plugins render their own thumbnails
- Interfaces/Templates [**signage-manager**]: Lazy-load media thumbnails
- Libraries/Models [**signage**]: Add widget support ([#320](https://github.com/PlaceOS/placeos-models/pull/320))
- Libraries/Models [**signage**]: Template approval workflow and zone associations
- Libraries/Models [**signage**]: Allow templates to be managed by groups
- Services/SearchIngest: Index signagetemplate for elasticsearch
- Services/StaffAPI [**controllers/bookings**]: Fix booking instance ext data semantics

### Changed

- Interfaces/Templates [**signage-manager**]: Split media group tabs onto their own setting
- Interfaces/Templates [**signage-manager**]: Show group breadcrumbs in schedule header

## 2.2607.2

### Added

- Interfaces/Templates [**signage-manager**]: Show next schedule plays on hover
- Interfaces/Templates [**concierge**]: Add site attendance graph for ppt-2564
- Interfaces/Templates [**concierge**]: Add no show details to parking reports
- Interfaces/Templates: Add debugging panel for settings
- Interfaces/Templates [**components**]: Show settings source zones
- Interfaces/Templates [**concierge**]: Add parking map availability time
- Interfaces/Templates [**workplace**]: Add parking restriction radio options
- Interfaces/Templates [**bookings**]: Consolidate assigned resource booking settings
- Interfaces/Templates [**booking-panel**]: Add configurable timeline
- Interfaces/Templates [**events**]: Notify only new attendees for ppt-2514
- Interfaces/Templates [**signage-manager**]: Add group header navigation
- Interfaces/Templates [**signage-manager**]: Add bulk media tagging
- Interfaces/Templates [**signage-manager**]: Add save hotkeys to form modals
- Interfaces/Templates [**visitor-kiosk**]: Separate check-in and checkout flows
- Interfaces/Templates [**workplace**]: Add parking plate history
- Libraries/Driver: Add support for expiring hash fields
- Libraries/Driver [**presence_smoother**]: Helper for managing noisy motion / presence detectors
- Libraries/Models: [ppt-2505] added space_config field to control system model ([#318](https://github.com/PlaceOS/placeos-models/pull/318))
- Services/Auth.cr [**oauth**]: Serve /auth/oauth/* endpoints
- Services/StaffAPI [**events**]: Skip notification on attendee only changes (ppt-2514) ([#377](https://github.com/PlaceOS/staff-api/pull/377))

### Fixed

- Interfaces/Backoffice [**systems**]: Show modules after refresh with same active system
- Interfaces/Templates [**signage**]: Clear player when playlist is empty
- Interfaces/Templates [**signage-manager**]: Select duplicate playlist items independently
- Interfaces/Templates [**signage-manager**]: Reflect media edits immediately
- Interfaces/Templates [**bookings**]: Retain selected desk level during loading (proj-1951)
- Services/StaffAPI [**bookings**]: Don't reset on unallocated bookings
- Services/StaffAPI [**bookings**]: Resource_ids typo ([#378](https://github.com/PlaceOS/staff-api/pull/378))

### Changed

- Interfaces/Templates [**signage-manager**]: Add icon to distribution playlist listings

## 2.2607.1

### Fixed

- Interfaces/Backoffice: Make exec search field stick to top of dropdown list
- Interfaces/Templates [**signage-mananger**]: Add loading states for media items and playlist sidebar
- Interfaces/Templates [**signage-manager**]: Fix race condition for authorised check
- Interfaces/Templates [**events**]: Enforce room booking rules in booking panel
- Interfaces/Templates [**signage-manager**]: Add line through disabled playlists on schedule views
- Interfaces/Templates [**visitor-kiosk**]: Prevent next button "submitting" the details form
- Interfaces/Templates [**visitor-kiosk**]: Keep registration host blank
- Interfaces/Templates [**uploads**]: Handle token refreshes mid-upload
- Interfaces/Templates [**events**]: Keep host permission error visible after host revert
- Interfaces/Templates [**concierge**]: Update parking report downloads
- Libraries/Models [**group**]: Improve performance of zone_children_map

### Added

- Clients/Typescript [**signage**]: Add media schedule endpoints
- Interfaces/Templates [**signage-manager**]: Paginate media, playlist and display requests
- Interfaces/Templates [**signage-manager**]: Update media folders to use tags endpoint
- Interfaces/Templates [**signage-manager**]: Improve media topbar flow on mobile
- Interfaces/Templates [**mobile**]: Add ms intune support to mobile apps
- Interfaces/Templates [**workplace**]: Add ability to set meeting space from query parameter
- Interfaces/Templates [**signage-manager**]: Add support for distribution playlists
- Libraries/Models [**playlist/item_schedule**]: Add individual content schedules
- Libraries/Models [**assets**]: Categories and types to have unique names scoped to authority
- Services/RestAPI [**signage**]: Add media item scheduling support
- Services/RestAPI [**asset_categories**]: Scope to authority
- Services/StaffAPI [**config**]: Add execution contexts

## 2.2606.6

### Added

- Clients/Crystal: [ppt-2508] add metadata rename method ([#38](https://github.com/PlaceOS/crystal/pull/38))
- Clients/Typescript [**signage**]: Add media tags endpoint
- Interfaces/Templates [**signage-manager**]: Handle html text codes in names
- Interfaces/Templates [**signage-manager**]: Add list and folder views to media list
- Interfaces/Templates [**signage-manager**]: Add ability to add new playlists from media view
- Services/RestAPI: Add read replica support
- Services/RestAPI: [ppt-2508] add metadata rename endpoint ([#438](https://github.com/PlaceOS/rest-api/pull/438))
- Services/StaffAPI: Add support for read-replicas

### Fixed

- Clients/Typescript [**systems**]: Add signage_last_seen field
- Interfaces/Templates [**mobile**]: Fix workplace safe zones for devices with notches
- Interfaces/Templates [**bookings**]: Paginate booked resource lookup
- Interfaces/Templates [**events**]: Return saved booking after post ppt-2462
- Interfaces/Templates: Fix handling of empty user when booking
- Interfaces/Templates [**concierge**]: Fix rejecting overlapping bookings on desk assignment
- Interfaces/Templates [**signage-manager**]: Fix display status on schedule view
- Libraries/Models [**booking**]: Performance improvements and clash checks

## 2.2606.5

### Added

- Interfaces/Backoffice [**groups**]: Add ability to set permissions for bulk user upload

### Fixed

- Libraries/Models [**booking**]: Instance clashing checks

## 2.2606.4

### Fixed

- Clients/Typescript [**auth**]: Fix handling of auth without authority session

### Added

- Interfaces/Backoffice [**admin**]: Add quick create option to api key section
- Interfaces/Backoffice [**admin**]: Add expiry options to api keys (ppt-2540)
- Libraries/Models: [ppt-2540] add expiry support to api key ([#319](https://github.com/PlaceOS/placeos-models/pull/319))
- Services/Core: Add liveness probe
- Services/RestAPI: [ppt-2540] add expiry support to api key ([#437](https://github.com/PlaceOS/rest-api/pull/437))
- Services: Add nonblocking dns

### Changed

- Interfaces/Templates: Migrate ts-client to v5
- Interfaces/Templates [**components**]: Replace svg-viewer map renderer with dynamic map
- Interfaces/Templates: Update nx to 22.7.5
- Interfaces/Templates [**angular**]: Migrate workspace to angular 22
- Interfaces/Templates [**libs**]: Migrate template state to signals
- Interfaces/Templates: Migrate package management to bun

## 2.2606.3

### Added

- Interfaces/Templates [**visitor-kiosk**]: Add virtual keyboard support
- Libraries/Models [**booking_instance**]: Add additional fields
- Libraries/Models: Ensure pkce support is enabled for auth
- Services/RestAPI [**root**]: Add redis stats to health check
- Services/Triggers [**driver_updater**]: Reduce cpu load

### Fixed

- Interfaces/Templates [**concierge**]: Handle desk reject all instances ppt-2532
- Interfaces/Templates [**concierge**]: Print individual desk qr codes ppt-2533
- Interfaces/Templates [**bookings**]: Preserve monthly review recurrence ppt-2526
- Interfaces/Templates [**concierge**]: Refresh desk rejection state ppt-2532
- Libraries/Driver [**subscriptions**]: Improve failsafe checks
- Libraries/Driver [**transport/websocket**]: Prevent interleaved writes to connected state
- Services/RestAPI [**websocket/session**]: Subscription leak on close

### Changed

- Services/Triggers [**Dockerfile**]: [ppt-2278] add /tmp ([#49](https://github.com/PlaceOS/triggers/pull/49))

## 2.2606.2

### Fixed

- Services [**eventbus**]: fix db lock contention ([0fa1341](https://github.com/spider-gazelle/eventbus/commit/0fa1341cf54cd6d5a700a2727b651879f35453d9))

## 2.2606.1

### Fixed

- Interfaces/Templates [**concierge**]: Apply desk duration rules ppt-2511
- Services/RestAPI [**shard.lock**]: Update required dependencies

### Added

- Libraries/Driver [**proxy/driver**]: Add json passing path
- Services/Core [**build_api**]: [ppt-2524] add a user-agent header to build service requests ([#291](https://github.com/PlaceOS/core/pull/291))
- Services/RestAPI [**signage/playlist_media**]: Add tags query

### Changed

- Services/Build_service [**application**]: [ppt-2524] add placeos_ver= and cluster_name= tags when present around the request

## 2.2605.6

### Fixed

- Interfaces/Templates [**concierge**]: Filter approved parking approvals proj-1896
- Interfaces/Templates [**concierge**]: Show vehicle type in parking bookings
- Interfaces/Templates [**concierge**]: Proj-1910 update room approval status
- Interfaces/Templates [**bookings**]: Preserve monthly room recurrence ppt-2509
- Interfaces/Templates [**common**]: Suppress bookable hours date warning for ppt-2518
- Libraries/Driver [**subscriptions**]: Ensure redis closes on re-subscription errors
- Libraries/Driver [**logger**]: Prevent fiber leak
- Libraries/Models [**driver**]: Apply update_available flag without modifying timestamps
- Services/Build_service [**compiler**]: Produce fully-symbolized stack traces for static-musl driver binaries
- Services/Build_service [**Dockerfile**]: Ensure drivers can build with backtraces
- Services/StaffAPI [**events**]: Correctly signal on room only change (ppt-2375) ([#374](https://github.com/PlaceOS/staff-api/pull/374))

### Added

- Clients/Typescript [**signage**]: Add new playlist endpoint for listing approvers
- Interfaces/Backoffice [**admin**]: Add zone tree import export ppt-2519
- Interfaces/Templates [**user**]: Add loading and processing of user groups and permissions
- Interfaces/Templates [**signage-manager**]: Allow editing webpage media urls
- Interfaces/Templates [**auth**]: Guard apps by subsystem read access
- Interfaces/Templates [**signage-manager**]: Add media group tabs
- Interfaces/Templates [**signage-manager**]: Add bulk media actions
- Interfaces/Templates [**signage-manager**]: Show upcoming playlist sessions
- Interfaces/Templates [**workplace**]: Default parking requests to desk building
- Interfaces/Templates [**signage-manager**]: Add playlist approval preview controls
- Interfaces/Templates [**signage-manager**]: Edit multiple playlist schedules
- Libraries/Driver [**transport/http**]: Remove expired cookies from jar
- Libraries/Driver: Use non blocking dns
- Libraries/Models [**oauth_token**]: Add oauthtoken model + migration ([#315](https://github.com/PlaceOS/placeos-models/pull/315))
- Libraries/Models: [ppt-2454] sanitize attributes ([#313](https://github.com/PlaceOS/placeos-models/pull/313))
- Libraries/Models [**playlist**]: Refactor schedules ([#316](https://github.com/PlaceOS/placeos-models/pull/316))
- Libraries/Models: Add pending mail table ([#317](https://github.com/PlaceOS/placeos-models/pull/317))
- Libraries/Models: Add multiple schedules to playlists
- Services/Core: Improve driver management ([#290](https://github.com/PlaceOS/core/pull/290))
- Services/RestAPI: Add signage approval requests ([#436](https://github.com/PlaceOS/rest-api/pull/436))

### Changed

- Services/StaffAPI [**bookings**]: Clashing_assets to validate booking_start vs booking_end ([#373](https://github.com/PlaceOS/staff-api/pull/373))

## 2.2605.5

### Fixed

- Interfaces/Templates [**concierge**]: Scale parking action column with number of actions (ppt-1890)
- Interfaces/Templates [**workplace**]: Handle overnight parking shifts proj-1881
- Interfaces/Templates [**workplace**]: Show restricted parking all-day window proj-1878
- Interfaces/Templates [**concierge**]: Show parking request notes proj-1882
- Libraries/Resource: Possible infinite recursion watching resources

## 2.2605.4

### Added

- Services/StaffAPI [**bookings**]: Add include_linked guests (ppt-2375) ([#372](https://github.com/PlaceOS/staff-api/pull/372))

### Fixed

- Services/Auth [**omniauth**]: Redis queue should be non-blocking
- Services/RestAPI [**security**]: Restrict driver listing, driver readme and zone trigger lookups to support users ([#435](https://github.com/PlaceOS/rest-api/pull/435))
- Services/SearchIngest: Log actual elasticsearch endpoint when elastic_uri is set ([#88](https://github.com/PlaceOS/search-ingest/pull/88))
- Services/StaffAPI [**events**]: Support #guest_list ical_uid lookup (ppt-2375) ([#371](https://github.com/PlaceOS/staff-api/pull/371))

## 2.2605.3

### Fixed

- Interfaces/Templates [**public**]: Refresh guest token for public events ppt-2247
- Interfaces/Templates [**concierge**]: Respect bookable hours in room utilisation ppt-2506
- Interfaces/Templates [**workplace**]: Update parking request confirmation proj-1874
- Interfaces/Templates [**concierge**]: Use parking timezone for request times proj-1846
- Interfaces/Templates [**events**]: Preserve monthly recurrence weekday ppt-2509
- Libraries/Driver [**redis**]: Reduce the possibility of a connection leak
- Services/Build: Prevent handler wedge from stalled clients and spawn failures ([#58](https://github.com/PlaceOS/build/pull/58))
- Services/RestAPI [**playlists**]: Provide content for shared playlists ([#434](https://github.com/PlaceOS/rest-api/pull/434))

### Added

- Services/Auth [**initializers/omniauth**]: Run redis events in the background

## 2.2605.2

### Fixed

- Libraries/Driver [**driver_model**]: Expose security groups
- Services/RestAPI [**webrtc**]: Recaptchafailed error handling ([#433](https://github.com/PlaceOS/rest-api/pull/433))
- Services/StaffAPI [**bookings**]: Recurring booking clash detection edge case
- Services/Triggers: Reduce memory requirements on boot

### Added

- Interfaces/Backoffice [**systems**]: Add security groups field
- Interfaces/Backoffice [**markdown**]: Add shiki code highlighting
- Libraries/Driver [**proxy/remote_driver**]: Force core ip descovery on io::error

## 2.2605.1

### Added

- Clients/Crystal: Driver recompile ([#36](https://github.com/PlaceOS/crystal/pull/36))
- Clients/Typescript [**groups**]: Add group endpoint clients
- Interfaces/Backoffice [**groups**]: Add hierarchy to group item sidebar list
- Interfaces/Templates: Add route-based app titles
- Interfaces/Templates [**signage-manager**]: Add signage group management
- Libraries/Models: Add application level permission groups ([#311](https://github.com/PlaceOS/placeos-models/pull/311))
- Libraries/Models: Add signage groups ([#312](https://github.com/PlaceOS/placeos-models/pull/312))
- Libraries/Models [**user**]: Add subsystem_access helper
- Services/Init: Add rollback cli ([#103](https://github.com/PlaceOS/init/pull/103))
- Services/RestAPI: Add crud methods for managing permission groups ([#432](https://github.com/PlaceOS/rest-api/pull/432))
- Services/SearchIngest: Add support for uuid and non string ids
- Services/StaffAPI [**events**]: [ppt-2375] add previous detail to change signal ([#370](https://github.com/PlaceOS/staff-api/pull/370))

### Fixed

- Interfaces/Templates [**concierge**]: Fix desync of visitor list state when switching views (ppt-2475)
- Interfaces/Templates [**concierge**]: Align day view list actions with event details modal (ppt-2478)
- Libraries/Models [**control_system**]: [ppt-2460] empty string in camera_snapshot_urls ([#310](https://github.com/PlaceOS/placeos-models/pull/310))
- Libraries/Resource [**Log**]: Set ids to string to handle uuids and complex primary keys
- Services/Auth [**Dockerfile**]: Remove default json gem
- Services/Auth [**omniauth**]: Fail fast on redis connection failure
- Services/RestAPI [**controllers/signage**]: Handle empty item_id strings

### Changed

- Services/StaffAPI [**calendars**]: [ppt-2471] check_permission to call ms g get calendar instead ([#368](https://github.com/PlaceOS/staff-api/pull/368))
- Services/StaffAPI [**events**]: [ppt-2358] classhing-assets to follow bookings signature ([#369](https://github.com/PlaceOS/staff-api/pull/369))

## 2.2604.3

### Fixed

- Interfaces/Templates: Fix handling of all day bookings for the current date (ppt-2464)
- Libraries/Models [**user**]: [ppt-2459] disabling mass_assignment on internal fields ([#309](https://github.com/PlaceOS/placeos-models/pull/309))
- Services/RestAPI [**users**]: Disallow users to update email ([#431](https://github.com/PlaceOS/rest-api/pull/431))
- Services/StaffAPI [**bookings**]: [ppt-2457] checkout other users booking ([#367](https://github.com/PlaceOS/staff-api/pull/367))

### Added

- Interfaces/Backoffice: Add application picker to sidebar (ppt-2474)
- Interfaces/Templates [**bookings**]: Add setting to prevent booking when assigned (ppt-2469)
- Interfaces/Templates [**stagehand**]: Add dark mode support (ppt-2473)
- Interfaces/Templates [**app-loader**]: Add new app for listing available applications (ppt-2474)
- Libraries/Driver [**subscriptions**]: Add heartbeat and improve specs
- Libraries/Models [**signage**]: Add display monitoring features ([#308](https://github.com/PlaceOS/placeos-models/pull/308))
- Services/RestAPI [**signage**]: Add basic playback monitoring
- Services/RestAPI [**public_events**]: [ppt-2247] support public event sharing & registration ([#430](https://github.com/PlaceOS/rest-api/pull/430))

### Changed

- Interfaces/Templates [**assets**]: Cleanup handling of parking assets

## 2.2604.2

### Fixed

- Services/RestAPI [**uploads**]: Allow id to be base64 encoded

## 2.2604.1

### Fixed

- Interfaces/Backoffice [**drivers**]: Improve error handling for recompile and reload
- Interfaces/Backoffice: Trim whitespace from item searching
- Services/Core [**driver_integrity**]: Add disable flag and logging
- Services/Core [**process_manager/common**]: don't signal kill for pid -1
- Services/Core [**driver_integrity**]: Disable by default
- Services/RestAPI [**zones**]: Handle case where no zone has a tag

### Added

- Interfaces/Backoffice [**admin**]: Add ability to test plugins
- Interfaces/Templates [**signage-manager**]: Add ability to add plugins as media items
- Interfaces/Templates [**signage**]: Update player to handle plugins
- Interfaces/Templates [**concierge**]: Add features column to room listing (ppt-2440)
- Interfaces/Templates [**concierge**]: Add new site attendance report (ppt-2451)
- Interfaces/Templates [**concierge**]: Add ability to view room history from management view (ppt-2227)
- Services/Core [**driver_integrity**]: Optimise sql query
- Services/RestAPI [**zones**]: [ppt-2429] add tree view api with parent filtering and children counts ([#429](https://github.com/PlaceOS/rest-api/pull/429))
- Services/RestAPI [**websocket/session**]: Include user_id in exec logs

## 2.2603.2

### Fixed

- Interfaces/Backoffice [**drivers**]: Show error on form when commit details fail to load (ppt-2421)
- Interfaces/Templates [**events**]: Fix editing start time of room bookings in some cases (ppt-2382)
- Interfaces/Templates [**explore**]: Tweak handling of status signals for desk tooltips (proj-1665)
- Interfaces/Templates [**workplace**]: Add setting to hide nearby desk option on meeting success view (proj-1697)
- Interfaces/Templates [**catering**]: Fix removing orders with no items (ppt-2398)
- Interfaces/Templates [**workplace**]: Fix selecting desk from favourites to book (ppt-2403)
- Interfaces/Templates [**concierge**]: Update desk bookings when building changes (ppt-2411)
- Interfaces/Templates [**concierge**]: Update booking details on day view when no level is selected (ppt-2409)
- Interfaces/Templates [**form-fields**]: Grab extra user details when selected from search (ppt-2425)
- Interfaces/Templates [**catering**]: Fix calculating delivery time (ppt-2424)
- Interfaces/Templates [**concierge**]: Fix ending bookings for assigned resources (ppt-2427)
- Services/Init [**task**]: Use old_place_server_secret for secret rotate task ([#102](https://github.com/PlaceOS/init/pull/102))
- Services/Init_pg16 [**task**]: Use old_place_server_secret for secret rotate task ([#102](https://github.com/PlaceOS/init_pg16/pull/102))
- Services/RestAPI: Module connected state ([#428](https://github.com/PlaceOS/rest-api/pull/428))
- Services/Triggers: Ensure state is in sync on load

### Added

- Interfaces/Backoffice [**admin**]: Add signage plugins section (ppt-2433)
- Interfaces/Templates [**concierge**]: Add tooltip to show extra visitor details (ppt-2389)
- Interfaces/Templates [**explore**]: Update desk info tooltip to show time of next booking (ppt-2384)
- Interfaces/Templates [**concierge**]: Add ability to send ad-hoc emails to users (ppt-2400)
- Interfaces/Templates [**workplace**]: Add setting for desks and room bookings to restrict booking hours (ppt-2415)
- Interfaces/Templates [**events**]: Add check for clashing recurring events (ppt-2366)
- Interfaces/Templates: Add check to room booking for calendar access when booking for another (ppt-2420)
- Libraries/Models: Add stagehand fields [ppt-2370] ([#306](https://github.com/PlaceOS/placeos-models/pull/306))
- Libraries/Models: Add signage plugins ([#307](https://github.com/PlaceOS/placeos-models/pull/307))
- Libraries/Models: Remove deprecated camera_snapshot_url field
- Services/FrontendLoader: [ppt-2388] add cron task to prune strayed clone folders ([#94](https://github.com/PlaceOS/frontend-loader/pull/94))
- Services/Init: Migrate to a scratch image ([#101](https://github.com/PlaceOS/init/pull/101))
- Services/StaffAPI [**bookings**]: [ppt-2346] include_deleted flag ([#362](https://github.com/PlaceOS/staff-api/pull/362))
- Services/StaffAPI [**guests**]: Add catering routes
- Services/StaffAPI: [ppt-2358] add clashing-assets + cleanup spec errors/warnings ([#363](https://github.com/PlaceOS/staff-api/pull/363))
- Services/StaffAPI: [ppt-2420] added check calendar permission endpoint ([#365](https://github.com/PlaceOS/staff-api/pull/365))
- Services/StaffAPI [**bookings**]: [ppt-2375] notify of changes after edit ([#364](https://github.com/PlaceOS/staff-api/pull/364))

### Changed

- Services/FrontendLoader: [ppt-2388] remove stale temp folder(s) on startup ([#93](https://github.com/PlaceOS/frontend-loader/pull/93))

## 2.2602.5

### Added

- Services/Source: Improve memory usage ([#63](https://github.com/PlaceOS/source/pull/63))

### Fixed

- Interfaces/Templates [**bookings**]: Add all day option to visitor booking (ppt-2376)
- Interfaces/Templates [**concierge**]: Fix printing desk qr codes (ppt-2373)

## 2.2602.4

- Libraries/Redis: added Redis IO hang detection

## 2.2602.3

### Fixed

- Libraries/Driver [**ssh**]: Reconnect on failed transport writes
- Libraries/Driver [**subscriptions**]: Redis reconnect logic could drop subscriptions ([#170](https://github.com/PlaceOS/placeos-driver/pull/170))
- Libraries/Models: [ppt-2355] fix signage user deletion ([#304](https://github.com/PlaceOS/placeos-models/pull/304))
- Libraries/Models [**bookings**]: [ppt-2366] exclude deleted recurring instances from expand_bookings when include_deleted is false ([#305](https://github.com/PlaceOS/placeos-models/pull/305))
- Services/StaffAPI [**bookings**]: [ppt-2366] pass deleted_flag to expand_bookings to filter deleted recurring instances ([#361](https://github.com/PlaceOS/staff-api/pull/361))

### Added

- Services/Core: Improve exec flows ([#288](https://github.com/PlaceOS/core/pull/288))
- Services/RestAPI: [ppt-2341] add bulk retrieval endpoint to metadata controller ([#427](https://github.com/PlaceOS/rest-api/pull/427))

## 2.2601.2

### Fixed

- Libraries/Driver: regression listing module state

## 2.2601.1

### Fixed

- Interfaces/Backoffice [**systems**]: Refresh execute module when state changes
- Interfaces/Backoffice: Fix styles for api key form modal
- Interfaces/Templates [**signage**]: Remove building requirement for bootstrap
- Libraries/Driver [**subscriptions**]: Synchronize changes
- Services/Init_pg15 [**entities**]: Fix + upgrade to pg-orm v2 ([#98](https://github.com/PlaceOS/init_pg15/pull/98))
- Services/Init_pg16 [**entities**]: Fix + upgrade to pg-orm v2 ([#98](https://github.com/PlaceOS/init_pg16/pull/98))
- Services/RestAPI [**metadata**]: Guest jwt access more flexible
- Services/StaffAPI [**bookings**]: [ppt-2337] update all_day booking field ([#360](https://github.com/PlaceOS/staff-api/pull/360))
- Services/StaffAPI [**calendars**]: Use default view interval
- Services/Triggers [**state**]: Trigger name for email subject

### Added

- Interfaces/Templates [**concierge**]: Add ability to delete recurring desk bookings (ppt-2351)
- Libraries/Driver: Improve socket liveliness checks
- Libraries/Models: [ppt-2215] add launch_on_execute attribute to module ([#303](https://github.com/PlaceOS/placeos-models/pull/303))
- Services/Auth [**Dockerfile**]: Remove curl and wget from image
- Services/Core: [ppt-2215] add support for launch on execute drivers ([#287](https://github.com/PlaceOS/core/pull/287))
- Services/Edge: [ppt-2215] add support for launch on execute drivers ([#287](https://github.com/PlaceOS/edge/pull/287))
- Services/Init_pg15 [**dockerfile**]: Use latest alpine packages ([#99](https://github.com/PlaceOS/init_pg15/pull/99))
- Services/Init_pg16 [**dockerfile**]: Use latest alpine packages ([#99](https://github.com/PlaceOS/init_pg16/pull/99))

### Changed

- Services/Triggers [**loki_search_errors**]: [ppt-2344] extract timestamp from entry object instead of stream labels ([#52](https://github.com/PlaceOS/triggers/pull/52))

## 2.2512.1

### Fixed

- Services/RestAPI [**modules**]: [ppt-2332] fix logql search query ([#424](https://github.com/PlaceOS/rest-api/pull/424))
- Services/RestAPI [**drivers**]: Readme endpoint ([#425](https://github.com/PlaceOS/rest-api/pull/425))

### Added

- Interfaces/Templates [**workplace**]: Update explore search to sort relative to user's location (ppt-2304)
- Interfaces/Templates [**bookings**]: Add check and flow for recurrence clashes (ppt-2241)
- Interfaces/Templates: Migrate bookable resources to use the assets api (ppt-2176)
- Interfaces/Templates [**explore**]: Add all day option to explore space bookings (ppt-2334)
- Libraries/Models [**history**]: [ppt-2227] add history ([#301](https://github.com/PlaceOS/placeos-models/pull/301))
- Services/RestAPI [**uploads**]: [ppt-2302] add storage_id parameter to index endpoint for listing uploads from specific storages ([#423](https://github.com/PlaceOS/rest-api/pull/423))
- Services/RestAPI: Add signage media thumbnail shortcut
- Services/RestAPI: [ppt-11] add edge monitoring endpoints ([#417](https://github.com/PlaceOS/rest-api/pull/417))
- Services/RestAPI: [ppt-2270] 1-click setup for outlook plugin ([#420](https://github.com/PlaceOS/rest-api/pull/420))
- Services/StaffAPI [**events**]: [ppt-2227] record event history ([#358](https://github.com/PlaceOS/staff-api/pull/358))
- Services/StaffAPI [**placeos**]: Add place_host_header ([#357](https://github.com/PlaceOS/staff-api/pull/357))

### Changed

- Libraries/Models: [ppt-2299] add bookings query indexes ([#302](https://github.com/PlaceOS/placeos-models/pull/302))
- Services/FrontendLoader [**loader**]: [ppt-2328] root_path attribute to retrive folder contents ([#92](https://github.com/PlaceOS/frontend-loader/pull/92))
- Services/Triggers: [ppt-2325] optimize loki search trigger ([#51](https://github.com/PlaceOS/triggers/pull/51))

## 2.2511.3

### Fixed


- Services/FrontendLoader [**loader**]: [ppt-2301] continous loading failed repo ([#91](https://github.com/PlaceOS/frontend-loader/pull/91))
- Services/RestAPI [**signage/playlist_media**]: Support deleting azure uploads
- Services/StaffAPI [**event**]: [ppt-2294] populate attendee name from guest data ([#356](https://github.com/PlaceOS/staff-api/pull/356))

### Added

- Interfaces/Templates [**stagehand**]: Hook up camera links to remote support (ppt-2228)
- Services/RestAPI: [ppt-2295] zone queries to support multiple parent_ids  ([#422](https://github.com/PlaceOS/rest-api/pull/422))

### Changed

- Services/Source: [ppt-2296] source should sync state when new brokers are added ([#62](https://github.com/PlaceOS/source/pull/62))

## 2.2511.2

### Added

- Libraries/Models [**control_system**]: Add additional fields ([#300](https://github.com/PlaceOS/placeos-models/pull/300))
- Services/RestAPI: Add support for ms token exchange
- Services/StaffAPI [**bookings**]: [ppt-2241] add clashing-assets endpoint ([#354](https://github.com/PlaceOS/staff-api/pull/354))

### Fixed

- Interfaces/Templates [**explore**]: Show free state on space info tooltip (ppt-2286)
- Interfaces/Templates [**booking-panel**]: Fix showing the qr code (ppt-2290)
- Interfaces/Templates [**concierge**]: Fix saving visitor pass numbers (ppt-2291)

### Changed

- Services/RestAPI: [ppt-2293] allow support users to start/stop modules ([#421](https://github.com/PlaceOS/rest-api/pull/421))

## 2.2511.1

### Added

- Libraries/Models [**booking**]: [ppt-2241] add ignore_assets parameter to clash checking ([#299](https://github.com/PlaceOS/placeos-models/pull/299))
- Services/Auth: Add openid connect OIDC [ppt-2258] ([#117](https://github.com/PlaceOS/auth/pull/117))
- Services/Nginx [**nginx.conf.template**]: Add .well-known support
- Services/Source: Add day of week, time of day, week_of_year, month_of_year and year fields to points [ppt-2279] ([#60](https://github.com/PlaceOS/source/pull/60))

### Changed

- Services/RestAPI [**Dockerfile**]: [ppt-2278] set permissions on /tmp ([#419](https://github.com/PlaceOS/rest-api/pull/419))

## 2.2510.3

### Fixed

- Services/Source: status publishing

## 2.2510.2

### Fixed

- Interfaces/Backoffice: Fix drag and drop upload

### Added

- All services: support for TLS redis connectionsv

## 2.2510.1

### Fixed

- Interfaces/Backoffice [**admin**]: Fix user select for api keys (ppt-2235)
- Interfaces/Backoffice [**zones**]: Fix child zone links (ppt-2234)
- Interfaces/Templates [**bookings**]: Fix reading the show_filters state (ppt-2249)
- Interfaces/Templates [**bookings**]: Fix reading the show_filters state (ppt-2249)
- Interfaces/Templates [**booking-panel**]: Update time to be a signal (ppt-2262)
- Interfaces/Templates: Update event and booking details modals to use signals(ppt-2264)
- Interfaces/Templates [**concierge**]: Add logic to handle group desk bookings (ppt-2264)
- Services/FrontendLoader [**loader**]: Treat root_folder props set to blank as nil ([#89](https://github.com/PlaceOS/frontend-loader/pull/89))

### Added

- Interfaces/Templates [**stagehand**]: Add setting to change display of event column (ppt-2236)
- Interfaces/Templates [**workplace**]: Add ability for user to set their plate number (ppt-2238)
- Services/RestAPI [**drivers**]: [ppt-2232] add endpoint to fetch driver readme files ([#416](https://github.com/PlaceOS/rest-api/pull/416))
- Services/SearchIngest: [ppt-2260] add support for es client authentication ([#86](https://github.com/PlaceOS/search-ingest/pull/86))
- Services/Source: [ppt-2230] added influx health check ([#58](https://github.com/PlaceOS/source/pull/58))
- Services/StaffAPI [**events**]: [ppt-2216] add approve_all endpoint for bulk event approvals ([#353](https://github.com/PlaceOS/staff-api/pull/353))
- Services/Triggers: Improve health check

### Changed

- Services/Core [**driver_store**]: Add checks to ensure validity of existing + d… ([#283](https://github.com/PlaceOS/core/pull/283))
- Services/Edge [**driver_store**]: Add checks to ensure validity of existing + d… ([#283](https://github.com/PlaceOS/edge/pull/283))
- Services/Source:  root get endpoint to return services status + error details ([#59](https://github.com/PlaceOS/source/pull/59))

## 2.2509.2

### Fixed

- Services/Core [**constants**]: IPv6 host support

### Changed

- Libraries/Models [**asset_category**]: Mark hidden field to be es indexable ([#298](https://github.com/PlaceOS/placeos-models/pull/298))

### Added

- Services/RestAPI: [ppt-2176] updated index endpoint to filter results by hidden flag ([#415](https://github.com/PlaceOS/rest-api/pull/415))

## 2.2509.1

### Fixed

- Interfaces/Templates [**spaces**]: Fix filtering spaces by favourites (ppt-2183)
- Interfaces/Templates [**catering**]: Fix toggle for favouriting items (ppt-2182)
- Interfaces/Templates [**booking-panel**]: Display any booking modal errors (cdu-133)
- Interfaces/Templates: Fix recurrence when period is restricted (ppt-1993)
- Interfaces/Templates [**concierge**]: Fix saving room availability for catering and assets (ppt-2202)
- Interfaces/Templates [**explore**]: Fix displaying images on space tooltips (ppt-2207)
- Interfaces/Templates [**events**]: Fix displaying attendees for group events (ppt-2209)
- Interfaces/Templates [**bookings**]: Fix desk status tooltip on select map (ppt-2213)

### Added

- Interfaces/Templates [**workplace**]: Add ability to return to today on schedule view (ppt-2190)
- Interfaces/Templates [**concierge**]: Add extra fields to points of interest (ppt-2175)
- Interfaces/Templates [**explore**]: Add ability to view poi details from map (ppt-2175)
- Interfaces/Templates [**concierge**]: Add setting to allow hiding parking "add reservation" button (ppt-2192)
- Interfaces/Templates [**concierge**]: Add simple stat display to parking bookings (ppt-2194)
- Interfaces/Templates [**concierge**]: Add map view to parking booking listing (ppt-2193)
- Interfaces/Templates [**concierge**]: Add permission modal to signage media upload (ppt-2197)
- Interfaces/Templates: Add display for booking/event creator when different from host (ppt-2200)
- Interfaces/Templates [**concierge**]: Add booked by column to desk bookings table (ppt-2201)
- Interfaces/Templates [**concierge**]: Add ability to disable parking management from bookings (ppt-2203)
- Interfaces/Templates: Add ability to set visibility value on room bookings (ppt-2165, ppt-2164)
- Interfaces/Templates [**concierge**]: Add ability to set user label size (ppt-2204)
- Interfaces/Templates [**concierge**]: Add buttons to scroll to sections in workplace/concierge settings modal (ppt-2208)
- Interfaces/Templates [**workplace**]: Add ability to quick book desks from landing view (ppt-2212)
- Interfaces/Templates [**concierge**]: Show level, building and recurring state on approval display (ppt-2224)
- Libraries/Models: [ppt-2172] added root_path to repo model ([#293](https://github.com/PlaceOS/placeos-models/pull/293))
- Libraries/Models [**outlook-manifest**]: [ppt-2078] remove default microsoft login domain from app domains ([#294](https://github.com/PlaceOS/placeos-models/pull/294))
- Libraries/Models: [ppt-2077] added alert & dashboard models ([#296](https://github.com/PlaceOS/placeos-models/pull/296))
- Libraries/Models: [ppt-2176] added schema and respective model attributes ([#295](https://github.com/PlaceOS/placeos-models/pull/295))
- Services/Core: [ppt-1758] added build service monitor functionality ([#282](https://github.com/PlaceOS/core/pull/282))
- Services/FrontendLoader: [ppt-2172] support retrieving root path folder ([#88](https://github.com/PlaceOS/frontend-loader/pull/88))
- Services/Init [**dockerfile**]: Use latest alpine packages ([#99](https://github.com/PlaceOS/init/pull/99))
- Services/RestAPI: [ppt-2172] add endpoint to retrieve repo folder tree ([#411](https://github.com/PlaceOS/rest-api/pull/411))
- Services/RestAPI [**uploads**]: Simple route to support base64 encoded api-keys
- Services/RestAPI: [ppt-1758] added build service monitor functionality ([#413](https://github.com/PlaceOS/rest-api/pull/413))
- Services/RestAPI: [ppt-2077] added alert & dashboard controllers ([#414](https://github.com/PlaceOS/rest-api/pull/414))
- Services/SearchIngest: [ppt-2077] added alert & dashboard models to config ([#85](https://github.com/PlaceOS/search-ingest/pull/85))
- Services/StaffAPI [**events**]: [ppt-2188] add #delete_attendee endpoint ([#351](https://github.com/PlaceOS/staff-api/pull/351))

### Changed

- Libraries/Models [**alert**]: Marked fields to be indexable in es ([#297](https://github.com/PlaceOS/placeos-models/pull/297))
- Libraries/Models [**booking_recurring_spec**]: [ppt-1993] added more tests to validate logic ([#292](https://github.com/PlaceOS/placeos-models/pull/292))

## 2.2508.4

### Fixed

- Clients/Typescript [**users**]: Add locatable field to user model
- Clients/Typescript [**signage**]: Add method to approve playlist revisions
- Clients/Typescript [**signage**]: Update playlist media model with approval details
- Interfaces/Backoffice [**admin**]: Update uploads list to handle large item count (ppt-2142)
- Interfaces/Backoffice [**domains**]: Fix delete button for authentication methods (ppt-2162)
- Interfaces/Templates [**signage**]: Add ability to add zones to displays
- Interfaces/Templates [**form-fields**]: Fix getting non-placeos user details for host calendars
- Interfaces/Templates [**concierge**]: Sort day view spaces by name (ppt-2135)
- Interfaces/Templates [**catering**]: Handle updating catering orders for standalone visitors (ppt-2140)
- Interfaces/Templates [**workplace**]: Fix code flow asking for camera on checkin requests (ppt-2137)
- Interfaces/Templates: Fix handling of invalid map files (ppt-2141)
- Interfaces/Templates [**concierge**]: Tweak filtering of parking bookings (ppt-2168)
- Interfaces/Templates [**form-fields**]: Fix selecting users from search field (ppt-2169)
- Interfaces/Templates [**concierge**]: Fix form state when creating a second parking booking (ppt-2170)
- Interfaces/Templates [**signage**]: Fix skipping items when playlist only has one item
- Interfaces/Templates [**signage**]: Check override playlists have valid items to play
- Libraries/Driver [**transport/ssh**]: Disconnect may not reconnect automatically
- Libraries/Driver [**transport/ssh**]: Don't require public key for ssh connections
- Libraries/Driver [**driver-specs/responder**]: Simplify parsing responses in specs
- Libraries/Models [**signage**]: Playlist filtering using orientation
- Services/RestAPI [**utilities/permissions**]: Should select highest permisson first
- Services/RestAPI [**asset_types**]: [ppt-1631] use single = in sql ([#408](https://github.com/PlaceOS/rest-api/pull/408))
- Services/StaffAPI [**bookings**]: [ppt-2118] add event_title to signals ([#349](https://github.com/PlaceOS/staff-api/pull/349))
- Services/StaffAPI [**events**]: [ppt-2114] fix nil assertion check ([#350](https://github.com/PlaceOS/staff-api/pull/350))

### Added

- Interfaces/Backoffice [**users**]: Add locatable field to user form
- Interfaces/Backoffice [**systems**]: Add ability to set playlists on system triggers
- Interfaces/Templates [**concierge**]: Add ability to set orientation of signage displays
- Interfaces/Templates [**concierge**]: Add deals and offers section and logic (ppt-2100)
- Interfaces/Templates: Add ability for user to opt-out of location tracking (ppt-2091)
- Interfaces/Templates [**signage**]: Add logic for metrics (ppt-2154)
- Interfaces/Templates [**concierge**]: Add support for scheduling to signage playlists
- Interfaces/Templates [**signage**]: Add logic for handling schedule override playlists (ppt-2146)
- Interfaces/Templates [**signage**]: Add ability for triggers to activate playlists (ppt-2153)
- Interfaces/Templates [**concierge**]: Add ability to approve playlist changes (ppt-2161)
- Interfaces/Templates [**signage**]: Add ability to display webpages (ppt-2173)
- Services/RestAPI [**signage/playlists**]: Add approvals ([#409](https://github.com/PlaceOS/rest-api/pull/409))
- Services/RestAPI [**uploads**]: Add simple download route

### Changed

- Services/RestAPI [**Cluster**]: Get endpoint to return load only when include_status is false ([#410](https://github.com/PlaceOS/rest-api/pull/410))
- Services/Source: App on startup to conditionally start mqtt publisher ([#57](https://github.com/PlaceOS/source/pull/57))
- Swagger/RestAPI: Update for placeos-2.2507.1
- Swagger/StaffAPI: Update for placeos-2.2507.1

## 2.2507.1

### Fixed

- Interfaces/Templates [**control**]: Limit controllable cameras to available ones
- Services/FrontendLoader: Use debian to build as musl libc doesn't work with nfs

### Added

- Interfaces/Backoffice [**admin**]: Add search to upload library
- Interfaces/Templates [**survey**]: Add app for performing surveys (ppt-2110)
- Interfaces/Templates: Add ability to set pass number for visitors (ppt-2113)
- Interfaces/Templates [**control**]: Add button to present active input to all (ppt-2121)
- Interfaces/Templates [**control**]: Add binding to hide master audio controls (ppt-2116)
- Interfaces/Templates [**control**]: Add topbar tooltip for lighting levels (ppt-2125)

## 2.2506.5

### Fixed

- Interfaces/Backoffice [**triggers**]: Fix cron hours when selecting in the afternoon (ppt-2111)
- Services/RestAPI [**utilities/current-user**]: When using an x-api-key
- Services/StaffAPI [**utilities/current-user**]: Current user with api-keys

## 2.2506.4

### Fixed

- Clients/Typescript [**auth**]: Change how logout is handled
- Services/RestAPI [**application**]: Logging backtraces in production

### Added

- Libraries/Models [**user**]: Add logged_out_at flag
- Services/Auth: Expire all sessions on explicit user log out
- Services/Auth [**sessions_controller**]: Revoke access token passed to logout
- Services/RestAPI [**utilities/current-user**]: Jwt invalidation
- Services/StaffAPI [**utilities/current-user**]: Jwt invalidation

## 2.2506.3

### Fixed

- Interfaces/Backoffice: Fix metadata history action (ppt-2102)
- Interfaces/Templates [**workplace**]: Fix booking favourited spaces (ppt-2092)
- Services/RestAPI [**shard.lock**]: Revert changes to azblob

## 2.2506.2

### Fixed

- Interfaces/Backoffice [**modules**]: Fix overflow on module state modal (ppt-2051)
- Interfaces/Templates [**concierge**]: Fix routing on assets manager views (ppt-2033)
- Interfaces/Templates [**catering**]: Fix filtering orders by location (ppt-1960)
- Interfaces/Templates [**form-fields**]: Finish options for monthly recurrence (ppt-1993)
- Interfaces/Templates [**concierge**]: Set user name when assigning parking spaces (ppt-2050)
- Interfaces/Templates [**visitor-kiosk**]: Fix taking user photos (ppt-2054)
- Interfaces/Templates [**concierge**]: Fix saving booking panel settings when non-existant (ppt-2056)
- Interfaces/Templates [**booking-panel**]: Fix booking from panel view (ppt-2063)
- Interfaces/Templates [**form-fields**]: Use placeos users for host select field (cdu-116)
- Interfaces/Templates [**bookings**]: Fix showing calendar links (ppt-2081)
- Libraries/Models [**booking.cr**]: Ppt-2007 properly handle overlapping bookings ([#286](https://github.com/PlaceOS/placeos-models/pull/286))
- Services/RestAPI [**systems**]: Prevent bypass of email downcase ([#402](https://github.com/PlaceOS/rest-api/pull/402))

### Added

- Interfaces/Backoffice [**domains**]: Add azure intergration button (ppt-2032)
- Interfaces/Backoffice [**zones**]: Add ability to filter zones by tag (ppt-2031)
- Interfaces/Backoffice [**admin**]: Add extra fields to edge listing display (ppt-2061)
- Interfaces/Backoffice: Add description displays to relevant about sections (ppt-2083)
- Interfaces/Templates [**workplace**]: Add icon for recurrence on details modals (ppt-2028)
- Interfaces/Templates [**visitor-kiosk**]: Add ability to set location for standalone visitors (ppt-2010)
- Interfaces/Templates [**concierge**]: Add ability to print guest passes from visitor list (ppt-2029)
- Interfaces/Templates [**concierge**]: Add ability to set approval flag for rooms (ppt-2005)
- Interfaces/Templates [**workplace**]: Indicate to user that room bookings require approval (ppt-2006)
- Interfaces/Templates [**concierge**]: Add ability to set default work hours for auto-release (ppt-2001)
- Interfaces/Templates [**redirect**]: Add simple app for redirecting users to set domains (ppt-2015)
- Interfaces/Templates [**control**]: Add ability to hide outputs when rooms are joined (ppt-2044)
- Interfaces/Templates [**control**]: Add ability to mute outputs (ppt-2043)
- Interfaces/Templates [**map-kiosk**]: Add view for only parking (ppt-2067)
- Interfaces/Templates [**explore**]: Add ability to search for desks (ppt-2090)
- Libraries/Models: User photo upload and locatable flag [ppt-2038] ([#287](https://github.com/PlaceOS/placeos-models/pull/287))
- Libraries/Models [**storage**]: Add default storage flag ([#288](https://github.com/PlaceOS/placeos-models/pull/288))
- Libraries/Models [**upload**]: Add cache helpers
- Services/Core: Ppt-2047,ppt-2048 driver integrity checker + refactoring driver_manager ([#281](https://github.com/PlaceOS/core/pull/281))
- Services/RestAPI: Ppt-2031 add endpoint to return unique zone tags ([#403](https://github.com/PlaceOS/rest-api/pull/403))
- Services/RestAPI: Add cluster rebalance and module node details ([#404](https://github.com/PlaceOS/rest-api/pull/404))
- Services/RestAPI: Ppt-2000 add azure 1-click integration ([#400](https://github.com/PlaceOS/rest-api/pull/400))
- Services/RestAPI [**uploads**]: Add a tagging support ([#405](https://github.com/PlaceOS/rest-api/pull/405))
- Services/RestAPI [**uploads**]: Add cache helpers ([#406](https://github.com/PlaceOS/rest-api/pull/406))
- Services/StaffAPI [**staff**]: Return cached photos for azure tenants ([#348](https://github.com/PlaceOS/staff-api/pull/348)) [ppt-2038]
- Services/StaffAPI [**bookings**]: [ppt-1942] add include_parents quary param ([#347](https://github.com/PlaceOS/staff-api/pull/347))

### Changed

- Interfaces/Templates [**catering**]: Clean up order select modal
- Services/Build_service: Ppt-2039 refactored to work with latest awscr shard version
- Swagger/RestAPI: Update for placeos-2.2504.2
- Swagger/StaffAPI: Update for placeos-2.2504.2

## 2.2504.2

### Fixed

- Clients/Crystal [**models/response**]: Fix for crystal 1.16+
- Interfaces/Templates [**workplace**]: Fix room booking link on mobile (proj-1304)
- Services/Init [**entities**]: Fix + upgrade to pg-orm v2 ([#98](https://github.com/PlaceOS/init/pull/98))

### Added

- Interfaces/Templates [**control**]: Add ability to mute mics on a room basis (ppt-2022)
- Libraries/Models [**control_system**]: [ppt-2004] add approval column ([#285](https://github.com/PlaceOS/placeos-models/pull/285))

## 2.2504.1

### Fixed

- Interfaces/Templates [**concierge**]: Fix toggling visitor remote status (proj-1253)
- Interfaces/Templates [**concierge**]: Tweak selecting timezones for room form (ppt-1941)
- Interfaces/Templates [**workplace**]: Fix opening edit locker view (ppt-1948)
- Interfaces/Templates [**spaces**]: Fix level filter for space selection (ppt-1949)
- Interfaces/Templates [**bookings**]: Fix colour of unavailable lockers (ppt-1946)
- Interfaces/Templates [**booking-panel**]: Add extra text when no qr code (ppt-1956)
- Interfaces/Templates [**concierge**]: Reload email template list after edit/remove (ppt-1964)
- Interfaces/Templates [**concierge**]: Fix paged responses for surveys (ppt-1966)
- Interfaces/Templates [**concierge**]: Fix moving email templates across buildings (ppt-1964)
- Interfaces/Templates [**workplace**]: Fix booking modal actions after data refreshes (ppt-1962)
- Interfaces/Templates [**explore**]: Use visible user locations first (ppt-1944)
- Interfaces/Templates [**workplace**]: Fix applying user's plate number when editing parking booking (ppt-1973)
- Interfaces/Templates [**workplace**]: Fix deleting booking series (ppt-1987)
- Interfaces/Templates [**catering**]: Tweak uploading charge code logic (ppt-1988)
- Interfaces/Templates [**bookings**]: Fix overflow for invite visitor success view (ppt-1996)

### Added

- Interfaces/Templates [**concierge**]: Add ability to email access qr codes to visitors (ppt-1935)
- Interfaces/Templates [**explore**]: Add setting to hide search items (ppt-1945)
- Interfaces/Templates [**concierge**]: Add ability to release all lockers (ppt-1886)
- Interfaces/Templates [**bookings**]: Hide fav toggle when viewing select map view (ppt-1978)
- Interfaces/Templates: Add ability to change user's current work location from main control tooltip (ppt-1937)
- Interfaces/Templates [**concierge**]: Add ability to delete user's desk bookings (ppt-1982)
- Interfaces/Templates [**control**]: Clear dial number after joining call (ppt-1983)
- Interfaces/Templates [**visitor-kiosk**]: Add ability to take user photos for pass labels (ppt-1981)
- Interfaces/Templates [**concierge**]: Add extra options to auto-release (ppt-2001)
- Libraries/Driver: Reduce spawn usage ([#169](https://github.com/PlaceOS/placeos-driver/pull/169))
- Services/Init [**postgres**]: Postgres 17 client ([#97](https://github.com/PlaceOS/init/pull/97))
- Services/RestAPI [**systems**]: Start and stop local modules [ppt-1872] ([#399](https://github.com/PlaceOS/rest-api/pull/399))
- Services/StaffAPI: Ppt-1994 added ms teams controller ([#345](https://github.com/PlaceOS/staff-api/pull/345))

### Changed

- Swagger/RestAPI: Update for placeos-2.2503.1
- Swagger/StaffAPI: Update for placeos-2.2503.1

## 2.2503.1

### Fixed

- Interfaces/Templates [**concierge**]: Fix desk booking list after deselecting all zones (ppt-1850)
- Interfaces/Templates [**map-kiosk**]: Fix accessibility options (proj-1137)
- Interfaces/Templates [**workplace**]: Handle invalid resource lists for room bookings (ppt-1854)
- Interfaces/Templates [**workplace**]: Fix confirm locker modal header (ppt-1874)
- Interfaces/Templates [**bookings**]: Show non-accessible lockers as unavailable when show accessible active (ppt-1875)
- Interfaces/Templates [**bookings**]: Fix resource locations when editing bookings (ppt-1876)
- Interfaces/Templates [**concierge**]: Use the assigned users plate number when creating booking (ppt-1879)
- Interfaces/Templates [**workplace**]: Fix translation key for event notes header (ppt-1880)
- Interfaces/Templates [**bookings**]: Return user to bank list when options change on locker select modal (ppt-1885)
- Interfaces/Templates [**concierge**]: Fix removing locker banks (ppt-1889)
- Interfaces/Templates [**catering**]: Fix type in translation key (ppt-1884)
- Interfaces/Templates [**bookings**]: Fix time options for parking select (ppt-1899, ppt-1898)
- Interfaces/Templates [**bookings**]: Add ability to select parking from map (ppt-1897, ppt-1896)
- Interfaces/Templates [**bookings**]: Fix parking all day fields form sync (ppt-1899)
- Interfaces/Templates [**concierge**]: Fix booking rooms (ppt-1907)
- Interfaces/Templates [**concierge**]: Clear query zones for reports when none selected (ppt-1827)
- Interfaces/Templates [**concierge**]: Only show control panel option when a url is available (ppt-1923)
- Interfaces/Templates [**bookings**]: Fix level list when selecting parking spaces (ppt-1928)
- Interfaces/Templates [**concierge**]: Fix changing users on parking user modal (ppt-1926)
- Libraries/Driver [**protocol/management**]: Ensure driver load success ([#168](https://github.com/PlaceOS/placeos-driver/pull/168))
- Libraries/Models [**settings**]: Validate yaml to json conversion [ppt-1873] ([#282](https://github.com/PlaceOS/placeos-models/pull/282))
- Services/FrontendLoader: File copy issue with some volumes ([#87](https://github.com/PlaceOS/frontend-loader/pull/87))
- Services/StaffAPI [**events**]: Missing ext_data ([#343](https://github.com/PlaceOS/staff-api/pull/343))

### Added

- Interfaces/Backoffice [**metadata**]: Add ability to view metadata history (ppt-1906)
- Interfaces/Templates [**concierge**]: Add charts to space/rooms report (ppt-1827)
- Interfaces/Templates [**users**]: Show username if different from email (ppt-1878)
- Interfaces/Templates: Add settings to control locker time fields (ppt-1887)
- Libraries/Models [**bookings**]: [ppt-1846] add all_day bool flag ([#283](https://github.com/PlaceOS/placeos-models/pull/283))
- Libraries/Models [**bookings**]: [ppt-1781] ignore clash check forvisitor booking ([#284](https://github.com/PlaceOS/placeos-models/pull/284))
- Services/StaffAPI [**events**]: #get_metadata ([#341](https://github.com/PlaceOS/staff-api/pull/341))
- Services/StaffAPI [**bookings**]: [ppt-1781] ignore clash check for visitor booking ([#342](https://github.com/PlaceOS/staff-api/pull/342))
- Services/StaffAPI [**bookings**]: Add method for patching extension data ([#344](https://github.com/PlaceOS/staff-api/pull/344))

## 2.2502.2

### Fixed

- Interfaces/Backoffice [**triggers**]: Fix editing of cron time conditions (ppt-1792)
- Interfaces/Backoffice [**systems**]: Fix add trigger search
- Interfaces/Templates: Fix table filtering with non-string values (ppt-1811)
- Interfaces/Templates [**workplace**]: Hide colleague button when setting enabled
- Interfaces/Templates [**visitor-kiosk**]: Fix flow redirections after registration (ppt-1812)
- Interfaces/Templates [**workplace**]: Fix removing favourites (ppt-1814)
- Interfaces/Templates [**workplace**]: Ignore errors when loading colleague data (ppt-1817)
- Interfaces/Templates [**explore**]: Fix pinning points of interest (ppt-1820)
- Libraries/Driver [**interface/lockers**]: Add a allocation id
- Services/RestAPI [**asset_types**]: Ppt-1803 index endpoint when no matching entries found ([#398](https://github.com/PlaceOS/rest-api/pull/398))
- Services/StaffAPI [**bookings**]: [ppt-1835] booked desks showing up as available ([#340](https://github.com/PlaceOS/staff-api/pull/340))

### Added

- Interfaces/Templates [**visitor-kiosk**]: Add ability to select language on visitor kiosk (ppt-1897)
- Interfaces/Templates [**visitor-kiosk**]: Add ability for visitors to checkout (ppt-1808)

## 2.2501.2

### Fixed

- Interfaces/Backoffice: Fix uploading bulk items with csv (ppt-1783)
- Interfaces/Backoffice [**systems**]: Fix trigger links (ppt-1793)
- Interfaces/Templates [**concierge**]: Fix keeping desks assigned to user on edit (ppt-1794)
- Interfaces/Templates [**concierge**]: Handle errors when saving desk details (ppt-1805)

### Added

- Interfaces/Backoffice [**triggers**]: Add ability to input cron string for time conditions (ppt-1792)
- Interfaces/Templates [**concierge**]: Add security field to desk model (ppt-1784)
- Interfaces/Templates [**workplace**]: Add ability to show calendar links for visitor invites (ppt-1798)
- Interfaces/Templates [**bookings**]: Add ability to hide booking checkin option (ppt-1796)
- Interfaces/Templates [**visitor-kiosk**]: Add success header for self-registered visitors (ppt-1797)
- Interfaces/Templates [**concierge**]: Add ability to set which visitor listing columns show (ppt-1799)
- Libraries/Models [**tenant**]: Delegate tenant configuration ([#280](https://github.com/PlaceOS/placeos-models/pull/280))
- Services/StaffAPI [**utilities/multi_tenant**]: Add parent tenant support

### Changed

- Interfaces/Templates [**conicerge**]: Cleanup room approval component

## 2.2501.1

### Fixed

- Services/StaffAPI [**bookings**]: Add `bookings.` to checked_out in sql ([#339](https://github.com/PlaceOS/staff-api/pull/339))

## 2.2501.0

### Added

- Interfaces/Backoffice [**admin**]: Add section for managing build jobs (ppt-1758)
- Interfaces/Templates [**concierge**]: Add report for lockers (ppt-1730)
- Interfaces/Templates [**concierge**]: Add ability to assign desks to users (ppt-1775)
- Libraries/Models: Ppt-54 add full text search capabilities to guest model ([#278](https://github.com/PlaceOS/placeos-models/pull/278))
- Services/StaffAPI: Ppt-54 updated guests endpoint to use full text search capabilities ([#338](https://github.com/PlaceOS/staff-api/pull/338))
- Services/StaffAPI [**bookings**]: [ppt-1430] signal on induction accepted/declined ([#337](https://github.com/PlaceOS/staff-api/pull/337))

### Fixed

- Interfaces/Templates [**visitor-kiosk**]: Fix visitor label printing (ppt-1744)
- Interfaces/Templates [**concierge**]: Update desk booking local state on changes (ppt-1779)
- Libraries/Models [**bookings**]: Prefix checked_in with bookings in sql ([#279](https://github.com/PlaceOS/placeos-models/pull/279))
- Services/Core [**driver_manager**]: Fix reload_driver to return proper status code ([#278](https://github.com/PlaceOS/core/pull/278))
- Services/RestAPI [**asset_types**]: Refactor endpoint to respect zone_id param ([#397](https://github.com/PlaceOS/rest-api/pull/397))
- Services/RestAPI [**webhook**]: Don't include spaces in user_id
- Services/StaffAPI [**events**]: [ppt-1473] return most detailed metadata ([#336](https://github.com/PlaceOS/staff-api/pull/336))

### Changed

- Services/Build: Minor refactor to client.compile

## 2.2412.2

### Fixed

- Clients/Typescript [**drivers**]: Add endpoint for reloading compiled driver
- Services/StaffAPI [**events**]: [ppt-1473] prefer metadata with ext_data over metadata without ([#335](https://github.com/PlaceOS/staff-api/pull/335))
- Services/StaffAPI [**availability**]: Ppt-1629 return 404 when tenant not found ([#334](https://github.com/PlaceOS/staff-api/pull/334))

### Added

- Interfaces/Backoffice [**drivers**]: Add recompile and reload buttons (ppt-1732)
- Interfaces/Templates [**visitor-kiosk**]: Add translation hooks for text in visitor kiosk (ppt-1720)
- Services/RestAPI: Ppt-1733 add reload driver endpoint ([#396](https://github.com/PlaceOS/rest-api/pull/396))

## 2.2412.1

### Fixed

- Clients/Crystal [**auth**]: Auth_api_root path ([#35](https://github.com/PlaceOS/crystal/pull/35))
- Interfaces/Backoffice: Update frontend search filters to use notes/description (ppt-1650)
- Interfaces/Templates [**explore**]: Check desk rules before finalising booking (ppt-1687)
- Interfaces/Templates [**visitor-kiosk**]: Prevent user re-checking in an finish booking (ppt-1686)
- Interfaces/Templates [**concierge**]: Remove bookings when deleting parking space (ppt-1690)
- Interfaces/Templates [**workplace**]: Prevent booking closed favourite spaces (ppt-1716)
- Services/Core [**Dockerfile**]: Ensure tmp folder has the correct permissions ([#274](https://github.com/PlaceOS/core/pull/274))
- Services/Core [**module_manager**]: Ppt-1636 refactor to use empty settings when merge settin… ([#275](https://github.com/PlaceOS/core/pull/275))
- Services/FrontendLoader [**Dockerfile**]: Allow random user ids in production ([#86](https://github.com/PlaceOS/frontend-loader/pull/86))
- Services/Init [**authority**]: Use provided name to create authority, provide correc… ([#95](https://github.com/PlaceOS/init/pull/95))

### Added

- Interfaces/Backoffice [**systems**]: Add ability to add a system's module to another system (ppt-1674)
- Interfaces/Templates [**spaces**]: Add ability to set alerts on rooms (ppt-1645)
- Interfaces/Templates [**workplace**]: Add desks default duration setting (ppt-1683)
- Interfaces/Templates [**catering**]: Add ability to have multiple menus per building (ppt-1646)
- Interfaces/Templates [**concierge**]: Add parking report (ppt-1691)
- Interfaces/Templates [**concierge**]: Add form for modifying visitor kiosk settings (ppt-1694)
- Services/Core [**Dockerfile**]: Minimal core image
- Services/Core: Ppt-1701 added extra endpoints for recompile and reload ([#276](https://github.com/PlaceOS/core/pull/276))
- Services/Core: Ppt-1635 stale driver cleanup task ([#277](https://github.com/PlaceOS/core/pull/277))
- Services/RestAPI: Ppt-1701 refactored recompile/reload logic ([#395](https://github.com/PlaceOS/rest-api/pull/395))

### Changed

- Swagger/RestAPI: Update for placeos-2.2411.0
- Swagger/StaffAPI: Update for placeos-2.2411.0

## 2.2411.0

### Fixed

- Interfaces/Templates [**concierge**]: Handle case where first instance is cancelled when removing parking assignment (ppt-1523)
- Interfaces/Templates [**workplace**]: Set initial user for parking bookings (ppt-1520)
- Interfaces/Templates [**concierge**]: Add ability to set host for visitor invites (ppt-1532)
- Interfaces/Templates [**concierge**]: Fix removing parking users (ppt-1548)
- Interfaces/Templates [**concierge**]: Fix minor room report issues (ppt-1554)
- Interfaces/Templates [**concierge**]: Fix minor issues with desk reports (ppt-1554)
- Interfaces/Templates [**workplace**]: Ignore catering checks when no menu available (ppt-1555)
- Interfaces/Templates [**bookings**]: Fix check for user's availability (ppt-1557, ppt-1558)
- Interfaces/Templates [**events**]: Fix extending bookings over another booking (ppt-1559)
- Interfaces/Templates [**concierge**]: Fix setting visitors as remote (ppt-1556)
- Interfaces/Templates [**bookings**]: Fix adding and viewing booked assets (ppt-1568)
- Interfaces/Templates [**concierge**]: Fix zones when booking parking from map (ppt-1582)
- Interfaces/Templates [**explore**]: Fix parking statuses on maps (ppt-1590)
- Interfaces/Templates [**workplace**]: Re-enable ability to make non-all-day parking bookings (ppt-1595)
- Interfaces/Templates [**concierge**]: Fix search for pending approvals (ppt-1609)
- Interfaces/Templates [**concierge**]: Fix building timezone display on week view (ppt-1608)
- Interfaces/Templates [**concierge**]: Fix user shown when editing parking bookings (ppt-1606)
- Interfaces/Templates [**concierge**]: Update parking booking list after creation/edit (ppt-1605)
- Libraries/Models [**booking**]: Recurring booking clash check ([#276](https://github.com/PlaceOS/placeos-models/pull/276))

### Added

- Interfaces/Backoffice: Add ability to add resources from staff api (ppt-1536)
- Interfaces/Templates [**concierge**]: Add email templates section (ppt-1448)
- Interfaces/Templates [**concierge**]: Add logic to use email template tokens (ppt-1459)
- Interfaces/Templates [**form-fields**]: Add ability to attach files to input (ppt-1458)
- Interfaces/Templates [**concierge**]: Add reply-to and from addresses (ppt-1461)
- Interfaces/Templates [**concierge**]: Add ability to send test emails (ppt-1460)
- Interfaces/Templates [**explore**]: Add logic to show occupancy icons for rooms (ppt-1464)
- Interfaces/Templates [**concierge**]: Add ui and logic to set booking panel settings (ppt-1282)
- Interfaces/Templates [**visitor-kiosk**]: Add ability for visitors to self register (ppt-1530)
- Interfaces/Templates [**concierge**]: Add simple visitors report (ppt-1533)
- Interfaces/Templates: Add ability to view building timezones when booking (ppt-1560, ppt-1564)
- Interfaces/Templates [**concierge**]: Allow user to print all desk qr codes for a level (ppt-1572)
- Interfaces/Templates [**workplace**]: Add ability to book desk after booking a room (ppt-1573)
- Interfaces/Templates [**workplace**]: Add ability to show calendar options after booking parking (ppt-1586)
- Interfaces/Templates [**concierge**]: Add button to link room to av control panel (ppt-1597)
- Interfaces/Templates [**workplace**]: Add ability to book recurring desk bookings (ppt-1576)
- Interfaces/Templates [**workplace**]: Disallow daily recurrence for all day events (ppt-1596)
- Libraries/Driver [**MailerTemplates**]: New interface for mailer template fields ([#167](https://github.com/PlaceOS/placeos-driver/pull/167))
- Libraries/Driver [**logger**]: Default to json formatted logs on stdout
- Libraries/Models: Ppt-642 added place_id attribute in zone model ([#275](https://github.com/PlaceOS/placeos-models/pull/275))
- Libraries/Models: Ppt-1622 add auth tokens cleanup code ([#277](https://github.com/PlaceOS/placeos-models/pull/277))
- Services/Init: Ppt-1516 add support for azure blob storage to init ([#89](https://github.com/PlaceOS/init/pull/89))
- Services/Init: Ppt-1621 updated backup/restore tasks ([#91](https://github.com/PlaceOS/init/pull/91))
- Services/Init: Ppt-1623 cleanup task ([#92](https://github.com/PlaceOS/init/pull/92))
- Services/Init: Ppt-1623 cleanup task ([#93](https://github.com/PlaceOS/init/pull/93))
- Services/RestAPI: Ppt-1518 added uploads listing controller ([#391](https://github.com/PlaceOS/rest-api/pull/391))
- Services/RestAPI: Ppt-1470 add lookup by email endpoint in domains controller ([#388](https://github.com/PlaceOS/rest-api/pull/388))
- Services/RestAPI: Ppt-1517 add azure storage support ([#392](https://github.com/PlaceOS/rest-api/pull/392))
- Services/StaffAPI: Ppt-642 added place controller ([#333](https://github.com/PlaceOS/staff-api/pull/333))

## 2.2409.0

### Fixed

- Interfaces/Templates [**concierge**]: Add level selector to day view when use region set (ppt-1434)
- Interfaces/Templates [**concierge**]: Up limit for requested rooms (ppt-1441)
- Interfaces/Templates: Fix table filtering with invalid value (ppt-1450)
- Interfaces/Templates [**concierge**]: Fix room booking view scroll when font size not default (proj-854)
- Interfaces/Templates [**bookings**]: Display region instead of building for visitor invite when configured (proj-852)
- Interfaces/Templates [**events**]: Use room_booking_rules metadata (proj-804)
- Interfaces/Templates [**bookings**]: Fix visitor name display (ppt-1453)
- Interfaces/Templates [**bookings**]: Tweak building display on details modal (ppt-1454)
- Interfaces/Templates [**concierge**]: Split name and id columns on desk manage (ppt-1471)
- Interfaces/Templates [**concierge**]: Fix managing desk bookable status (ppt-1471)
- Interfaces/Templates [**explore**]: Fix parking info reserved status when space not assigned (ppt-1386)
- Interfaces/Templates [**concierge**]: Fix form checks for unedited fields on desk manage modal (ppt-1471)
- Interfaces/Templates [**concierge**]: Save support issue types to concierge metadata also (ppt-1485)
- Interfaces/Templates [**workplace**]: Handle removing booking instances (ppt-1480)
- Interfaces/Templates [**mapspeople**]: Tweak handling of building switching (ppt-1501)
- Interfaces/Templates [**mapspeople**]: Clear directions when changing focus item (ppt-1504)
- Interfaces/Templates [**concierge**]: Fix saving level id to parking assignment booking (ppt-1498)
- Interfaces/Templates [**bookings**]: Fix ending booking instances (ppt-1480)
- Interfaces/Templates [**explore**]: Fix selecting the same item twice from search (ppt-1504)
- Interfaces/Templates [**mapspeople**]: Store last position of the user (ppt-1504)
- Interfaces/Templates [**events**]: Fix applying space zones to asset bookings (ppt-1346)
- Interfaces/Templates [**concierge**]: Fix showing old data when switching zones on week view (ppt-1508)
- Interfaces/Templates [**concierge**]: Fix z-index of room approvals section (ppt-1514)
- Libraries/Models [**authority**]: Add migration script to set defaults ([#271](https://github.com/PlaceOS/placeos-models/pull/271))
- Services/Source: Ppt-1503 refactor event processing logic to avoid memory leak ([#55](https://github.com/PlaceOS/source/pull/55))

### Added

- Interfaces/Templates [**concierge**]: Add ability to reserve parking for visitors (ppt-1388)
- Interfaces/Templates [**concierge**]: Add ability to see parking space status on manage view (ppt-1379)
- Interfaces/Templates [**explore**]: Setup parking map booking checks and status displays (ppt-1387)
- Interfaces/Templates [**workplace**]: Update booking listings to show extra info for parking (ppt-1380)
- Interfaces/Templates [**concierge**]: Add extra parking map display info (ppt-1386)
- Interfaces/Templates: Update logic for group events to use calendar events (ppt-1424)
- Interfaces/Templates [**bookings**]: Use new booked endpoint for resource availability (ppt-1443)
- Interfaces/Templates [**concierge**]: Add ability to set notes on visitors (ppt-1472)
- Interfaces/Templates [**workplace**]: Rework work location ui (ppt-1482)
- Interfaces/Templates [**concierge**]: Add ability to set booking rules for parking (ppt-1500)
- Interfaces/Templates [**concierge**]: Add ability to restrict sections to certain groups (ppt-1500)
- Interfaces/Templates [**concierge**]: Add week view for calendar events (ppt-1508)
- Interfaces/Templates [**concierge**]: Add ability to search for calendar events (ppt-1509)
- Libraries/Models [**booking**]: [ppt-1405] update approved/rejected fields on child bookings ([#267](https://github.com/PlaceOS/placeos-models/pull/267))
- Libraries/Models: Ppt-1470 add email domain feature to authority model ([#269](https://github.com/PlaceOS/placeos-models/pull/269))
- Libraries/Models [**playlist/item**]: Add video length ([#270](https://github.com/PlaceOS/placeos-models/pull/270))
- Libraries/Models: Ppt-1475 mark trigger fields to ignore from es index ([#273](https://github.com/PlaceOS/placeos-models/pull/273))
- Libraries/Models [**user**]: [ppt-1484] format of work_preferences and work_overrides ([#274](https://github.com/PlaceOS/placeos-models/pull/274))
- Services/SearchIngest: Ppt-1476 add es_ignore attribute to avoid dynamic mapping ([#83](https://github.com/PlaceOS/search-ingest/pull/83))
- Services/StaffAPI [**tenants**]: Early_checkin endpoints ([#327](https://github.com/PlaceOS/staff-api/pull/327))
- Services/StaffAPI [**events**]: Debug log ([#329](https://github.com/PlaceOS/staff-api/pull/329))
- Services/StaffAPI [**bookings**]: Update_induction endpoint ([#331](https://github.com/PlaceOS/staff-api/pull/331))

### Changed

- Libraries/Models [**booking**]: Change induction to an enum ([#272](https://github.com/PlaceOS/placeos-models/pull/272))
- Services/FrontendLoader: Ppt-1456 remove raven dependency ([#85](https://github.com/PlaceOS/frontend-loader/pull/85))

## 2.2407.1

### Added

- Clients/Crystal [**zone**]: [ppt-1416] add timezone field to zone ([#34](https://github.com/PlaceOS/crystal/pull/34))
- Interfaces/Backoffice [**staff-api**]: Add early_checkin field to tenants (ppt-1442)
- Interfaces/Templates [**workplace**]: Add desk height options (ppt-1295, ppt-1298, ppt-1299, ppt-1300)
- Libraries/Models: Ppt-1413 add error flag to repository model ([#264](https://github.com/PlaceOS/placeos-models/pull/264))
- Libraries/Models [**bookings**]: Add recurring support to bookings ([#263](https://github.com/PlaceOS/placeos-models/pull/263))
- Libraries/Models: Ppt-1437 add early_check field to tenant model ([#265](https://github.com/PlaceOS/placeos-models/pull/265))
- Libraries/Models [**event_metadata**]: Add permission field ([#266](https://github.com/PlaceOS/placeos-models/pull/266))
- Services/FrontendLoader: Ppt-1413 add error handling + reporting. clean-up and linting c… ([#84](https://github.com/PlaceOS/frontend-loader/pull/84))
- Services/RestAPI: Ppt-1329: removed git related methods from rest-api ([#386](https://github.com/PlaceOS/rest-api/pull/386))
- Services/RestAPI: Ppt-1396 add search fields options to index endpoints ([#387](https://github.com/PlaceOS/rest-api/pull/387))
- Services/StaffAPI [**bookings**]: #index filter on permission field ([#320](https://github.com/PlaceOS/staff-api/pull/320))
- Services/StaffAPI [**events**]: Preference metadata and system selection ([#322](https://github.com/PlaceOS/staff-api/pull/322))
- Services/StaffAPI: Ppt-1326 add endpoint to provide a list of booking ids ([#323](https://github.com/PlaceOS/staff-api/pull/323))
- Services/StaffAPI: Ppt-1437 allow checkin by early_checkin value ([#325](https://github.com/PlaceOS/staff-api/pull/325))
- Services/StaffAPI [**bookings**]: Add recurring booking support [ppt-1382] ([#324](https://github.com/PlaceOS/staff-api/pull/324))
- Services/StaffAPI [**events**]: #add_attendee ([#326](https://github.com/PlaceOS/staff-api/pull/326))
- Services/Triggers: Make loki-search trigger loki presence dependent ([#48](https://github.com/PlaceOS/triggers/pull/48))

### Fixed

- Interfaces/Backoffice [**domains**]: Fix deleting of applications (ppt-1418)
- Interfaces/Templates [**events**]: Include booked event for room availability (ppt-1369)
- Interfaces/Templates [**concierge**]: Fix report charts on initial load (ppt-1410)
- Interfaces/Templates [**spaces**]: Hide space select filters when viewing using mapsindoors (ppt-1407)
- Interfaces/Templates: Update kiosk bootstrap pages to handle region listing of buildings (ppt-1428)
- Interfaces/Templates [**bookings**]: Remove value to ignore hiding set desk height when not checked in (ppt-1298)
- Interfaces/Templates [**org**]: Tweak initialisation of zone settings (ppt-1439)
- Interfaces/Templates [**concierge**]: Simplify getting ignore week days for reports (ppt-1440)
- Libraries/Models [**module**]: Make error indicator fields as read-only ([#262](https://github.com/PlaceOS/placeos-models/pull/262))
- Services/StaffAPI [**events**]: [ppt-1390] return 404 instead of 500 and improve logging ([#321](https://github.com/PlaceOS/staff-api/pull/321))

## 2.2405.1

### Fixed

- Interfaces/Templates [**bookings**]: Add fallback for zone requested for availability checks (ppt-1318)
- Interfaces/Templates [**explore**]: Simplify display of sensor info to allow more displayed on map (ppt-1317)
- Interfaces/Templates [**catering**]: Remove ability to edit existing orders when field disabled (ppt-1340)
- Interfaces/Templates [**concierge**]: Add print styling to reports sections (ppt-1344)
- Interfaces/Templates: Fix zoom controls for resource selection (ppt-1361)
- Interfaces/Templates [**maps-indoors**]: Fix map actions (ppt-1360)
- Interfaces/Templates [**explore**]: Ignore bookings status for non-bookable rooms (ppt-1364)
- Interfaces/Templates: Fix sizing of resource selection modals (ppt-1365)
- Interfaces/Templates [**map-kiosk**]: Allow search when using maps indoors (ppt-1352)
- Interfaces/Templates [**form-fields**]: Add check to file type when loading users from csv file (proj-768)
- Interfaces/Templates [**workplace**]: Add setting to force colleague search to only used authenticated user (ppt-1366)
- Interfaces/Templates [**form-fields**]: Clear input field after uploading image (ppt-1370)
- Interfaces/Templates [**maps-people**]: Fix setting level from zone (ppt-1376)
- Interfaces/Templates [**concierge**]: Tweak printing of reports (ppt-1344)
- Interfaces/Templates [**concierge**]: Filter space report resources based on zone (ppt-1372)
- Interfaces/Templates [**concierge**]: Fix adding new roles to emergency contacts (ppt-1389)
- Interfaces/Templates [**explore**]: Fix space bookings when using maps people (ppt-1394)
- Interfaces/Templates: Add ability to set custom emails on support request types (ppt-1342)
- Interfaces/Templates [**map-kiosk**]: Fix resetting view and home button (ppt-1393)
- Services/Core [**logging**]: Ppt-1368 - logging to use placeos-log-backend ([#271](https://github.com/PlaceOS/core/pull/271))
- Services/Core [**driver_manager**]: Should be truncating when recomp driver is retrieved ([#273](https://github.com/PlaceOS/core/pull/273))
- Services/RestAPI [**logging**]: Ppt-1368 - logging to use placeos-log-backend ([#381](https://github.com/PlaceOS/rest-api/pull/381))
- Services/RestAPI [**repositories**]: List the files on the correct branch ([#383](https://github.com/PlaceOS/rest-api/pull/383))
- Services/StaffAPI [**booking**]: [ppt-1205] update phone of existing guest when inviting visitor ([#317](https://github.com/PlaceOS/staff-api/pull/317))
- Services/StaffAPI [**bookings**]: User/zones query with booking_type=group-event ([#319](https://github.com/PlaceOS/staff-api/pull/319))

### Added

- Interfaces/Backoffice [**modules**]: Add ability to view runtime errors (ppt-1324)
- Interfaces/Templates [**concierge**]: Add event ui (ppt-1216)
- Interfaces/Templates [**workplace**]: Add events ui (ppt-1217)
- Interfaces/Templates [**workplace**]: Add integrations for group events (ppt-1220)
- Interfaces/Templates: Add issue type to support request form (ppt-1341)
- Interfaces/Templates [**concierge**]: Add ability to set support ticket types (ppt-1342)
- Interfaces/Templates [**concierge**]: Add option to select points of interest from a map (ppt-1343)
- Interfaces/Templates [**concierge**]: Add daily usage to spaces report (ppt-1355)
- Libraries/Models [**booking**]: #by_user_or_email include open and public permissions ([#261](https://github.com/PlaceOS/placeos-models/pull/261))
- Libraries/Models: Ppt-1321 update module model ([#260](https://github.com/PlaceOS/placeos-models/pull/260))
- Services/RestAPI: Ppt-1323 added endpoint for module error retrieval ([#382](https://github.com/PlaceOS/rest-api/pull/382))
- Services/StaffAPI [**bookings**]: [ppt-1215] allow users to add themselves as attendees to public events ([#316](https://github.com/PlaceOS/staff-api/pull/316))
- Services/StaffAPI [**bookings**]: #index returns private, open, and public group-event bookings for the booking creator ([#318](https://github.com/PlaceOS/staff-api/pull/318))
- Services/Triggers: Ppt-1322 trigger for periodic check of mods runtime error ([#47](https://github.com/PlaceOS/triggers/pull/47))

## 2.2404.2

### Fixed

- Services/RestAPI [**repositories**]: Obtaining driver list

## 2.2404.1

### Fixed

- Interfaces/Backoffice [**domains**]: Update logic for editing applications (ppt-1283)
- Interfaces/Backoffice [**drivers**]: Only update drivers when the new commit is different (ppt-1144)
- Interfaces/Templates [**explore**]: Fix rendering of zone sensor info (ppt-1229)
- Interfaces/Templates [**concierge**]: Update auto-release setting to save to the metadata for workplace app (ppt-1155)
- Interfaces/Templates [**concierge**]: Fix removing report data from days set as ignore (ppt-1056)
- Interfaces/Templates [**workplace**]: Fix check for auto-release (ppt-1155)
- Interfaces/Templates [**concierge**]: Handle numbers for ignore days for report gen (ppt-1232)
- Interfaces/Templates [**form-fields**]: Fix booking rules between dates end date edit (ppt-1234)
- Interfaces/Templates [**workplace**]: Ignore auto-release modal until within time range (ppt-1155)
- Interfaces/Templates [**workplace**]: Fix auto-release checkin modal (ppt-1155)
- Interfaces/Templates [**concierge**]: Fix saving building app settings (ppt-1240)
- Interfaces/Templates [**concierge**]: Fix using indexes for ignored days in reports (ppt-1232)
- Interfaces/Templates [**assets**]: Fix handling of clashes on edit (proj-658)
- Interfaces/Templates: Fix selecting levels on map view (ppt-1184)
- Interfaces/Templates [**concierge**]: Improve auto-release settings ux (ppt-1288)
- Interfaces/Templates [**concierge**]: Fix setting up regions with existing buildings (ppt-1289)
- Interfaces/Templates [**workplace**]: Prevent desk booking modal when panning map (ppt-1292)
- Interfaces/Templates [**concierge**]: Tweak form to correctly set event and booking related settings (ppt-1301)
- Interfaces/Templates [**map-kiosk**]: Fix styling (ppt-1239)
- Interfaces/Templates [**bookings**]: Increase page size for checking resoure availability (ppt-1318)
- Libraries/Models [**driver**]: Remove flag if commits match ([#257](https://github.com/PlaceOS/placeos-models/pull/257))
- Services/Core [**driver_manager**]: Interacting with private repo ([#267](https://github.com/PlaceOS/core/pull/267))

### Added

- Interfaces/Backoffice [**admin**]: Add banner and display for tenant secret expiry (ppt-1271)
- Interfaces/Templates [**workplace**]: Allow using regions for resource availability (ppt-1184)
- Interfaces/Templates [**explore**]: Add ability to deeplink locations (ppt-1273)
- Interfaces/Templates [**concierge**]: Add ability to manage points of interest (ppt-1238)
- Libraries/Driver: Migrate to redis clustering ([#166](https://github.com/PlaceOS/placeos-driver/pull/166))
- Libraries/LogBackend: `newreliclogbackend` ([#13](https://github.com/PlaceOS/placeos-log-backend/pull/13))
- Libraries/Models [**booking**]: [ppt-1213] add images ([#254](https://github.com/PlaceOS/placeos-models/pull/254))
- Libraries/Models: Add digital signage models ([#255](https://github.com/PlaceOS/placeos-models/pull/255)) [ppt-1040]
- Libraries/Models [**booking**]: [ppt-1215] add permission field ([#256](https://github.com/PlaceOS/placeos-models/pull/256))
- Libraries/Models [**shortener**]: Add url shortening model ([#258](https://github.com/PlaceOS/placeos-models/pull/258)) [ppt-1272]
- Libraries/Models [**booking**]: [ppt-1267] add induction field ([#259](https://github.com/PlaceOS/placeos-models/pull/259))
- Services/Core: Integrate build service ([#266](https://github.com/PlaceOS/core/pull/266))
- Services/Core: Migrate to redis for service discovery ([#268](https://github.com/PlaceOS/core/pull/268))
- Services/Nginx: Add a short uri redirect helper
- Services/RestAPI: Add signage api [ppt-1040] ([#377](https://github.com/PlaceOS/rest-api/pull/377))
- Services/RestAPI [**chat_gpt/plugin**]: Interaction api ([#378](https://github.com/PlaceOS/rest-api/pull/378))
- Services/RestAPI: Integrate build service ([#370](https://github.com/PlaceOS/rest-api/pull/370))
- Services/RestAPI [**short_url**]: Add api routes ([#379](https://github.com/PlaceOS/rest-api/pull/379)) [ppt-1237]
- Services/RestAPI: Migrate to using redis service manager ([#380](https://github.com/PlaceOS/rest-api/pull/380))
- Services/Triggers: Ppt-1224 add trigger to periodically check for secret expiry ([#45](https://github.com/PlaceOS/triggers/pull/45))
- Services/Triggers: Migrate to redis service manager ([#46](https://github.com/PlaceOS/triggers/pull/46))

## 2.2403.0

### Fixed

- Libraries/Models [**booking**]: Can't clash if deleted

### Added

- Libraries/Models: Ppt-1224 add secret_expiry attribute to tenant model ([#253](https://github.com/PlaceOS/placeos-models/pull/253))

## 2.2402.1

### Fixed

- Interfaces/Backoffice: Fix uploading form images with permissions (ppt-1207)
- Interfaces/Templates [**concierge**]: Fix showing future requests (ppt-1208)
- Interfaces/Templates [**assets**]: Prevent user selecting more assets than allowed (ppt-1209)
- Interfaces/Templates: Update uploads logic to more match backoffice (ppt-1207)
- Interfaces/Templates: Fix removal of image links (ppt-1207)
- Interfaces/Templates [**events**]: Prevent booking with external attendees without room (ppt-1141)
- Interfaces/Templates [**explore**]: Prevent viewing parking maps on map view (ppt-1222)
- Interfaces/Templates [**bookings**]: Fix availability of resource that have an assigned user (ppt-1223)
- Interfaces/Templates [**events**]: Fix ignoring assets for availability on edit (ppt-1227)
- Interfaces/Templates [**assets**]: Prevent overriding cached value when generating availability (ppt-1210)
- Libraries/Models [**survey**]: Make survey::invitation.list(sent: false) return unsent invites ([#251](https://github.com/PlaceOS/placeos-models/pull/251))
- Libraries/Models [**bookings**]: Details specs for desired behaviour [proj-636] ([#252](https://github.com/PlaceOS/placeos-models/pull/252))
- Services/StaffAPI [**bookings**]: Ensure serialisable transactions ([#314](https://github.com/PlaceOS/staff-api/pull/314))

### Changed

- Interfaces/Templates: Cleanup image list component
- Interfaces/Templates [**maps-people**]: Clean up naming of service and properties

### Added

- Services/StaffAPI [**events**]: Add a reason for cancellation ([#315](https://github.com/PlaceOS/staff-api/pull/315))

## 2.2402.0

### Added

- Clients/Crystal [**user**]: [ppt-1154] add work_preferences and work_overrides to user ([#32](https://github.com/PlaceOS/crystal/pull/32))
- Clients/Typescript [**user**]: Add worktime preferences to user
- Interfaces/Backoffice [**extensions**]: Add ability to resolve authenticated resources (ppt-1180, ppt-1181)
- Interfaces/Templates [**events**]: Add ability to use the building parent instead of the building (ppt-1184)
- Interfaces/Templates [**concierge**]: Add ability to set auto-release config
- Interfaces/Templates [**workplace**]: Add confirm modal for keeping bookings when wfh is set (ppt-1155)
- Libraries/Models [**wfh**]: [ppt-1148] add work_preferences to user model ([#243](https://github.com/PlaceOS/placeos-models/pull/243))
- Libraries/Models [**zone**]: [ppt-1154] add auto_release ([#247](https://github.com/PlaceOS/placeos-models/pull/247))
- Services/StaffAPI [**staff**]: Add pagination support getting staff [ppt-1170] ([#311](https://github.com/PlaceOS/staff-api/pull/311))

### Fixed

- Interfaces/Templates [**workplace**]: Fix to metadata for link created events (ppt-981)
- Interfaces/Templates [**events**]: Tweak edit availability checks for future times (ppt-1119)
- Interfaces/Templates [**visitor-kiosk**]: Allow customising the results text with a template (ppt-1138)
- Interfaces/Templates [**events**]: Update availability check at the end of the booking flow (ppt-1119)
- Interfaces/Templates [**assets**]: Fix keeping status when event changes (ppt-1143)
- Interfaces/Templates [**workplace**]: Hide calendar events when they have an associated booking (ppt-981)
- Interfaces/Templates [**events**]: Fix checking availability on edits (ppt-1119)
- Interfaces/Templates [**workplace**]: Notify user of errors when booking parking (ppt-1169)
- Interfaces/Templates: Allow using mapsindoors components in more locations (ppt-1161)
- Interfaces/Templates [**form-fields**]: Fix selecting user data from less strict input (ppt-1171)
- Interfaces/Templates [**assets**]: Tweak grab more items when requesting available assets (ppt-1159)
- Interfaces/Templates [**assets**]: Change asset listing for availability to grab based off group (ppt-1159)
- Interfaces/Templates: Add mapindoor usage to resource selection modals (ppt-1161)
- Interfaces/Templates [**events**]: Also use event status for evaluating overall status (ppt-1167)
- Interfaces/Templates [**catering**]: Fix catering item options creating unique order items (ppt-1179)
- Interfaces/Templates: Set location to building for mapindoors when booking resources (ppt-1161)
- Interfaces/Templates [**form-fields**]: Add work location for internal users on user list field (ppt-1150)
- Interfaces/Templates [**concierge**]: Fix background color for parking disabled overlay (ppt-1188)
- Interfaces/Templates [**assets**]: Fix asset counts when setting multiple requests (ppt-1187)
- Interfaces/Templates [**users**]: Force page to reload after saving (ppt-1183)
- Interfaces/Templates: Fix report downloaded data (ppt-1185)
- Interfaces/Templates [**assets**]: Prevent overlapping requests duplicating id use (ppt-1192)
- Interfaces/Templates [**workplace**]: Fix editing catering/assets in existing bookings (ppt-1196)
- Interfaces/Templates [**assets**]: Add availability check before booking assets (ppt-1197)
- Interfaces/Templates [**concierge**]: Show status desk bookings ended early (ppt-998)
- Interfaces/Templates [**bookings**]: Remove conflicting linked bookings when editing events/bookings (ppt-1199)
- Interfaces/Templates [**assets**]: Get assets groups to use for duplicate checking (ppt-1192)
- Libraries/Models [**users**]: [ppt-1148] work_preferences default ([#244](https://github.com/PlaceOS/placeos-models/pull/244))
- Libraries/Models [**user**]: Change worktimepreference day to day_of_week ([#245](https://github.com/PlaceOS/placeos-models/pull/245))
- Libraries/Models [**model**]: Dbhashconverter ([#246](https://github.com/PlaceOS/placeos-models/pull/246))
- Libraries/Models [**booking**]: #clashing? with asset_ids ([#250](https://github.com/PlaceOS/placeos-models/pull/250))
- Services/RestAPI [**user**]: Change worktimepreference day to day_of_week ([#372](https://github.com/PlaceOS/rest-api/pull/372))
- Services/RestAPI [**changefeeds**]: Ensure change listener for drivers table remain intact ([#375](https://github.com/PlaceOS/rest-api/pull/375))
- Services/StaffAPI [**events**]: [ppt-1190] update metadata on rapid destroy after create ([#313](https://github.com/PlaceOS/staff-api/pull/313))

### Changed

- Libraries/Models [**zone**]: [ppt-1154] remove unused field ([#248](https://github.com/PlaceOS/placeos-models/pull/248))

## 2.2312.0

### Fixed

- Interfaces/Templates [**concierge**]: Use calendar value first for delete or decline of events (ppt-975)
- Interfaces/Templates [**workplace**]: Fix disabling assets field on selecting a space (ppt-956)
- Interfaces/Templates [**concierge**]: Add desk name below qr code (ppt-1049)
- Interfaces/Templates [**concierge**]: Retry events request with delay on 429 (ppt-1047)
- Interfaces/Templates [**concierge**]: Fix to display of setup/breakdown meetings (ppt-535)
- Interfaces/Templates [**workplace**]: Add logic to prevent duplicates showing when using calendar links (ppt-981)
- Interfaces/Templates [**map-kiosk**]: Fix text colour for date value (ppt-1052)
- Interfaces/Templates [**concierge**]: Fix clearing parking space user (ppt-797)
- Interfaces/Templates [**org**]: Reduce level number value to 2 characters max (ppt-795)
- Interfaces/Templates [**explore**]: Factor in assigned users for user status (ppt-797)
- Interfaces/Templates [**events**]: Tweak parsing of data (ppt-981)
- Interfaces/Templates [**explore**]: Fix search listing for users with multiple roles (ppt-1044)
- Interfaces/Templates [**concierge**]: Update retry logic for day view requests (ppt-1059)
- Interfaces/Templates [**events**]: Set min duration for all day bookings to 24hrs (ppt-1060)
- Interfaces/Templates [**catering**]: Hide options in search section (ppt-1066)
- Interfaces/Templates [**concierge**]: Fix removing roles for emergency contacts (ppt-1050)
- Interfaces/Templates [**catering**]: Fix delivery options for all day (ppt-1086)
- Interfaces/Templates [**events**]: Fix to associated id check (ppt-981)
- Interfaces/Templates [**workplace**]: Fix filtering duplicate events (ppt-981)
- Interfaces/Templates [**concierge**]: Allow users to set level as a parking level (ppt-797)
- Interfaces/Templates [**workplace**]: Fix displaying catering orders on confirm view (ppt-1091)
- Interfaces/Templates [**control**]: Simplify shutdown for joined rooms (ppt-1094)
- Interfaces/Templates [**control**]: Add binding for hiding join actions (ppt-1095)
- Interfaces/Templates [**control**]: Add overlay to prevent use of slave panels in joined spaces (ppt-1093)
- Interfaces/Templates [**booking-panel**]: Tweak book now logic (ppt-1096)
- Interfaces/Templates [**events**]: Tweak to helpers for available periods (ppt-1078)
- Interfaces/Templates [**concierge**]: Fix sorting desk bookings (ppt-842)
- Interfaces/Templates [**bookings**]: Fix clearing form on navigation (ppt-1057)
- Interfaces/Templates [**map-kiosk**]: Add parking to map kiosk (ppt-1100)
- Interfaces/Templates [**concierge**]: Prevent selecting multiple levels for desks (ppt-796)
- Interfaces/Templates [**catering**]: Add handling for invalid delivery times (ppt-1108)
- Interfaces/Templates [**map-kiosk**]: Fix showing parking data on maps (ppt-1100)
- Interfaces/Templates [**catering**]: Only show orders for selected date (ppt-1106)
- Interfaces/Templates [**concierge**]: Only show catering order with selected report period (ppt-1107)
- Interfaces/Templates [**control**]: Fix ordering of topbar actions (ppt-1095)
- Interfaces/Templates [**catering**]: Fix passing values to order modal (ppt-1109)
- Interfaces/Templates [**events**]: Fix setting catering time when editing event (ppt-1110)
- Interfaces/Templates [**events**]: Fix editing multiday bookings (ppt-1105)
- Interfaces/Templates [**concierge**]: Update event form to more match workplace one (ppt-1109)
- Interfaces/Templates [**events**]: Fix display of catering times on all day bookings (ppt-1110)
- Interfaces/Templates [**events**]: Tweak setting catering time on edit (ppt-1115)
- Interfaces/Templates [**catering**]: Fix end time for all day events (ppt-1109)
- Interfaces/Templates [**events**]: Make all day bookings 24+ hours (ppt-1118)
- Interfaces/Templates: Prevent select end times before start time (ppt-1060)
- Interfaces/Templates [**workplace**]: Fix date value for order times on confirm modal (ppt-1110)
- Interfaces/Templates [**catering**]: Use 24 hour time for filters when set (ppt-1116)
- Interfaces/Templates [**spaces**]: Add handling for multiday bookings (ppt-1117)
- Interfaces/Templates [**events**]: Fix handling end time of all day events (ppt-1115)
- Interfaces/Templates [**workplace**]: Fix data sync between shared input fields (ppt-1117)
- Interfaces/Templates [**catering**]: Fix listing catering orders (ppt-1114)
- Interfaces/Templates [**workplace**]: Flag invalid catering orders on confirm modal (ppt-1064)
- Interfaces/Templates [**workplace**]: Fix selectable durations (ppt-1120)
- Interfaces/Templates [**concierge**]: Ignore cancelled catering orders for report (ppt-1122)
- Interfaces/Templates [**concierge**]: Fix asset meeting time when all day (ppt-1127)
- Interfaces/Templates [**concierge**]: Fix changing asset tracking status (ppt-1125)
- Interfaces/Templates: Fix to display of valid/invalid asset requests (ppt-1126)
- Interfaces/Templates [**events**]: Add extra checks for availability on edit (ppt-1119)
- Interfaces/Templates [**concierge**]: Fix filtering of invalid asset requests (ppt-1126)
- Interfaces/Templates [**bookings**]: Fix formatting for all day bookings (ppt-1127)
- Interfaces/Templates [**concierge**]: Update asset field to use new field format (ppt-1128)
- Interfaces/Templates: Fix delivery times for assets and catering with all day (ppt-1110, ppt-1128)
- Interfaces/Templates [**concierge**]: Handle ended state for visitor bookings (ppt-1131)
- Interfaces/Templates [**events**]: Fix filtering of valid catering orders (ppt-1072)
- Interfaces/Templates [**catering**]: Fix to error updating statuses (ppt-1072)
- Interfaces/Templates [**events**]: Update metadata if unable to update event setup/breakdown (ppt-1130)
- Interfaces/Templates [**catering**]: Tweak event linking when listing orders (ppt-1072)
- Libraries/Models [**control_system**]: Should only remove modules only in system [ppt-1102] ([#238](https://github.com/PlaceOS/placeos-models/pull/238))
- Services/Build [**build**]: Properly parse cloud build service url ([#54](https://github.com/PlaceOS/build/pull/54))
- Services/StaffAPI [**events**]: Recurring metadata visibility [ppt-1072] [ppt-1073] ([#309](https://github.com/PlaceOS/staff-api/pull/309))

### Added

- Interfaces/Backoffice: Add badge to show driver has update available (ppt-1041)
- Interfaces/Templates [**visitor-kiosk**]: Add ability to print visitor label after checkin (ppt-656)
- Interfaces/Templates [**explore**]: Add ability to query emergency contacts (ppt-1045)
- Interfaces/Templates [**events**]: Update display of catering orders on details modal (ppt-1080)
- Interfaces/Templates [**concierge**]: Add setting to remove days from reports (ppt-1056)
- Interfaces/Templates [**catering**]: Add setting to restrict the available times for catering (ppt-1067)
- Interfaces/Templates [**assets**]: Add category fields to assets select modal (ppt-1075)
- Interfaces/Templates [**catering**]: Add ability to set orders past first day in multiday events (ppt-1105)
- Interfaces/Templates [**assets**]: Add ability to book multiple groups of assets (ppt-1073)
- Libraries/Models: Ppt-1038 driver update required logic ([#234](https://github.com/PlaceOS/placeos-models/pull/234))
- Libraries/Models: Ppt-1085 add openai tool call support ([#235](https://github.com/PlaceOS/placeos-models/pull/235))
- Libraries/Models: Ppt-1077 add user login stats ([#236](https://github.com/PlaceOS/placeos-models/pull/236))
- Libraries/Models: Ppt-1098 add support of multiple assets per booking ([#237](https://github.com/PlaceOS/placeos-models/pull/237))
- Libraries/Models: Ppt-1113 add collection serialization logic ([#239](https://github.com/PlaceOS/placeos-models/pull/239))
- Libraries/Models [**event_metadata**]: Include guest list in linked bookings
- Libraries/Models [**bookings**]: Checked in status on booking guests ([#240](https://github.com/PlaceOS/placeos-models/pull/240))
- Libraries/Models [**event_metadata**]: Allows lookup of recurring master events ([#241](https://github.com/PlaceOS/placeos-models/pull/241)) [ppt-1072]
- Libraries/Models [**event_metadata**]: Add an additional query
- Services/Auth: Ppt-1077 add user login stats ([#112](https://github.com/PlaceOS/auth/pull/112))
- Services/RestAPI: Ppt-524 integrate the build service into core ([#367](https://github.com/PlaceOS/rest-api/pull/367))
- Services/RestAPI: Ppt-1085 add openai tool call support ([#369](https://github.com/PlaceOS/rest-api/pull/369))
- Services/StaffAPI [**events**]: Add filter to index ([#305](https://github.com/PlaceOS/staff-api/pull/305))
- Services/StaffAPI [**events**]: Serialize requests from each user [proj-512] ([#306](https://github.com/PlaceOS/staff-api/pull/306))
- Services/StaffAPI [**bookings**]: [ppt-1098] support multiple assets on a single booking ([#307](https://github.com/PlaceOS/staff-api/pull/307))
- Services/StaffAPI [**bookings**]: Include any attending guests in responses ([#308](https://github.com/PlaceOS/staff-api/pull/308))
- Services/Triggers: Ppt-1038 job to identify version upgrade for drivers ([#44](https://github.com/PlaceOS/triggers/pull/44))

### Changed

- Services/Build: Cloud build service invocation ([#55](https://github.com/PlaceOS/build/pull/55))

## 2.2311.1

### Fixed

- Interfaces/Templates: Remove visitor usage from events and make them linked bookings (ppt-995, ppt-982)
- Interfaces/Templates [**concierge**]: Various desk manage fixes (ppt-1030, ppt-1029, ppt-1028)
- Interfaces/Templates [**bookings**]: Fix user tooltip display for desk select map (ppt-913)
- Interfaces/Templates [**form-fields**]: Fix is between field on booking rules form (ppt-1031, ppt-1033)
- Interfaces/Templates [**catering**]: Fix removing items with different options (proj-432)
- Interfaces/Templates [**concierge**]: Re-add ability to checkin all visitors from room booking (ppt-982)
- Interfaces/Templates [**concierge**]: Move room details icon to end of row (ppt-982)
- Interfaces/Templates [**workplace**]: Fix action button colours (ppt-953)
- Services/Auth: Verified cookie now valid forever
- Services/Build_service [**task**]: Return valid driver name

### Added

- Libraries/Models [**chat_message**]: Track token usage
- Services/Build: Cloud build service integration & crystal compatibility fixes ([#53](https://github.com/PlaceOS/build/pull/53))
- Services/RestAPI [**chat_gpt**]: Compress chats once tasks are completed ([#366](https://github.com/PlaceOS/rest-api/pull/366))
- Services/StaffAPI [**events**]: Provide strict requirements for processing responses [proj-433] [proj-420] [ppt-975] ([#304](https://github.com/PlaceOS/staff-api/pull/304))

## 2.2311.0

### Fixed

- Services/RestAPI [**chatgpt**]: Provide day of the week details to GPT
- Services/StaffAPI [**calendars**]: Availability removing busy items within period ([#303](https://github.com/PlaceOS/staff-api/pull/303))

## 2.2310.5

### Fixed

- Interfaces/Templates [**workplace**]: Fix end date values for limiting user date selection (ppt-971)
- Interfaces/Templates [**concierge**]: Tweaks to printing qr codes (ppt-952)
- Interfaces/Templates [**concierge**]: Fix checking out guests (ppt-954)
- Interfaces/Templates [**concierge**]: Disable checkin/out for desks after checkout (ppt-879)
- Interfaces/Templates [**booking-panel**]: Add new custom status text when meeting is checked in early (ppt-976)
- Interfaces/Templates [**bookings**]: Fix setting initial level when select desks from map (ppt-973)
- Interfaces/Templates: Remove title attribute from custom table cells (ppt-979)
- Interfaces/Templates [**concierge**]: Tweaks to printing qr codes (ppt-952)
- Interfaces/Templates [**visitor-kiosk**]: Change date format to be less ambiguous (ppt-983)
- Interfaces/Templates [**visitor-kiosk**]: Fix visitor checkin (ppt-982)
- Interfaces/Templates [**visitor-kiosk**]: Fix visitor lookup for standalone bookings (ppt-986)
- Interfaces/Templates [**form-fields**]: Remove space as item separator (ppt-984)
- Interfaces/Templates [**visitor-kiosk**]: Tweak to handling checkin for visitor booking (ppt-982)
- Interfaces/Templates [**visitor-kiosk**]: Minor fix to checking in visitors (ppt-982)
- Interfaces/Templates [**concierge**]: Make id field for desks bigger (ppt-988)
- Interfaces/Templates [**concierge**]: Fix asset manager product view overflow (ppt-997)
- Interfaces/Templates [**workplace**]: Fix overflow of flow success views (ppt-1000)
- Interfaces/Templates [**catering**]: Fix updating ui on room availability changes (ppt-1016)
- Interfaces/Templates [**concierge**]: Tweak nav for asset manager (ppt-1002)
- Interfaces/Templates [**bookings**]: Fix map colours on desk select modal (ppt-913)
- Services/StaffAPI [**shard.lock**]: Bump office365 dep [proj-419]

### Added

- Interfaces/Templates: Add setting to default all day to true (ppt-964)
- Interfaces/Templates: Simplify all day logic (ppt-962)
- Interfaces/Templates [**concierge**]: Add ability to set availability rules for assets (ppt-956)
- Interfaces/Templates [**workplace**]: Add asset restrictions to room booking flow (ppt-956)
- Interfaces/Templates [**concierge**]: Update display of deleted bookings (ppt-998)
- Interfaces/Templates [**concierge**]: Add view for locker bookings (ppt-1014)
- Interfaces/Templates: Add ability to theme apps (ppt-416)
- Libraries/Driver [**interface**]: Add llm chat capability interface
- Libraries/Driver [**subscriptions**]: Log errors in subscription callbacks
- Libraries/Models: Ppt-568 added models for chatbot ([#232](https://github.com/PlaceOS/placeos-models/pull/232))
- Services/RestAPI: Ppt-568 added controller for chatbot ([#364](https://github.com/PlaceOS/rest-api/pull/364))
- Services/StaffAPI [**events**]: Add setup/breakdown fields to destroyed signal
- Services/StaffAPI [**events**]: Add setup/breakdown time to staffapi::event#aument ([#302](https://github.com/PlaceOS/staff-api/pull/302))

### Changed

- Interfaces/Templates: Clean up catering config modal styles and layout

## 2.2310.4

### Fixed

- Services/RestAPI [**root**]: Pg healthcheck with aurora db
- Services/SearchIngest [**root**]: Pg healthcheck with aurora db
- Services/Source [**root**]: Pg healthcheck with aurora db

## 2.2310.3

### Fixed

- Clients/Typescript [**auth**]: Prevent error when getting token
- Clients/Typescript [**auth**]: Simplify check for api key when checking isfixed
- Libraries/Models [**parsing**]: improve assign_attributes from objects parsed from JSON

### Added

- Interfaces/Templates: Add indoor-maps component and initmapview method to wpa
- Interfaces/Templates: Use geolocation api to initiate map location at user location

## 2.2310.2

### Fixed

- Services/StaffAPI [**bookings**]: Pagination using created ascending order ([#301](https://github.com/PlaceOS/staff-api/pull/301))

## 2.2310.1

### Fixed

- Interfaces/Templates [**concierge**]: Fix check in/out of guests (ppt-954)

### Added

- Libraries/Models [**attendee**]: Ensure booking checked in if guest is ([#230](https://github.com/PlaceOS/placeos-models/pull/230))

## 2.2310.0

### Fixed


- Interfaces/Templates [**concierge**]: Fix desk approved/decline (ppt-917)
- Interfaces/Templates [**catering**]: Fix updating order status (ppt-912)
- Interfaces/Templates [**concierge**]: Refresh desk booking list after creation (ppt-907)
- Interfaces/Templates [**visitor-kiosk**]: Fix error displayed when invalid email entered (ppt-911)
- Interfaces/Templates [**bookings**]: Minor tweak to desk restriction handling (ppt-914)
- Interfaces/Templates [**concierge**]: Fix logic for setting active level on room manager (ppt-919)
- Interfaces/Templates [**workplace**]: Add extra details to success pages (ppt-821)
- Interfaces/Templates [**concierge**]: Allow editing of desk/room restrictions (ppt-932)
- Interfaces/Templates [**concierge**]: Tweaks to restrictions (ppt-932)
- Interfaces/Templates: Auto-reload page on new version when setup as fixed device (ppt-944)
- Interfaces/Templates [**bookings**]: Pass user email when checking availability (ppt-851)
- Interfaces/Templates: Update auto-reload checks on new version (ppt-946, ppt-947)
- Interfaces/Templates [**visitor-kiosk**]: Fix redirect on bootstrap (ppt-938)
- Interfaces/Templates [**visitor-kiosk**]: Update qr scanning to match new format (ppt-942)
- Interfaces/Templates [**workplace**]: Fix polling of events on landing (ppt-821)
- Interfaces/Templates: Update ical file start/end for all day (ppt-940)
- Interfaces/Templates: Tweak duration for all day bookings (ppt-929)
- Interfaces/Templates [**concierge**]: Display checkin errors for desk bookings (ppt-949)
- Interfaces/Templates [**explore**]: Fix status display of parking spaces (ppt-950)
- Interfaces/Templates [**workplace**]: Fix auto-fill of desk from qr code (ppt-953)
- Interfaces/Templates [**concierge**]: Fix printing qr code for desks (ppt-952)
- Interfaces/Templates [**concierge**]: Fix checking in event guests (ppt-538)
- Libraries/Models [**booking**]: Check for clashing in a transaction ppt-931 ([#228](https://github.com/PlaceOS/placeos-models/pull/228))
- Services/Nginx: Remove request uri when redirecting to https [ppt-772]
- Services/StaffAPI [**bookings**]: Rejected / approved status [ppt-917]
- Services/StaffAPI [**events**]: Update guest details [ppt-910]
- Services/StaffAPI [**calendars**]: [ppt-945] remove busy times that are outside of the period in #free_busy ([#300](https://github.com/PlaceOS/staff-api/pull/300))
- Services/StaffAPI [**events**]: Render rejected linked bookings [ppt-915]
- Services/StaffAPI [**events**]: User checkin with custom calendar [ppt-538]

### Added

- Interfaces/Templates [**booking-panel**]: Add ability to end in progress meetings (ppt-909)
- Interfaces/Templates: Add room restrictions (ppt-927)
- Interfaces/Templates [**bookings**]: Add status display for linked asset bookings (ppt-915)
- Libraries/Models [**migrations**]: Add index on bookings parent_id
- Libraries/Models [**migrations**]: Move id indexes to hash indexes
- Libraries/Models [**event_metadata**]: Add setup/breakdown time ([#229](https://github.com/PlaceOS/placeos-models/pull/229))

## 2.2309.1

### Fixed

- Interfaces/Templates [**bookings**]: Fix map select filter for desk select modal (ppt-892)
- Interfaces/Templates [**concierge**]: Minor tweaks to desk bookings paginations (ppt-860)
- Interfaces/Templates [**concierge**]: Fix overflow of desk book modal (ppt-898)
- Interfaces/Templates: Fix image uploads (ppt-897)
- Interfaces/Templates [**common**]: Tweak ms outlook links (ppt-900)
- Interfaces/Templates [**events**]: Force status locally after checkin (ppt-895)
- Interfaces/Templates [**concierge**]: Fix 24 hour time on new event form (ppt-848)
- Interfaces/Templates [**concierge**]: Remove qr option on desk bookings list (ppt-902)
- Interfaces/Templates [**explore**]: Fix typo in explore space booking success toast (ppt-906)
- Interfaces/Templates [**visitor-kiosk**]: Fix input field mapping for visitor org data (ppt-910)
- Services/Auth [**sessions**]: Ignore login requests with redirects to files
- Services/StaffAPI [**bookings**]: Missing save on approve and reject routes

### Added

- Interfaces/Templates [**workplace**]: Add setting to allow 24 hour time (ppt-848)
- Interfaces/Templates: Add ability to set the start of the week day for calendars (ppt-849)
- Libraries/Models [**event_metadata**]: Render rejected bookings
- Services/RestAPI: Ppt-864 fix and capture online and last seen edge core ([#361](https://github.com/PlaceOS/rest-api/pull/361))

### Changed

- Interfaces/Templates [**booking-panel**]: Clean up check-in/start meeting logic (ppt-899)

## 2.2309.0

### Fixed

- Interfaces/Templates [**events**]: Tweak handling of availability when editing bookings (ppt-839)
- Interfaces/Templates [**concierge**]: Fix reload after adding a building (ppt-814)
- Interfaces/Templates [**concierge**]: Add option to add new categories from management modal (ppt-857)
- Interfaces/Templates [**concierge**]: Add uncategorised option to asset manager (ppt-857)
- Interfaces/Templates [**bookings**]: Make host booking parent for group desk bookings (ppt-838)
- Interfaces/Templates [**bookings**]: Fix warning for unavailable group booking members (ppt-851)
- Interfaces/Templates [**bookings**]: Fix setting date when in past (ppt-836)
- Interfaces/Templates: Fix handling toggling of all day when editing bookings (ppt-839)
- Interfaces/Templates [**concierge**]: Fix approve/decline of guests and view styling (ppt-869)
- Interfaces/Templates [**concierge**]: Fix check-in/out of desk bookings (ppt-879)
- Interfaces/Templates [**concierge**]: Fix time display for guests from calendar events (ppt-878)
- Interfaces/Templates [**events**]: Fix availability check (ppt-839)
- Interfaces/Templates [**events**]: Update day of week for recurrence on date change (ppt-846)
- Interfaces/Templates [**events**]: Fix setting setup/breakdown to 0 (ppt-881)
- Interfaces/Templates [**workplace**]: Fix displayed time when editing in progress booking (ppt-734)
- Libraries/Models [**storage**]: Fix mime types getting overwritten issue ([#224](https://github.com/PlaceOS/placeos-models/pull/224))
- Services/Init [**generate-secrets**]: Rails cookie secret is too long for nginx ([#87](https://github.com/PlaceOS/init/pull/87))
- Services/SearchIngest: Api-key indexing resolved via dependency bump [ppt-783]
- Services/StaffAPI: Unauthorized if delegated access has expired ([#296](https://github.com/PlaceOS/staff-api/pull/296)) [ppt-731]

### Added

- Interfaces/Templates [**concierge**]: Add ability to manage asset categories (ppt-857)
- Interfaces/Templates [**concierge**]: Add pagination handling to desk booking list (ppt-860)
- Libraries/Models [**upload**]: Ensures upload file names are valid across systems ([#226](https://github.com/PlaceOS/placeos-models/pull/226))
- Services/Auth [**sessions**]: Add a verification cookie [ppt-870] [ppt-872] ([#111](https://github.com/PlaceOS/auth/pull/111))
- Services/Nginx: Add method for protecting static assets ([#24](https://github.com/PlaceOS/nginx/pull/24)) [ppt-872]
- Services/RestAPI [**uploads**]: Improve upload validation ([#360](https://github.com/PlaceOS/rest-api/pull/360))
- Services/Triggers: Refactor triggers to use place resource ([#43](https://github.com/PlaceOS/triggers/pull/43))

## 2.2308.3

### Fixed

- Interfaces/Templates [**workplace**]: Fix image overflow for landing availability (ppt-843)
- Interfaces/Templates [**concierge**]: Fix sorting of desk bookings by name (ppt-842)
- Libraries/Models [**storage**]: Clean extension prior to whitelist check

### Added

- Interfaces/Backoffice [**admin**]: Add section and logic for upload storage providers (ppt-820)
- Services/RestAPI [**uploads**]: Improve documentation
- Services/StaffAPI [**events**]: Skip some checks when in delegated mode ([#294](https://github.com/PlaceOS/staff-api/pull/294))

## 2.2308.2

### Fixed

- Interfaces/Templates [**bookings**]: Fix setting for no_approvals with bookings (ppt-829)
- Interfaces/Templates [**spaces**]: Force selected spaces to one item without setting (ppt-827)
- Services/StaffAPI [**guests**]: query failed where there were no bookings

## 2.2308.1

### Added

- Clients/Typescript [**zones**]: Add method for executing on a zone
- Interfaces/Templates [**concierge**]: Add ability to make standalone visitor bookings (ppt-787)
- Libraries/Models: Ppt-767 file upload models for storage and upload ([#219](https://github.com/PlaceOS/placeos-models/pull/219))
- Libraries/Models [**storage**]: Added file extension and mime filter attributes ([#223](https://github.com/PlaceOS/placeos-models/pull/223))
- Services/RestAPI: Add concierge permissions ppt-746 ([#355](https://github.com/PlaceOS/rest-api/pull/355))
- Services/RestAPI: Ppt-767 file upload controller ([#357](https://github.com/PlaceOS/rest-api/pull/357))
- Services/StaffAPI: Add event metadata permissions checks ([#292](https://github.com/PlaceOS/staff-api/pull/292))
- Services/StaffAPI: Add support for public.read and public.write scopes

### Fixed

- Interfaces/Backoffice [**admin**]: Fix selecting users for api key assignment (ppt-780)
- Interfaces/Backoffice [**zones**]: Execute method on zone's systems instead of template system (ppt-812)
- Interfaces/Templates [**concierge**]: Fix approve/decline of guest (ppt-762)
- Interfaces/Templates [**bookings**]: Fix resource list update on building change (ppt-763)
- Interfaces/Templates [**catering**]: Fix sorting of catering orders (proj-213)
- Interfaces/Templates [**concierge**]: Fix report overflow (proj-208)
- Interfaces/Templates [**form-fields**]: Change default recurrence period to 180 days (ppt-757)
- Interfaces/Templates [**events**]: Update clear routes for form data (ppt-764)
- Interfaces/Templates [**concierge**]: Fix handling building switches on booking room select (ppt-764)
- Interfaces/Templates [**booking-panel**]: Prevent checkin when disable_book_now true (ppt-778)
- Interfaces/Templates: Tweak handling of all day for events and bookings (ppt-781)
- Interfaces/Templates [**explore**]: Update svg-viewer and ordering of interactions (ppt-782)
- Interfaces/Templates: Fix pin position (ppt-785)
- Interfaces/Templates [**concierge**]: Update date options on new ui (ppt-784)
- Interfaces/Templates [**bookings**]: Fix expanded map for booking details modal (ppt-679)
- Interfaces/Templates [**concierge**]: Fix tagging newly created zones (ppt-788)
- Interfaces/Templates [**concierge**]: Fix table scrolling for level manager (ppt-799)
- Interfaces/Templates [**concierge**]: Fix removing buildings (ppt-798)
- Interfaces/Templates [**form-fields**]: Fix plural form text on recurrence modal (ppt-805)
- Interfaces/Templates [**workplace**]: Fix routing typo for desk booking success view (ppt-803)
- Interfaces/Templates [**users**]: Fix email case sensitivity for availability display (ppt-811)
- Interfaces/Templates [**explore**]: Handle checked in desks (ppt-809)
- Interfaces/Templates [**concierge**]: Fix booking desks from the map view (ppt-808)
- Interfaces/Templates [**events**]: Fix saving event when setting setup and breakdown times (ppt-720)
- Interfaces/Templates [**form-fields**]: Update support email requests (ppt-823)
- Interfaces/Templates [**concierge**]: Allow custom reports as only reports on sidebar (ppt-816)
- Interfaces/Templates [**concierge**]: Fix data selector on day view (ppt-784)
- Libraries/Models: Add skip_authorization field to the doorkeeper ([#218](https://github.com/PlaceOS/placeos-models/pull/218))
- Libraries/Models [**zone**]: Find root zone id ([#220](https://github.com/PlaceOS/placeos-models/pull/220))
- Libraries/Models [**control_system**]: Reject invalid module ids at save ([#221](https://github.com/PlaceOS/placeos-models/pull/221))
- Libraries/Models [**survey**]: Make survey::invitation.list return unsent invites if their sent state is null in the db and sent = false is passed to the function ([#222](https://github.com/PlaceOS/placeos-models/pull/222))
- Services/StaffAPI [**events**]: [ppt-723] failed metadata lookup on recurring booking edit ([#290](https://github.com/PlaceOS/staff-api/pull/290))
- Services/StaffAPI [**calendar**]: Availability of timeslots imidiatly preceding another meeting ([#289](https://github.com/PlaceOS/staff-api/pull/289))

### Changed

- Services/StaffAPI [**events**]: [ppt 503] replace #not_nil! with more specific errors ([#287](https://github.com/PlaceOS/staff-api/pull/287))

## 2.2308.0

### Fixed

- Interfaces/Templates [**concierge**]: Add error handling for guest approval (ppt-721)
- Interfaces/Templates [**concierge**]: Fix purchase order asset list names (ppt-619)
- Interfaces/Templates [**concierge**]: Fix routing for new ui on asset manager views (ppt-735)
- Interfaces/Templates [**events**]: Add booking rules filter to future available spaces (ppt-736)
- Interfaces/Templates [**workplace**]: Fix selecting desk for booking from favourites (ppt-737)
- Interfaces/Templates [**workplace**]: Re-enable desk booking editing (ppt-741)
- Interfaces/Templates [**bookings**]: Only show checkin around booking period (ppt-740)
- Interfaces/Templates [**workplace**]: Tweak editing of bookings (ppt-741)
- Interfaces/Templates [**explore**]: Add zone info to feature locating (ppt-748)
- Interfaces/Templates [**users**]: Update availability on date change (ppt-749)
- Interfaces/Templates [**bookings**]: Ignore existing booking in availability checks (ppt-741)
- Interfaces/Templates [**explore**]: Fix zone details for locating points of interest (ppt-748)
- Interfaces/Templates [**workplace**]: Tweak setting desk in booking flow (ppt-741)
- Interfaces/Templates [**workplace**]: Fix editing desk bookings (ppt-741)
- Interfaces/Templates [**org**]: Tweak setting initial building when lazy loading buildings (ppt-750)
- Interfaces/Templates [**concierge**]: Fix routing for custom reports (ppt-753)
- Interfaces/Templates [**concierge**]: Fix scroll on survey responses and routing to new views (ppt-752)
- Interfaces/Templates [**form-fields**]: Make default end date of recurrence 1 day less than a year (ppt-757)
- Interfaces/Templates [**events**]: Fix id for status binding (ppt-759)
- Libraries/Models [**PPT-729**]: Add missing fk cascade delete to fks ([#217](https://github.com/PlaceOS/placeos-models/pull/217))
- Services/StaffAPI [**events**]: Check not required with delegated access ppt-758 ([#288](https://github.com/PlaceOS/staff-api/pull/288))

### Added

- Libraries/Models [**zone**]: Add root zone finding helper
- Services/RestAPI [**assets**]: Add permissions system ppt-743 ([#354](https://github.com/PlaceOS/rest-api/pull/354))

## 2.2307.10

### Fixed

- Interfaces/Templates [**map-kiosk**]: Add translation service
- Services/StaffAPI [**events**]: Fixes O365 decline events edge cases

### Added

- Interfaces/Templates [**workplace**]: Add restriction to end date in desk-form date-picker
- Libraries/Resource: Load resources in order of creation
- Services/Auth: Pp-51 default callback uri for each domain ppt-728 ([#108](https://github.com/PlaceOS/auth/pull/108))
- Services/SearchIngest: Add service loading route for k8s ([#81](https://github.com/PlaceOS/search-ingest/pull/81))

## 2.2307.9

### Fixed

- Interfaces/Templates [**workplace**]: Fix available levels (ppt-725)
- Services/Auth [**oauth-redirects**]: Ensure path based redirect on b2clogin ([#107](https://github.com/PlaceOS/auth/pull/107))

## 2.2307.8

### Added

- Clients/Crystal: Add missing system fields and provide query helpers for settings

### Fixed

- Interfaces/Templates: Default outlook link to use office one (ppt-716)
- Interfaces/Templates: Fix start and end time for all day with ical file (ppt-715)
- Interfaces/Templates [**events**]: Fix removing recurring series (ppt-692)
- Interfaces/Templates [**workplace**]: Tweak parsing of locker booking data (ppt-679)
- Interfaces/Templates [**workplace**]: Add check to global search for contacts (ppt-718)
- Interfaces/Templates: Fix toggling favourites from form fields (ppt-682)
- Interfaces/Templates [**concierge**]: List assets associated with purchase order on edit (ppt-619)
- Interfaces/Templates [**workplace**]: Force set desk form values if available (ppt-716)
- Libraries/Resource [**placeos-resource**]: Fix missing change events
- Services/Auth [**coauth_controller**]: Enable redirects to other hosts
- Services/Core [**local**]: Error message may not be present

## 2.2307.6

### Added

- Clients/Crystal [**settings**]: Add create and update helpers

### Fixed

- Interfaces/Templates [**users**]: Fix availability modal scrolling (ppt-713)
- Libraries/Resource: Add timeout to resource loading ([#19](https://github.com/PlaceOS/placeos-resource/pull/19))
- Services/Core [**module_manager**]: Treat system load as a stabilization event

## 2.2307.5

### Fixed

- Interfaces/Templates [**bookings**]: Fix visitor error handling and form on extra requests (ppt-707)
- Interfaces/Templates [**concierge**]: Fix filters on new day view (ppt-702)
- Interfaces/Templates [**events**]: Add logic for deleting recurring events (ppt-692)
- Libraries/Models [**migrations**]: Multi-line statement, updated spec pg version to 15
- Services/StaffAPI [**events**]: Accepting an event must use a special route ([#286](https://github.com/PlaceOS/staff-api/pull/286))

## 2.2307.4

### Fixed

- Interfaces/Templates: Add overflow to building list (ppt-705)
- Interfaces/Templates [**org**]: Prevent filtering out levels from unloaded buildings (ppt-704)
- Interfaces/Templates [**concierge**]: Add type filters to new day view (ppt-702)

### Added

- Libraries/Models [**migrations**]: Ppt-53 add index on metadata details
- Services/RestAPI [**notifications**]: Publish on subscription id ([#352](https://github.com/PlaceOS/rest-api/pull/352))
- Services/RestAPI [**users**]: Ppt-53 add user metadata search ([#353](https://github.com/PlaceOS/rest-api/pull/353))

## 2.2307.3

### Fixed

- Interfaces/Templates [**assets**]: Tweak page size for listing type items (ppt-668)
- Interfaces/Templates [**workplace**]: Ignore availability status when booking from landing (ppt-686)
- Libraries/Models [**migrations**]: Ensure unique constraint removed
- Services/FrontendLoader [**eventbus**]: Handle read replica race conditions
- Services/StaffAPI [**tenants**]: Allow updates to email_domain column

## 2.2307.2

### Fixed

- Clients/Crystal [**zones**]: Add missing fields to create and update
- Services/Core [**eventbus**]: Handle read replica race conditions
- Services/FrontendLoader [**eventbus**]: Handle read replica race conditions
- Services/RestAPI [**eventbus**]: Handle read replica race conditions
- Services/SearchIngest [**eventbus**]: Handle read replica race conditions
- Services/Source [**eventbus**]: Handle read replica race conditions
- Services/Triggers [**eventbus**]: Handle read replica race conditions

## 2.2307.1

### Fixed

- Interfaces/Templates [**workplace**]: Make title not mandatory as it has a default value (ppt-690)
- Services/FrontendLoader [**loader**]: Ensure sub directories are updated for www-core ([#83](https://github.com/PlaceOS/frontend-loader/pull/83))
- Services/StaffAPI [**tenants**]: Don't error if no tenant configured

## 2.2307.0

### Fixed

- Interfaces/Templates [**concierge**]: Fix style ordering (ppt-654)
- Interfaces/Templates [**events**]: Fix recurrence based off occurrences (ppt-648)
- Interfaces/Templates [**assets**]: Add barcode field to asset (ppt-575)
- Interfaces/Templates [**concierge**]: Add ability to set setup/breakdown when booking (ppt-535)
- Interfaces/Templates [**concierge**]: Tweak handling of invalid setup and breakdown times for rendering (ppt-673)
- Services/Core [**process_check**]: Kill unresponsive processes cleanly ([#263](https://github.com/PlaceOS/core/pull/263))
- Services/RestAPI [**asset_types**]: Zone filtering for counts ([#350](https://github.com/PlaceOS/rest-api/pull/350))
- Services/StaffAPI [**events**]: Use relative monthly bookings by default ([#285](https://github.com/PlaceOS/staff-api/pull/285)) (ppt-651)

### Added

- Libraries/Models [**asset_type**]: Include asset counts in responses ([#215](https://github.com/PlaceOS/placeos-models/pull/215))
- Services/RestAPI [**assets**]: Add additional query options (ppt-669) ([#347](https://github.com/PlaceOS/rest-api/pull/347))
- Services/RestAPI [**asset_types**]: Filter counts based on zone_id ([#349](https://github.com/PlaceOS/rest-api/pull/349))

## 2.2306.1

### Fixed

- Libraries/Models: Epochconverter#from_json

### Added

- Interfaces/Templates [**concierge**]: Update day view components
- Libraries/Models [**asset**]: Add barcode field ([#212](https://github.com/PlaceOS/placeos-models/pull/212))
- Services/StaffAPI: Ppt-621 add pagination to bookings index route ([#284](https://github.com/PlaceOS/staff-api/pull/284))

## 2.2306.0

### Fixed

- Libraries/Models [**user**]: Update cleanup_auth_tokens with updated relations name
- Libraries/Models [**booking**]: Add is_booking_type scope
- Services/Init [**migrate_data**]: Don't migrate asset data
- Services/RestAPI [**assets**]: Authenticated users can view
- Services/RestAPI [**assets**]: Sort by id
- Services/StaffAPI [**bookings**]: Add default response status to attendees
- Services/StaffAPI [**events**]: Ensure metadata patching applied on room change

### Added

- Libraries/Models [**asset**]: New asset manager models ([#204](https://github.com/PlaceOS/placeos-models/pull/204))
- Libraries/Models [**staff-api**]: Ppt-387 staff api implement linked bookings child parent relationship ([#205](https://github.com/PlaceOS/placeos-models/pull/205))
- Libraries/Models [**asset**]: [ppt-334] elastic search index ([#207](https://github.com/PlaceOS/placeos-models/pull/207))
- Libraries/Models [**asset_manager**]: Change ids to strings ([#208](https://github.com/PlaceOS/placeos-models/pull/208))
- Libraries/Models: Link bookings to events ([#209](https://github.com/PlaceOS/placeos-models/pull/209))
- Libraries/Models: Link assets to zones and clean up bookings ([#210](https://github.com/PlaceOS/placeos-models/pull/210))
- Libraries/Models [**migrations**]: Ppt-431, 432 additional indices ([#211](https://github.com/PlaceOS/placeos-models/pull/211))
- Libraries/Models [**tenant**]: Add multi-tenant per domain support ([#213](https://github.com/PlaceOS/placeos-models/pull/213))
- Services/Auth [**sessions**]: Add support for pulling groups via sso
- Services/RestAPI [**asset_manager**]: [ppt-335] new asset manager endpoints ([#343](https://github.com/PlaceOS/rest-api/pull/343))
- Services/RestAPI: Ppt-520 ([#346](https://github.com/PlaceOS/rest-api/pull/346))
- Services/SearchIngest [**asset_manager**]: Add new asset manager tables ([#77](https://github.com/PlaceOS/search-ingest/pull/77))
- Services/StaffAPI [**bookings**]: Add support for linking bookings ([#280](https://github.com/PlaceOS/staff-api/pull/280))
- Services/StaffAPI [**events**]: Add push event endpoint ([#283](https://github.com/PlaceOS/staff-api/pull/283))

## 2.2305.0

### Fixed

- Libraries/Driver: Modules failing to connect may not stop ([#165](https://github.com/PlaceOS/placeos-driver/pull/165))
- Libraries/Models [**associations**]: Serialize should default to true
- Libraries/Resource: Resource should hint at changes ([#18](https://github.com/PlaceOS/placeos-resource/pull/18))
- Services/Init [**db/migrations**]: Make models repo the source of truth
- Services/RestAPI [**modules**]: [ppt-32] search query ([#341](https://github.com/PlaceOS/rest-api/pull/341))
- Services/RestAPI: Domain check skipped for x-api-keys ([#342](https://github.com/PlaceOS/rest-api/pull/342))
- Services/StaffAPI [**migration**]: Alter attendees booking_id column type ([#273](https://github.com/PlaceOS/staff-api/pull/273))
- Services/StaffAPI [**tenants**]: Enable patching delegated state ([#272](https://github.com/PlaceOS/staff-api/pull/272))
- Services/StaffAPI: Bump forbidden log levels ([#274](https://github.com/PlaceOS/staff-api/pull/274))
- Services/StaffAPI [**shard.lock**]: Bump models for jwt email downcasing ([#276](https://github.com/PlaceOS/staff-api/pull/276))

### Added

- Libraries/Driver [**proxy/system**]: Log module id if issue parsing metadata
- Libraries/Models: Added to_rs method and support for dealing with nilable value in enumconverter ([#200](https://github.com/PlaceOS/placeos-models/pull/200))
- Libraries/Models [**user_jwt**]: Always ensure email is downcased
- Libraries/Models [**control_system**]: Remove feature auto-population ppt-392 ([#202](https://github.com/PlaceOS/placeos-models/pull/202))
- Libraries/Models [**migrations**]: Add db level constraints to trig table ([#203](https://github.com/PlaceOS/placeos-models/pull/203))
- Libraries/Models [**migrations**]: Sync migrations from init
- Services/Core [**edge/protocol**]: Add support for crystal 1.8 ([#260](https://github.com/PlaceOS/core/pull/260))
- Services/StaffAPI [**survey**]: [ppt-358] add visitor triggers ([#275](https://github.com/PlaceOS/staff-api/pull/275))

### Changed

- Libraries/Models: Added models for staff-api ([#201](https://github.com/PlaceOS/placeos-models/pull/201))
- Services/StaffAPI: Migrated staff-api to pg-orm ([#277](https://github.com/PlaceOS/staff-api/pull/277))

## 2.2304.0

**Second Major Release**

Migration from RethinkDB to PostgreSQL.

- No API changes or new features
- A new database layer

## 1.2303.5, 1.2303.6

### Fixed

- Services/StaffAPI [**events**]: skip calendar check if it matches user ([#270](https://github.com/PlaceOS/staff-api/pull/270))

### Added

- Services/StaffAPI [**PPT-89**]: support Azure AD filter ([#269](https://github.com/PlaceOS/staff-api/pull/269))

## 1.2303.4

### Fixed

- Interfaces/Backoffice [**auth**]: Add setting to ignore api key
- Services/Core [**process_check**]: Ensure consistent state after recovery ([#259](https://github.com/PlaceOS/core/pull/259))

### Added

- Clients/Typescript [**auth**]: Add flag for ignoring x-api-key for auth
- Interfaces/Templates [**spaces**]: Add name remapping and hiding to features list (ppt-283)
- Services/Auth: Add an error template for failed authentication requests ([#104](https://github.com/PlaceOS/auth/pull/104))

## 1.2303.3

### Fixed

- Services/RestAPI [**webrtc**]: Make index route public ([#340](https://github.com/PlaceOS/rest-api/pull/340))

### Added

- Services/Auth [**sessions**]: Provide additional data around user profile ([#101](https://github.com/PlaceOS/auth/pull/101))
- Services/StaffAPI [**event_metadata**]: Provide additional options for metadata queries ([#265](https://github.com/PlaceOS/staff-api/pull/265))

## 1.2303.2

### Fixed

- Services/StaffAPI [**events**]: Regression caused by missing calendar id ([#264](https://github.com/PlaceOS/staff-api/pull/264))

## 1.2303.1

### Fixed

- Services/Init [**entities**]: Adds building, level parent property. fixes [#82](https://github.com/PlaceOS/init/pull/82) ([#83](https://github.com/PlaceOS/init/pull/83))
- Services/Init [**dockerfile**]: Add tzdata for timezone in final image ([#84](https://github.com/PlaceOS/init/pull/84))
- Services/StaffAPI [**survey**]: Survey questions deleted json property ([#262](https://github.com/PlaceOS/staff-api/pull/262))

### Added

- Libraries/Models [**control_system**]: Add public flag ([#196](https://github.com/PlaceOS/placeos-models/pull/196))
- Services/RestAPI [**webrtc**]: Add a call signaling controller ([#332](https://github.com/PlaceOS/rest-api/pull/332))
- Services/StaffAPI [**survey**]: Include deleted questions by default and include delete… ([#259](https://github.com/PlaceOS/staff-api/pull/259))
- Services/StaffAPI [**survey**]: Soft-delete questions if they are used in a survey ([#260](https://github.com/PlaceOS/staff-api/pull/260))

## 1.2302.5

### Fixed

- Services/Core [**process_manager/common**]: Prevent potential for deadlock ([#257](https://github.com/PlaceOS/core/pull/257))

### Added

- Services/StaffAPI [**events**]: Improve event patching ([#258](https://github.com/PlaceOS/staff-api/pull/258))

## 1.2302.4

### Fixed

- Services/Auth [**Gemfile.lock**]: Redis dependency error ([#99](https://github.com/PlaceOS/auth/pull/99))

## 1.2302.3

### Fixed

- Services/Core [**process_manager**]: Don't lock managers when querying ([#256](https://github.com/PlaceOS/core/pull/256))
- Services/Source [**status_events**]: Handle errors on initial sync ([#52](https://github.com/PlaceOS/source/pull/52))

### Added

- Services/Source [**influx_publisher**]: Allow overriding the timestamp ([#53](https://github.com/PlaceOS/source/pull/53))
- Services/StaffAPI [**survey**]: [ppt-91] filter answers on date range ([#255](https://github.com/PlaceOS/staff-api/pull/255))
- Services/StaffAPI [**survey**]: [ppt-67|ppt-101] update /surveys/questions endpoint ([#257](https://github.com/PlaceOS/staff-api/pull/257))

## 1.2302.2

### Fixed

- Services/Core: Improve cluster stabilisation under adverse conditions ([#254](https://github.com/PlaceOS/core/pull/254))
- Interfaces/Templates [**events**]: Don't use host_override as host ([#317](https://github.com/PlaceOS/templates/pull/317))
- Interfaces/Templates [**bookings**]: Fix removing desks ([#316](https://github.com/PlaceOS/templates/pull/316))
- Interfaces/Templates [**bookings**]: Limit max size of desk filters ([#314](https://github.com/PlaceOS/templates/pull/314))
- Interfaces/Templates [**users**]: Fix handling users without emails ([#313](https://github.com/PlaceOS/templates/pull/313))
- Interfaces/Templates [**desks**]: Fix end time for all day ([#314](https://github.com/PlaceOS/templates/pull/314))
- Interfaces/Templates [**workplace**]: Fix deleting bookings from landing ([#321](https://github.com/PlaceOS/templates/pull/321))
- Interfaces/Templates [**bookings**]: Fix not showing map when desk is selected ([#320](https://github.com/PlaceOS/templates/pull/320))
- Interfaces/Templates [**explore**]: Add ability to close custom tooltips after delay ([#315](https://github.com/PlaceOS/templates/pull/315))

### Added

- Libraries/Models [**user**]: Expose email and phone number ([#195](https://github.com/PlaceOS/placeos-models/pull/195))
- Services/RestAPI [**repositories**]: Add branch support ([#333](https://github.com/PlaceOS/rest-api/pull/333))
- Services/StaffAPI [**survey**]: Use host_override if defined ([#254](https://github.com/PlaceOS/staff-api/pull/254))

## 1.2302.1

### Fixed

- Services/Init [**Dockerfile**]: Python compatibility for rethinkdb backups ([#81](https://github.com/PlaceOS/init/pull/81))
- Services/StaffAPI [**events**]: Delete event with a service account user ([#251](https://github.com/PlaceOS/staff-api/pull/251))
- Services/StaffAPI [**outlook**]: Xml manifest version ([#252](https://github.com/PlaceOS/staff-api/pull/252))
- Services/StaffAPI [**staff_api**]: Check sent for not nil in surveys::invitations ([#253](https://github.com/PlaceOS/staff-api/pull/253))
- Interfaces/Templates [**workplace**]: Notify users of desk booking errors ([#303](https://github.com/PlaceOS/templates/pull/303))
- Interfaces/Templates [**workplace**]: Tweak landing colleague search ([#301](https://github.com/PlaceOS/templates/pull/301))
- Interfaces/Templates [**spaces**]: Minor styling fixes ([#300](https://github.com/PlaceOS/templates/pull/300))
- Interfaces/Templates [**map-kiosk**]: All select host for desk bookings ([#306](https://github.com/PlaceOS/templates/pull/306))
- Interfaces/Templates [**booking-panel**]: Tweak generation of next available time ([#304](https://github.com/PlaceOS/templates/pull/304))
- Interfaces/Templates [**workplace**]: Minor tweaks to upcoming events ([#309](https://github.com/PlaceOS/templates/pull/309))

## 1.2301.7

### Fixed

- Services/StaffAPI [**events**]: Fix cancel with service account ([#250](https://github.com/PlaceOS/staff-api/pull/250))

### Added

- Services/StaffAPI [**survey**]: Triggers ([#249](https://github.com/PlaceOS/staff-api/pull/249))

## 1.2301.6

### Fixed

- Base Image: include missing library

## 1.2301.5

### Added

- Services/RestAPI [**webhook**]: Add support for binary payloads ([#330](https://github.com/PlaceOS/rest-api/pull/330))
- Services/StaffAPI [**survey**]: Add fields ([#246](https://github.com/PlaceOS/staff-api/pull/246))

## 1.2301.4

### Fixed

- Services/Auth [**user**]: Add department and preferred_language fields ([#95](https://github.com/PlaceOS/auth/pull/95))
- Services/StaffAPI [**tenant**]: Don't set a default conference type ([#247](https://github.com/PlaceOS/staff-api/pull/247))
- Interfaces/Templates: Fix some modals on mobile ([#293](https://github.com/PlaceOS/templates/pull/293))
- Interfaces/Templates [**spaces**]: Fix space images being squished ([#291](https://github.com/PlaceOS/templates/pull/291))
- Interfaces/Templates [**explore**]: Prevent booking non-free desks ([#292](https://github.com/PlaceOS/templates/pull/292))
- Interfaces/Templates [**workplace**]: Fix checkbox location for desk form ([#289](https://github.com/PlaceOS/templates/pull/289))
- Interfaces/Templates [**bookings**]: Fix working of checkin button ([#288](https://github.com/PlaceOS/templates/pull/288))
- Interfaces/Templates [**workplace**]: Hook up support ticket modal to smtp driver ([#290](https://github.com/PlaceOS/templates/pull/290))
- Interfaces/Templates [**concierge**]: Tweak building listing for surveys ([#286](https://github.com/PlaceOS/templates/pull/286))

## 1.2301.3

### Fixed

- Services/Core [**edge/transport**]: Possible reconnection issue ([#251](https://github.com/PlaceOS/core/pull/251))
- Services/Core [**edge/transport**]: Restart service after a period of downtime ([#253](https://github.com/PlaceOS/core/pull/253))
- Services/RestAPI: Edge exec lookup ([#329](https://github.com/PlaceOS/rest-api/pull/329))
- Services/Triggers [**state**]: Execute on edge modules ([#42](https://github.com/PlaceOS/triggers/pull/42))

## 1.2212.4

### Fixed

- Services/SearchIngest [**shards.lock**]: Bump placeos-models ([#74](https://github.com/PlaceOS/search-ingest/pull/74))
- Interfaces/Templates: Fix map selection of desks and spaces on desktop ([#272](https://github.com/PlaceOS/templates/pull/272))
- Interfaces/Templates [**bookings**]: Tweak styling for visitor form ([#285](https://github.com/PlaceOS/templates/pull/285))
- Interfaces/Templates [**workplace**]: Show all types of bookings for upcoming list ([#284](https://github.com/PlaceOS/templates/pull/284))
- Interfaces/Templates [**workplace**]: Tweak handling of booking checks for qr code checkin ([#275](https://github.com/PlaceOS/templates/pull/275))
- Interfaces/Templates [**workplace**]: Only show future bookings on landing ([#284](https://github.com/PlaceOS/templates/pull/284))

## 1.2212.3

### Fixed

- Interfaces/Templates [**workplace**]: Fix checking in bookings from url ([#275](https://github.com/PlaceOS/templates/pull/275))
- Interfaces/Templates [**workplace**]: Deny checkin in other users desk bookings ([#275](https://github.com/PlaceOS/templates/pull/275))

### Added

- Services/StaffAPI [**events**]: Allow meetings to be booked by service accounts ([#243](https://github.com/PlaceOS/staff-api/pull/243))

## 1.2212.2

### Fixed

- Libraries/Driver [**transport/udp**]: Connect doesn't work for multicast data ([#162](https://github.com/PlaceOS/placeos-driver/pull/162))
- Libraries/Models [**asset**]: Time fields should be unix epochs at the api level ([#194](https://github.com/PlaceOS/placeos-models/pull/194))
- Services/Core [**process_manager/local**]: Add edge node awareness ([#250](https://github.com/PlaceOS/core/pull/250))
- Services/Edge [**process_manager/local**]: Add edge node awareness ([#250](https://github.com/PlaceOS/edge/pull/250))
- Services/StaffAPI [**bookings**]: Add transaction lock to prevent duplicate bookings ([#242](https://github.com/PlaceOS/staff-api/pull/242))
- Interfaces/Templates [**catering**]: Save selection when closing modal ([#263](https://github.com/PlaceOS/templates/pull/263))
- Interfaces/Templates [**events**]: Send whether user has used links on close ([#259](https://github.com/PlaceOS/templates/pull/259))
- Interfaces/Templates [**workplace**]: Add setting to hide asset field on desk flow ([#270](https://github.com/PlaceOS/templates/pull/270))
- Interfaces/Templates [**workplace**]: Hide schedule filters for disabled features ([#268](https://github.com/PlaceOS/templates/pull/268))
- Interfaces/Templates [**catering**]: Fix listing of catering item options in orders ([#273](https://github.com/PlaceOS/templates/pull/273))

### Added

- Services/StaffAPI [**surveys**]: Survey improvements ([#239](https://github.com/PlaceOS/staff-api/pull/239))
- Interfaces/Templates [**workplace**]: Add ability to select charge codes for meeting catering ([#261](https://github.com/PlaceOS/templates/pull/261))

## 1.2212.1

### Added

- Services/StaffAPI [**migrations**]: Add additional indexes to bookings table ([#240](https://github.com/PlaceOS/staff-api/pull/240))
- Interfaces/Templates [**concierge**]: Add ability to disable catering in rooms ([#254](https://github.com/PlaceOS/templates/pull/254))

### Fixed

- Services/Core [**api/drivers**]: Allow branch selection ([#249](https://github.com/PlaceOS/core/pull/249))
- Services/RestAPI [**repositories**]: Driver details when not using master branch ([#327](https://github.com/PlaceOS/rest-api/pull/327))
- Interfaces/Templates [**spaces**]: Fix display of levels on select modal ([#258](https://github.com/PlaceOS/templates/pull/258))
- Interfaces/Templates [**workplace**]: Fix landing level display on available rooms ([#257](https://github.com/PlaceOS/templates/pull/257))

### Changed

- Services/Auth [**deps**]: Bump nokogiri from 1.13.9 to 1.13.10 ([#92](https://github.com/PlaceOS/auth/pull/92))

## 1.2212.0

### Fixed

- Interfaces/Backoffice [**debug**]: Improve ux of debug console ([#292](https://github.com/PlaceOS/backoffice/pull/292))
- Interfaces/Templates: Hide interactive map when no src is set ([#236](https://github.com/PlaceOS/templates/pull/236))
- Interfaces/Templates [**explore**]: Update check for in use desks ([#242](https://github.com/PlaceOS/templates/pull/242))
- Interfaces/Templates [**booking-panel**]: Only show offline state when explicit offline image set ([#245](https://github.com/PlaceOS/templates/pull/245))
- Interfaces/Templates: Initialise uploads service ([#249](https://github.com/PlaceOS/templates/pull/249))
- Interfaces/Templates [**catering**]: Tweak layout ([#248](https://github.com/PlaceOS/templates/pull/248))
- Interfaces/Templates [**workplace**]: Add ability to hide landing sidebar ([#240](https://github.com/PlaceOS/templates/pull/240))
- Interfaces/Templates [**assets**]: Fix typo in endpoint url ([#250](https://github.com/PlaceOS/templates/pull/250))
- Interfaces/Templates [**org**]: Add handling for zone images ([#229](https://github.com/PlaceOS/templates/pull/229))
- Libraries/Driver [**interface/chat_bot**]: Improve chat bot interface ([#160](https://github.com/PlaceOS/placeos-driver/pull/160))

### Added

- Services/RestAPI [**shards**]: Update shards ([#326](https://github.com/PlaceOS/rest-api/pull/326))
- Services/StaffAPI [**survey**]: Add survey models and endpoints ([#236](https://github.com/PlaceOS/staff-api/pull/236))
- Libraries/Models [**zone**]: Add timezone ([#191](https://github.com/PlaceOS/placeos-models/pull/191))
- Libraries/Models [**zone**]: Add images ([#192](https://github.com/PlaceOS/placeos-models/pull/192))
- Interfaces/Templates [**booking-panel**]: Allow booking from checkin timeline ([#246](https://github.com/PlaceOS/templates/pull/246))
- Interfaces/Templates [**workplace**]: Add region selection support ([#233](https://github.com/PlaceOS/templates/pull/233))
- Interfaces/Templates [**catering**]: Add dietary tags ([#255](https://github.com/PlaceOS/templates/pull/255))

## 1.2211.2

### Fixed

- Services/RestAPI [**shard.lock**]: Bump core-client to fix cluster listing ([#323](https://github.com/PlaceOS/rest-api/pull/323))
- Services/RestAPI [**edge/connection**]: Refactor how connections are handled ([#324](https://github.com/PlaceOS/rest-api/pull/324))
- Services/RestAPI [**webhook**]: Resolve 404 on friendly webhook uri ([#325](https://github.com/PlaceOS/rest-api/pull/325))
- Interfaces/Templates [**bookings**]: Add level filter for desks ([#223](https://github.com/PlaceOS/templates/pull/223))
- Interfaces/Templates [**workplace**]: Fix spelling mistake on landing ([#224](https://github.com/PlaceOS/templates/pull/224))
- Interfaces/Templates [**workplace**]: Hide spaces from different buildings ([#225](https://github.com/PlaceOS/templates/pull/225))
- Interfaces/Templates [**catering**]: Show item image on list ([#228](https://github.com/PlaceOS/templates/pull/228))
- Interfaces/Templates [**workplace**]: Load contacts on initialisation ([#227](https://github.com/PlaceOS/templates/pull/227))
- Interfaces/Templates [**workplace**]: [#230](https://github.com/PlaceOS/templates/pull/230): prevent duplicate request
- Interfaces/Templates [**workplace**]: [#234](https://github.com/PlaceOS/templates/pull/234) re-init zone after booking
- Interfaces/Templates [**booking-panel**]: [#238](https://github.com/PlaceOS/templates/pull/238) fix auto populate host
- Interfaces/Templates [**workplace**]: [#235](https://github.com/PlaceOS/templates/pull/235) change upcoming events to only load once and on every return to landing
- Interfaces/Templates [**booking-panel**]: Set overlay header to white ([#238](https://github.com/PlaceOS/templates/pull/238))
- Interfaces/Templates [**workplace**]: Change freebusy to only load once and on every return to landing ([#235](https://github.com/PlaceOS/templates/pull/235))

### Added

- Services/Edge [**edge**]: Improve driver launch reliability ([#247](https://github.com/PlaceOS/edge/pull/247))
- Services/Source [**status_events**]: Update values on startup ([#49](https://github.com/PlaceOS/source/pull/49))
- Interfaces/Templates [**workplace**]: Add language selection ([#222](https://github.com/PlaceOS/templates/pull/222))
- Interfaces/Templates [**workplace**]: Add settings to hide spaces or rooms ([#241](https://github.com/PlaceOS/templates/pull/241))
- Interfaces/Templates [**workplace**]: Add setting to hide colleagues sidebar ([#240](https://github.com/PlaceOS/templates/pull/240))
- Interfaces/Templates [**booking-panel**]: Use current user for qr checkin booking ([#237](https://github.com/PlaceOS/templates/pull/237))
- Libraries/Driver [**transport**]: Provide a http_uri_override for non-http drivers ([#158](https://github.com/PlaceOS/placeos-driver/pull/158))

## 1.2211.1

### Added

- Interfaces/Templates [**form-fields**]: Update user list field to handle visitor details ([#215](https://github.com/PlaceOS/templates/pull/215))

### Fixed

- Services/RestAPI [**webhook**]: Obtain body data before parsing params ([#320](https://github.com/PlaceOS/rest-api/pull/320))
- Services/FrontendLoader [**Dockerfile**]: Improve security, minimal image and non-root user ([16da0b2](https://github.com/PlaceOS/frontend-loader/commit/4a640d9fdc71fe73619d5f3cab6a095a2b5ca04d))
  - Note: for docker-compose installations the `www` volume needs to be re-created

```shell
# stop and remove frontend-loader and nginx containers
docker stop frontend-loader nginx
docker rm frontend-loader nginx

# determine the name of the volume used for www:
docker volume ls

# delete it
docker rm __name_of_www_volume__

# recreate containers
docker-compose up -d frontend-loader nginx
```

## 1.2211.0

### Fixed

- Services/RestAPI [**Dockerfile**]: Add git to the image for querying remotes ([#318](https://github.com/PlaceOS/rest-api/pull/318))
- Services/StaffAPI [**outlook**]: Minor manifest fixes ([#235](https://github.com/PlaceOS/staff-api/pull/235))

### Added

- Services/FrontendLoader [**Dockerfile**]: Build a minimal image ([#79](https://github.com/PlaceOS/frontend-loader/pull/79))

## 1.2210.5

### Fixed

- Interfaces/Templates [**bookings**]: Hide image section when no images present ([#213](https://github.com/PlaceOS/templates/pull/213))
- Interfaces/Templates [**events**]: Fix sizing of detail cards on details modal ([#208](https://github.com/PlaceOS/templates/pull/208))
- Libraries/Models [**email**]: Store emails downcased for simplified querying ([#186](https://github.com/PlaceOS/placeos-models/pull/186))
- Services/RestAPI [**utilities/scopes**]: Add `public` scope to scope list api ([#311](https://github.com/PlaceOS/rest-api/pull/311))
- Services/Source [**publishing/influx_publisher**]: Use float64 for numeric field types ([#46](https://github.com/PlaceOS/source/pull/46))
- Services/Source [**status_events**]: Switch to simple_retry ([#48](https://github.com/PlaceOS/source/pull/48))
- Services/StaffAPI [**events**]: Update ext_data ([#224](https://github.com/PlaceOS/staff-api/pull/224))
- Services/StaffAPI [**events**]: Patching extension metadata ([#227](https://github.com/PlaceOS/staff-api/pull/227))
- Services/StaffAPI [**outlook**]: Adjust outlook config ([#230](https://github.com/PlaceOS/staff-api/pull/230))
- Services/StaffAPI [**models/tenant**]: Allow credentials to be nil ([#231](https://github.com/PlaceOS/staff-api/pull/231))
- Services/StaffAPI [**visitor_checkin**]: When running in delegated permissions mode ([#233](https://github.com/PlaceOS/staff-api/pull/233))
- Services/StaffAPI [**bookings**]: Improve consistency between requests and responses ([#234](https://github.com/PlaceOS/staff-api/pull/234))

### Added

- Interfaces/Backoffice [**admin**]: Add ability to select scopes from autocomplete for api keys ([#289](https://github.com/PlaceOS/backoffice/pull/289))
- Interfaces/Templates [**outlook-addin**]: Add desk flow to addin ([#203](https://github.com/PlaceOS/templates/pull/203))
- Interfaces/Templates [**outlook-addin**]: Move meeting booking to use form logic from workplace ([#202](https://github.com/PlaceOS/templates/pull/202), [#201](https://github.com/PlaceOS/templates/pull/201))
- Interfaces/Templates [**workplace**]: Show visitor bookings on schedule view ([#207](https://github.com/PlaceOS/templates/pull/207))
- Interfaces/Templates [**bookings**]: Add company field for visitor invites ([#211](https://github.com/PlaceOS/templates/pull/211))
- Libraries/Driver [**driver-specs/runner**]: Add support for testing define_setting ([#157](https://github.com/PlaceOS/placeos-driver/pull/157))
- Services/FrontendLoader [**loader**]: Remove git folder once downloaded ([#77](https://github.com/PlaceOS/frontend-loader/pull/77))
- Services/RestAPI [**utilities/current-user**]: Log when an api key is being used ([#312](https://github.com/PlaceOS/rest-api/pull/312))
- Services/RestAPI [**systems**]: Additional options for querying using email ([#315](https://github.com/PlaceOS/rest-api/pull/315))
- Services/RestAPI [**repositories**]: Add additional helper methods ([#317](https://github.com/PlaceOS/rest-api/pull/317))
- Services/StaffAPI [**outlook**]: Generate plugin xml manifest ([#208](https://github.com/PlaceOS/staff-api/pull/208))

## 1.2210.4

### Fixed

- Interfaces/Backoffice [**uploads**]: Fix dropping files to upload ([#199](https://github.com/PlaceOS/backoffice/pull/199))
- Interfaces/Templates [**currency**]: Fix using setting for currency code ([#198](https://github.com/PlaceOS/templates/pull/198))
- Services/RestAPI [**domains**]: Before action must set instance variable ([#310](https://github.com/PlaceOS/rest-api/pull/310))

### Added

- Services/StaffAPI: Add support for running using a service account ([#223](https://github.com/PlaceOS/staff-api/pull/223))

## 1.2210.3

### Added

- Services/Edge [**edge/protocol**]: Start modules as part of the handshake ([#240](https://github.com/PlaceOS/edge/pull/240))

## 1.2210.2

### Fixed

- Interfaces/Backoffice [**ui**]: Fix font issue with settings field ([#286](https://github.com/PlaceOS/backoffice/pull/286))
- Interfaces/Backoffice [**systems**]: Fix role display of modules ([#284](https://github.com/PlaceOS/backoffice/pull/284))
- Interfaces/Backoffice [**systems**]: Show module status a pending when loading initial state ([#283](https://github.com/PlaceOS/backoffice/pull/283))
- Interfaces/Backoffice [**ui**]: Fix z-indexing of upload list ([#277](https://github.com/PlaceOS/backoffice/pull/277))
- Interfaces/Backoffice [**debug**]: Fix error when formatting date strings for debug messages ([#285](https://github.com/PlaceOS/backoffice/pull/285))
- Services/Edge [**edge/transport**]: Ensure reconnect is not missed ([#237](https://github.com/PlaceOS/edge/pull/237))
- Services/Edge [**manager/edge**]: Start modules after registration ([#238](https://github.com/PlaceOS/edge/pull/238))
- Services/FrontendLoader: Querying generic git repos with auth ([#75](https://github.com/PlaceOS/frontend-loader/pull/75))

### Added

- Interfaces/Templates [**booking-panel**]: Add logic to show meeting details on panel ui ([#195](https://github.com/PlaceOS/templates/pull/195))
- Services/Nginx [**cors**]: Allow portal domain origin ([#23](https://github.com/PlaceOS/nginx/pull/23))

## 1.2210.1

### Fixed

- Services/Auth [**dockerfile**]: Add alpine compat package to fix nokogiri dep on arm64 arch ([#83](https://github.com/PlaceOS/auth/pull/83))
- Services/Init [**grant**]: Remove doorkeeper grants without a ttl ([#74](https://github.com/PlaceOS/init/pull/74))
- Services/Source [**mappings**]: Lazy load in the driver ids if they don't exist ([#44](https://github.com/PlaceOS/source/pull/44))

### Added

- Services/FrontendLoader [**api/remotes**]: Allow querying protected remotes ([#74](https://github.com/PlaceOS/frontend-loader/pull/74))

## 1.2210.0

### Fixed

- Interfaces/Backoffice [**uploads**]: Consolidate uploads for system images to use global logic ([#277](https://github.com/PlaceOS/backoffice/pull/277))
- Interfaces/Backoffice [**systems**]: Display loader when module connected state is undefined ([#283](https://github.com/PlaceOS/backoffice/pull/283))
- Interfaces/Templates [**workplace**]: Fix switching calendars on schedule ([#171](https://github.com/PlaceOS/templates/pull/171))
- Libraries/Driver [**edge-storage**]: Ensure key is a string ([#154](https://github.com/PlaceOS/placeos-driver/pull/154))
- Services/Core: Handle driver `module_name` changes in module mappings ([#230](https://github.com/PlaceOS/core/pull/230))
- Services/Core [**edge/transport**]: Reconnect on graceful api disconnect ([#234](https://github.com/PlaceOS/core/pull/234))
- Services/Dispatch [**Dockerfile**]: Revert static build ([#19](https://github.com/PlaceOS/dispatch/pull/19))
- Services/Edge: Handle driver `module_name` changes in module mappings ([#230](https://github.com/PlaceOS/edge/pull/230))
- Services/Edge [**edge/transport**]: Reconnect on graceful api disconnect ([#234](https://github.com/PlaceOS/edge/pull/234))
- Services/FrontendLoader [**Dockerfile**]: Revert static build ([#73](https://github.com/PlaceOS/frontend-loader/pull/73))
- Services/Init [**Dockerfile**]: Don't use edge libraries ([#73](https://github.com/PlaceOS/init/pull/73))
- Services/RestAPI [**Dockerfile**]: Don't use edge libraries ([#298](https://github.com/PlaceOS/rest-api/pull/298))
- Services/SearchIngest [**Dockerfile**]: Revert static build ([#67](https://github.com/PlaceOS/search-ingest/pull/67))
- Services/Source [**Dockerfile**]: Revert static build ([#42](https://github.com/PlaceOS/source/pull/42))
- Services/StaffAPI [**events**]: Get event succeed if the host event can't be fetched ([#218](https://github.com/PlaceOS/staff-api/pull/218))
- Services/Triggers [**Dockerfile**]: Revert static build ([#36](https://github.com/PlaceOS/triggers/pull/36))

### Added

- Interfaces/Templates [**explore**]: Add setting for hiding displayed fields on device tooltip ([#177](https://github.com/PlaceOS/templates/pull/177))
- Libraries/Driver: Migrate to using json schema library ([#155](https://github.com/PlaceOS/placeos-driver/pull/155))
- Services/Core: Update action controller and support arm64 ([#232](https://github.com/PlaceOS/core/pull/232))
- Services/Core [**Dockerfile**]: Revert static build ([#233](https://github.com/PlaceOS/core/pull/233))
- Services/Dispatch: Update libs and add arm64 support ([#18](https://github.com/PlaceOS/dispatch/pull/18))
- Services/Edge: Update action controller and support arm64 ([#232](https://github.com/PlaceOS/edge/pull/232))
- Services/Edge [**Dockerfile**]: Revert static build ([#233](https://github.com/PlaceOS/edge/pull/233))
- Services/FrontendLoader: Add support for arm64 images ([#72](https://github.com/PlaceOS/frontend-loader/pull/72))
- Services/Init: Remove libsodium requirement ([#71](https://github.com/PlaceOS/init/pull/71))
- Services/Init: Add support for arm64 platform ([#72](https://github.com/PlaceOS/init/pull/72))
- Services/RestAPI [**Dockerfile**]: Add support for arm64 builds ([#297](https://github.com/PlaceOS/rest-api/pull/297))
- Services/SearchIngest: Add support for arm64 and update libs ([#66](https://github.com/PlaceOS/search-ingest/pull/66))
- Services/Source: Update action controller ([#40](https://github.com/PlaceOS/source/pull/40))
- Services/Source: Add arm64 image support ([#41](https://github.com/PlaceOS/source/pull/41))
- Services/StaffAPI [**bookings**]: Add event_id column for associating bookings to events ([#207](https://github.com/PlaceOS/staff-api/pull/207))
- Services/StaffAPI [**events**]: Relax when metadata is returned on events ([#210](https://github.com/PlaceOS/staff-api/pull/210))
- Services/StaffAPI: Refactor for self documenting code ([#211](https://github.com/PlaceOS/staff-api/pull/211))
- Services/StaffAPI [**Dockerfile**]: Add support for arm64 images ([#213](https://github.com/PlaceOS/staff-api/pull/213))
- Services/StaffAPI [**tenants**]: Flag if running in delegated mode ([#219](https://github.com/PlaceOS/staff-api/pull/219))
- Services/Triggers: Add arm support ([#34](https://github.com/PlaceOS/triggers/pull/34))
- Services/Triggers: Update to be self documenting ([#35](https://github.com/PlaceOS/triggers/pull/35))
- Services/Triggers: Update pulse client ([#38](https://github.com/PlaceOS/triggers/pull/38))

### Changed

- Services/Core [**api/command**]: Extract attaching debugger ([#224](https://github.com/PlaceOS/core/pull/224))
- Services/Edge [**api/command**]: Extract attaching debugger ([#224](https://github.com/PlaceOS/edge/pull/224))

## 1.2208.0

### Added

- Libraries/Models [**user**]: User metadata should be available to authenticated users ([#181](https://github.com/PlaceOS/placeos-models/pull/181))
- Services/RestAPI [**users**]: Allow any authenticated user to list users ([#296](https://github.com/PlaceOS/rest-api/pull/296))

### Fixed

- Services/Auth [**b2c**]: Rewrite middleware ([#77](https://github.com/PlaceOS/auth/pull/77))
- Services/Auth [**set_continue**]: Same_site cookie option for use in iframes ([#78](https://github.com/PlaceOS/auth/pull/78))

## 1.2207.3

### Fixed

- Interfaces/Templates: Fix build errors
- Interfaces/Templates [**events**]: Add handling of availability checks when not using calendars
- Interfaces/Templates [**mocks**]: Fix people finding mocks
- Interfaces/Templates [**explore**]: Fix searching and locating spaces on maps
- Interfaces/Templates [**map-kiosk**]: Fix locating spaces
- Interfaces/Templates [**workplace**]: Fix shown data on dashboard when no user calendar

### Added

- Interfaces/Templates [**workplace**]: Add logic to handle non-calendar room bookings
- Services/Auth: Support b2c ([#75](https://github.com/PlaceOS/auth/pull/75))

## 1.2207.2

### Fixed

- Clients/Typescript [**clusters**]: Update loading of process model for clusters
- Interfaces/Backoffice [**admin**]: Fix loading of cluster processes
- Interfaces/Templates [**workplace**]: Remove required validation for old flow
- Interfaces/Templates [**workplace**]: Disable confirm if form invalid
- Interfaces/Templates [**workplace**]: Remove desk from booking
- Interfaces/Templates [**components**]: Fix custom tooltip opening on touch devices
- Interfaces/Templates [**spaces**]: Display image on select list
- Services/Core [**process_check**]: Fix a race condition ([#226](https://github.com/PlaceOS/core/pull/226))

### Added

- Interfaces/Templates [**payments**]: Add ability to make payments
- Libraries/Driver [**protocol**]: Review and optimize ([#153](https://github.com/PlaceOS/placeos-driver/pull/153))

## 1.2207.1

### Fixed

- Interfaces/Templates [**events**]: Fix post form call
- Interfaces/Templates [**events**]: Add fallback for room ids when checking availability
- Interfaces/Templates [**form-fields**]: Add host select form field for selecting delegated users as host for bookings
- Interfaces/Templates [**workplace**]: Add names to space booking form fields
- Interfaces/Templates [**explore**]: Set booking type to desk when making desk booking from map
- Interfaces/Templates: Fix adding and removing items from asset and catering fields
- Interfaces/Templates [**explore**]: Minor tweak to desk name display on info tooltip
- Interfaces/Templates: Fix booking and event form get values from disabled fields
- Interfaces/Templates [**workplace**]: Fix desk flow form
- Interfaces/Templates [**workplace**]: Fix selecting user calendars on schedule page ([#171](https://github.com/PlaceOS/templates/pull/171))
- Interfaces/Templates: Remove empty fields when making booking/event requests
- Libraries/Driver [**interface/lighting**]: Fix `join_with` helper
- Services/Build [**Client#compiled?**]: Add missing parameters and authorization
- Services/Build [**repository_store**]: Relative paths for commit listing
- Services/Core [**control_system_modules**]: Ensure correct totals when refreshing ([#222](https://github.com/PlaceOS/core/pull/222))
- Services/Nginx [**nginx.conf**]: Add trailing / redirect to app requests ([#20](https://github.com/PlaceOS/nginx/pull/20))
- Services/StaffAPI [**utilities/helpers**]: Ensure emails are downcased ([#202](https://github.com/PlaceOS/staff-api/pull/202))

### Added

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
- Interfaces/Templates [**payments**]: Add form field for card inputs
- Interfaces/Templates [**org**]: Add setting to allow setting a default building
- Libraries/Driver: Improve memory usage ([#150](https://github.com/PlaceOS/placeos-driver/pull/150))
- Libraries/Driver: Add termination check helper ([#152](https://github.com/PlaceOS/placeos-driver/pull/152))
- Services/Core [**module_manager**]: Periodically check that processes are alive ([#225](https://github.com/PlaceOS/core/pull/225))

### Changed

- Services/Auth [**deps**]: Bump rails-html-sanitizer from 1.4.2 to 1.4.3 ([#73](https://github.com/PlaceOS/auth/pull/73))
- Services/Auth [**deps**]: Bump tzinfo from 1.2.9 to 1.2.10 ([#74](https://github.com/PlaceOS/auth/pull/74))
- Services/Build [**client**]: Return an object from compiled endpoint

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