# Multi-tenancy test image build

Owner: stakach. Start date: 2026-11-18 (Australia/Sydney). Tracking: [PlaceOS/rest-api#467](https://github.com/PlaceOS/rest-api/issues/467). Parent: [#465](https://github.com/PlaceOS/rest-api/issues/465).

Build all 13 services discovered by the canonical platform build using Buildx for `linux/amd64` and `linux/arm64`, publishing only `docker.io/placeos/<service>:multi-tenancy`. The current planned inputs are in `multi-tenancy-images.json`. Models is a library/migration input, not a runtime image. The earlier verified publication is recorded separately in `multi-tenancy-image-receipt.json` and `multi-tenancy-images.lock`; those files remain immutable evidence for that snapshot.

## Refresh published on 2026-11-23

[Build 45105437771](https://github.com/PlaceOS/PlaceOS/actions/runs/45105437771) published the 13 `docker.io/placeos/<service>:multi-tenancy` tags from PlaceOS commit `96bd0b73bf6ad73c1eeb6126988b8cee9884b38c`, based on `nightly` commit `ca943cd6`. All 26 native architecture builds and 13 publication jobs passed. GitHub skipped Tag and release in images-only mode.

The [refresh receipt](multi-tenancy-image-receipt-96bd0b73.json) records immutable pull references and source verification for both architectures of each image. Live Docker Hub platform digests match the native build outputs, and the registry config blobs match the expected source revision and tag on both architectures. The temporary feature-branch rule was removed after verification and the release environment matched its original configuration.

Use `docker.io/placeos/init@sha256:d29be022c138a97172a0f97429de2dc0f5af0ee8b13b5463346b814a70f28599` to rerun the existing init job. Both init build logs show models `26b6225` and the migration copy step. Docker Hub rate-limited the anonymous manifests, so the new init image contents could not be checked independently by pull.

## Original publication plan and verification

- [x] Refresh and verify the four feature heads, their expected branches and green CI; preserve all unrelated nightly service pins.
- [x] Pin the four feature gitlinks, set VERSION=multi-tenancy and add an explicit images-only workflow option.
- [x] Validate the exact 13-source/image matrix and workflow; an images-only run must skip the entire Git tagging/release/notification/UI-dispatch job.
- [x] Obtain the configured release-team approval for this concrete custom build. Do not weaken or bypass the release environment protections.
- [x] Build and publish both architectures through the canonical workflow.
- [x] Inspect each registry manifest and OCI revision/version labels, record digests and verify init migration payload.

## Verified publication on 2026-11-18

All13 `docker.io/placeos/<service>:multi-tenancy` images are published for both `linux/amd64` and `linux/arm64`. Docker selects the host architecture automatically. The original source/image set, verified index and per-platform digests, OCI labels and test evidence are in `multi-tenancy-image-receipt.json`. `multi-tenancy-images.lock` lists immutable pull references for a cluster rollout. No cluster configuration or database was changed.

The source snapshot remains **cca78ae53610853ac3550d488931736644746dc6**. [Original build44216582470](https://github.com/PlaceOS/PlaceOS/actions/runs/44216582470) published12 images; init exhausted memory while two platform compilers overlapped. [Recovery44225358298](https://github.com/PlaceOS/PlaceOS/actions/runs/44225358298) successfully published init only, using execution workflow9d7e11dd with source_ref=cca78ae5. Both runs skipped Tag and release.

Init already limited Crystal LLVM workers with --threads=1. The recovery adds init-only BuildKit max-parallelism1, so its compiler processes run serially. All other jobs finished before retrying init, per Steve's guidance. Recovery controls preserve the source SHA for checkout and PLACE_COMMIT and select an exact discovered service; defaults and invalid-input cases were tested. actionlint, TOML parsing, current-head Shard Report CI and independent review passed.

Registry verification on 2026-11-18 confirmed all13 tags matched the recorded immutable index digests, with both requested architectures and the expected source/version labels. REST2.0.0 and Staff1.2.0 execute --version successfully on both architectures with networking disabled. On both init architectures, all149 database files byte-match models716ca76; pg_dump18.7 starts successfully. Payload inspection used containers that were never started; no migration ran.

The user approved only this test-image publication. Temporary release branch rule67207274 was removed after verification; the original branch policies and release-team review remain intact. No Git tags/releases, stable-channel tags, chat notifications or UI publication were performed by these runs. The four source feature PRs remain unmerged, Staff stays domain-based and driver/interface source is unchanged.

## Previous snapshot follow-up

The earlier snapshot recorded [REST#468](https://github.com/PlaceOS/rest-api/issues/468), a pre-existing /platform display-label bug: character-set stripping renders the custom name as mutitnny. Registry tags and OCI version labels remain exactly multi-tenancy. The approved application sources were retained; use the verified image references/digests for candidate identification.
