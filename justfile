# SPDX-License-Identifier: PMPL-1.0-or-later
# Live-Files Dashboard — Task runner for the RSR 2026 Control Plane
v:
    @./scripts/map_ecosystem.sh

file:
    @../scripts/file_ecosystem.sh

ssg-global:
    @cd ../formdb && just docs-build
