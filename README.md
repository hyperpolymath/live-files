<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2025-2026 Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->

Jonathan D.A. Jewell \<[j.d.a.jewell@open.ac](j.d.a.jewell@open.ac).uk\>
:toc: macro :toclevels: 2 :license: MPL-2.0 :url-repo:
<https://github.com/hyperpolymath/live-files>

[![License](https://img.shields.io/badge/license-MPL--2.0-blue)](LICENSE) ![RSR
Compliant](https://img.shields.io/badge/RSR-compliant-brightgreen) [![Hypatia Scan](https://github.com/hyperpolymath/live-files/actions/workflows/hypatia-scan.yml/badge.svg)](https://github.com/hyperpolymath/live-files/actions/workflows/hypatia-scan.yml)

<div id="toc">

</div>

# Overview

**live-files** is the RSR 2026 Control Plane for the Hyperpolymath
Epistemic Fleet. It contains the orchestration logic for all satellite
and core repos, managing the tier-based organisational structure of 275+
repositories across the ecosystem.

# Features

- **Filing logic** (`just` `file`) — Moves root-level repos into their
  correct tiers (Core, Governance, Infrastructure, SSG, MCP, Research)

- **Restoration** (`must` `restore`) — Fixes symlinks and directory
  structures

- **Visibility** (`just` `v`) — Two-ply colour-coded map of the
  Epistemic Fleet

- **Tier mapping** — Hierarchical organisation of the entire repo
  ecosystem

# Quick Start

```bash
# View the Epistemic Fleet map
just v

# File repos into their correct tiers
just file

# Restore broken symlinks
./must restore
```

# Project Structure

    live-files/
    +-- 0-AI-MANIFEST.a2ml         # AI agent entry point
    +-- Justfile                    # Task runner (no Makefiles)
    +-- must                        # Restoration utility
    +-- scripts/
    |   +-- map_ecosystem.sh        # Colour-coded fleet map
    +-- .machine_readable/          # SCM metadata files
    |   +-- .machine_readable/6a2/STATE.a2ml
    |   +-- .machine_readable/6a2/META.a2ml
    |   +-- .machine_readable/6a2/ECOSYSTEM.a2ml
    |   +-- .machine_readable/6a2/AGENTIC.a2ml
    |   +-- .machine_readable/6a2/NEUROSYM.a2ml
    |   +-- .machine_readable/6a2/PLAYBOOK.a2ml
    +-- .well-known/                # Protocol files
    |   +-- security.txt
    |   +-- humans.txt
    |   +-- ai.txt
    +-- .github/
        +-- workflows/              # CI/CD workflows
        +-- CODEOWNERS

# Standards

- No Makefiles — uses Just/Nickel only

- Oxford British English throughout

- nerdctl for all container tasks

- MPL-2.0 licence

# Licence

This project is licensed under the [Palimpsest Licence
(MPL-2.0)](LICENSE).

Copyright (c) 2025-2026 Jonathan D.A. Jewell (hyperpolymath)
\<[j.d.a.jewell@open.ac](j.d.a.jewell@open.ac).uk\>
