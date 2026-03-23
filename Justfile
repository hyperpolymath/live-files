# SPDX-License-Identifier: PMPL-1.0-or-later
# Live-Files Dashboard — Task runner for the RSR 2026 Control Plane
v:
    @./scripts/map_ecosystem.sh

file:
    @../scripts/file_ecosystem.sh

ssg-global:
    @cd ../formdb && just docs-build

# Run panic-attacker pre-commit scan
assail:
    @command -v panic-attack >/dev/null 2>&1 && panic-attack assail . || echo "panic-attack not found — install from https://github.com/hyperpolymath/panic-attacker"
