# Multi-tenancy test image build

Owner: stakach. Start date: 2026-11-18 (Australia/Sydney). Tracking: [PlaceOS/rest-api#467](https://github.com/PlaceOS/rest-api/issues/467). Parent: [#465](https://github.com/PlaceOS/rest-api/issues/465).

Build all 13 services discovered by the canonical platform build using Buildx for `linux/amd64` and `linux/arm64`, publishing only `docker.io/placeos/<service>:multi-tenancy`. The exact planned inputs are in `multi-tenancy-images.json`. Models is a library/migration input, not a runtime image.

## Plan and verification

- [x] Refresh and verify the four feature heads, their expected branches and green CI; preserve all unrelated nightly service pins.
- [ ] Pin the four feature gitlinks, set VERSION=multi-tenancy and add an explicit images-only workflow option.
- [ ] Validate the exact 13-source/image matrix and workflow; an images-only run must skip the entire Git tagging/release/notification/UI-dispatch job.
- [ ] Obtain the configured release-team approval for this concrete custom build. Do not weaken or bypass the release environment protections.
- [ ] Build and publish both architectures through the canonical workflow.
- [ ] Inspect each registry manifest and OCI revision/version labels, record digests and verify init migration payload.

## Publication gate

The existing `release` environment requires review from PlaceOS/release and only permits nightly/monthly/preview branches. This dedicated `ai/multi-tenancy-images` branch is not currently allowed. Any temporary allowlist addition and approval must be explicit; retain all team-review requirements and remove the one added branch rule after publishing. Local Docker has no registry credentials.

The build does not merge the feature PRs, activate enforcement, migrate a cluster, modify driver/interface source, or publish latest/preview/nightly tags. Service Dockerfiles and their locked dependencies remain the build authority; platform library gitlinks do not inject dependencies into other services. Init's migration source and REST/Staff model locks point at the reviewed models branch/head.

## Review

Pending workflow/source-manifest validation, protected publication approval and multi-architecture registry verification. No images have been published by this branch yet.
