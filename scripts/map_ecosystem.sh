#!/bin/bash
# SPDX-License-Identifier: PMPL-1.0-or-later
# map_ecosystem.sh — Colour-coded tier map of the Hyperpolymath Epistemic Fleet
CYAN='\033[0;36m'; PURPLE='\033[0;35m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
BLUE='\033[0;34m'; RED='\033[0;31m'; NC='\033[0m'
echo -e "${CYAN}--- Hyperpolymath Epistemic Fleet (Level 2) ---${NC}"
print_tier() {
    local dir="../$1"; local col=$2; local label=$3
    if [ -d "$dir" ] && [ "$(ls -A "$dir")" ]; then
        echo -e "${col}📂 $label ($1/)${NC}"
        ls -F "$dir" | grep "/" | head -n 10 | sed "s/^/  ├── /" | xargs -I {} echo -e "${col}{}${NC}"
    fi
}
print_tier "formdb" "$CYAN" "Epistemic Core"
print_tier "governance" "$PURPLE" "Governance (6SCM)"
print_tier "infrastructure" "$GREEN" "Infrastructure"
print_tier "ssg" "$YELLOW" "SSG Satellites"
print_tier "mcp" "$BLUE" "Model Context Protocols"
print_tier "research" "$BLUE" "Research"
print_tier "tools" "$NC" "Utilities"
