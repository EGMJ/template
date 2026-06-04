# ADR-001: Use Release Please for Automated Releases

## Status

Accepted

## Date

2024-01-01

## Context

We need an automated release management strategy that:
- Generates changelogs from conventional commits
- Handles semantic versioning automatically
- Creates GitHub Releases
- Works well with small teams

Options considered: semantic-release, release-please, custom GitHub Actions.

## Decision

Use **Release Please** (Google's release automation tool).

### Why not semantic-release?
- Requires more npm dependencies and plugins
- Heavier configuration
- Publishes on every merge to main (no review step)

### Why not custom actions?
- Maintenance burden
- Reinventing well-solved problems
- Harder to test and debug

### Why Release Please?
- Creates a "Release PR" that accumulates changes — gives a review step before publishing
- Minimal configuration
- Supports monorepos
- First-class GitHub Action
- Language-agnostic (node, python, go, rust, etc.)

## Consequences

### Positive
- All releases go through a PR — reviewable and auditable
- Changelog is auto-generated from conventional commits
- Zero manual version bumping

### Negative
- Requires strict conventional commit discipline
- Two-step release process (merge code, then merge release PR)
