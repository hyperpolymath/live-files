<!-- SPDX-License-Identifier: PMPL-1.0-or-later -->
<!-- TOPOLOGY.md — Project architecture map and completion dashboard -->
<!-- Last updated: 2026-02-19 -->

# Live-Files (RSR 2026 Control Plane) — Project Topology

## System Architecture

```
                        ┌─────────────────────────────────────────┐
                        │              OPERATOR / AGENT           │
                        │        (Justfile / Must / CLI)          │
                        └───────────────────┬─────────────────────┘
                                            │ Orchestration
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │           CONTROL PLANE LAYER           │
                        │  ┌───────────┐  ┌───────────────────┐  │
                        │  │  Filing   │  │   Restoration     │  │
                        │  │  Logic    │  │   (must)          │  │
                        │  └─────┬─────┘  └────────┬──────────┘  │
                        └────────│─────────────────│──────────────┘
                                 │                 │
                                 ▼                 ▼
                        ┌─────────────────────────────────────────┐
                        │           REPO TIER STRUCTURE           │
                        │  ┌───────────┐  ┌───────────┐  ┌───────┐│
                        │  │  Core     │  │ Governance│  │ Infra ││
                        │  └───────────┘  └───────────┘  └───────┘│
                        │  ┌───────────┐  ┌───────────┐  ┌───────┐│
                        │  │  SSG      │  │  MCP      │  │ Resrch││
                        │  └───────────┘  └───────────┘  └───────┘│
                        └───────────────────┬─────────────────────┘
                                            │
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │          EPISTEMIC FLEET (275+)         │
                        │      (Symlinks, Tiered Directories)     │
                        └─────────────────────────────────────────┘

                        ┌─────────────────────────────────────────┐
                        │          REPO INFRASTRUCTURE            │
                        │  Justfile (No Make) .machine_readable/  │
                        │  Nickel Configs     0-AI-MANIFEST.a2ml  │
                        └─────────────────────────────────────────┘
```

## Completion Dashboard

```
COMPONENT                          STATUS              NOTES
─────────────────────────────────  ──────────────────  ─────────────────────────────────
CONTROL LOGIC
  Filing Logic (just file)          ██████████ 100%    Tier-based organization stable
  Restoration (must restore)        ██████████ 100%    Symlink fixing verified
  Visibility (just v)               ████████░░  80%    Color-coded map active
  Tier Mapping (Core/Gov/etc)       ██████████ 100%    Hierarchical structure stable

INFRASTRUCTURE
  Justfile Automation               ██████████ 100%    Standard build/file tasks
  .machine_readable/                ██████████ 100%    STATE tracking active
  0-AI-MANIFEST.a2ml                ██████████ 100%    AI entry point verified

REPO INFRASTRUCTURE
  Nickel Integration                ████████░░  80%    Type-safe filing refining
  Container Tooling (nerdctl)       ██████████ 100%    Production standard verified

─────────────────────────────────────────────────────────────────────────────
OVERALL:                            █████████░  ~90%   Control plane operational
```

## Key Dependencies

```
Nickel Policy ───► Justfile (Filing) ───► Directory Structure ──► Visibility
     │                 │                      │
     ▼                 ▼                      ▼
  Mustfile ─────► Restoration ──────────► Symlinks
```

## Update Protocol

This file is maintained by both humans and AI agents. When updating:

1. **After completing a component**: Change its bar and percentage
2. **After adding a component**: Add a new row in the appropriate section
3. **After architectural changes**: Update the ASCII diagram
4. **Date**: Update the `Last updated` comment at the top of this file

Progress bars use: `█` (filled) and `░` (empty), 10 characters wide.
Percentages: 0%, 10%, 20%, ... 100% (in 10% increments).
