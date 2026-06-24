<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2026 Jonathan D.A. Jewell (hyperpolymath)
-->

# Changelog

All notable changes to `live-files` will be documented in this file.

This file is generated from conventional commits by the
[`changelog-reusable.yml`](https://github.com/hyperpolymath/standards/blob/main/.github/workflows/changelog-reusable.yml)
workflow (`hyperpolymath/standards#206`). Adopt the workflow in this repo's CI to keep this file in sync automatically — see
[`templates/cliff.toml`](https://github.com/hyperpolymath/standards/blob/main/templates/cliff.toml)
for the canonical config.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/);
this project aims to follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- feat(crg): add crg-grade and crg-badge justfile recipes
- feat: add stapeln.toml container definition
- feat: deploy UX Manifesto infrastructure
- feat: add CLADE.a2ml — clade taxonomy declaration
- feat: add mirror.yml workflow for GitLab/Bitbucket mirroring
- feat: add AI Gatekeeper Protocol manifest
- feat: add critical security workflows
- feat(ci): enable Hypatia scanning

### Fixed

- fix(ci): bump a2ml/k9-validate-action pins to canonical (standards#85) (#10)
- fix(ci): sync hypatia-scan.yml to canonical (kill cd-scanner build drift) (#9)
- fix(ci): adopt canonical hypatia-scan.yml (env.HOME/scanner-layout + Comment-step gate) (#8)
- fix: RSR compliance — fix SPDX headers, resolve template placeholders, add .well-known
- fix: remove duplicate SCM files from root

### Changed

- refactor: migrate 6SCM → 6A2 (.scm → .a2ml format)

### Documentation

- docs: add TEST-NEEDS.md (CRG C)
- docs: update SCM files with project information
- docs: add CODE_OF_CONDUCT.md
- docs: add CONTRIBUTING.md
- docs: add SECURITY.md for vulnerability reporting
- docs: add checkpoint files for state tracking

### CI

- ci: redistribute concurrency-cancel guard to read-only check workflows (#12)
- ci: bump actions/upload-artifact SHA to current v4 (#6)
- ci: SHA-pin hyperpolymath validate-actions in dogfood-gate
- ci: wire hypatia-scan.yml to query own Dependabot alerts
- ci: deploy dogfood-gate, fix hypatia-scan, add pre-commit hooks

## Pre-history

Prior commits to this file's introduction are recorded in git history but not formally classified into Keep-a-Changelog sections. To backfill, run `git cliff -o CHANGELOG.md` locally using the canonical [`cliff.toml`](https://github.com/hyperpolymath/standards/blob/main/templates/cliff.toml) — this is one-shot mechanical work.

---

<!-- This file was seeded by the 2026-05-26 estate tech-debt audit follow-up (Row-2 Phase 3); see [`hyperpolymath/standards/docs/audits/2026-05-26-estate-documentation-debt.md`](https://github.com/hyperpolymath/standards/blob/main/docs/audits/2026-05-26-estate-documentation-debt.md). -->
