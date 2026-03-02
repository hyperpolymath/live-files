;; SPDX-License-Identifier: PMPL-1.0-or-later
(ecosystem (metadata (version "0.2.0") (last-updated "2026-03-02"))
  (project
    (name "live-files")
    (purpose "RSR 2026 Control Plane for the Hyperpolymath Epistemic Fleet")
    (role control-plane))
  (related-projects
    (project "formdb" (relationship epistemic-core))
    (project "casket-ssg" (relationship ssg-satellite))
    (project "hypatia" (relationship ci-cd-intelligence))
    (project "gitbot-fleet" (relationship bot-orchestration))))
