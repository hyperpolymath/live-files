;; SPDX-License-Identifier: PMPL-1.0-or-later
(state (metadata (version "0.2.0") (last-updated "2026-03-02") (status active))
  (project-context
    (name "live-files")
    (purpose "RSR 2026 Control Plane — orchestration logic for all satellite and core repos in the Hyperpolymath Epistemic Fleet")
    (completion-percentage 90))
  (components
    (component "filing-logic" (status complete) (description "Tier-based organisation via just file"))
    (component "restoration" (status complete) (description "Symlink fixing via must restore"))
    (component "visibility" (status active) (description "Colour-coded tier map via just v"))
    (component "tier-mapping" (status complete) (description "Core/Governance/Infra/SSG/MCP/Research hierarchy")))
  (critical-next-actions
    (action "Refine Nickel integration for type-safe filing")
    (action "Expand visibility map to full fleet coverage")))
