# Changelog

All notable changes to PlaceOS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [PlaceOS Platform Versioning](https://github.com/PlaceOS/PlaceOS/blob/release/README.md#platform-versioning).

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
