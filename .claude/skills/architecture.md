---
name: architecture
description: Guidelines for architectural decisions and system design
---

# Architecture

When making architectural decisions:

## Principles
- Favor simplicity over cleverness
- Design for change — isolate what varies
- Prefer composition over inheritance
- Apply SOLID principles pragmatically, not dogmatically
- Start monolith, extract services only when justified

## Decision Making
- Document significant decisions as ADRs in `docs/architecture/adr/`
- Consider operational complexity, not just code elegance
- Evaluate: team size, timeline, maintenance cost
- Prototype before committing to large changes

## Module Design
- Clear boundaries and interfaces between modules
- Dependencies flow inward (domain has no external deps)
- Shared code must be genuinely shared, not "might be useful"
- Avoid circular dependencies

## Data Architecture
- Define clear ownership of data
- Use events for cross-module communication
- Design schemas for query patterns
- Plan for data migration from day one
