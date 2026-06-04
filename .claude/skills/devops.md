---
name: devops
description: Guidelines for infrastructure and CI/CD tasks
---

# DevOps

When working on infrastructure and CI/CD:

## Docker
- Use multi-stage builds
- Run as non-root user
- Pin base image versions
- Order layers by change frequency (least → most)
- Add health checks

## CI/CD
- Keep pipelines fast (< 10 min target)
- Cache dependencies between runs
- Run linting before tests (fail fast)
- Use matrix builds for multi-version testing
- Never store secrets in workflow files

## Infrastructure as Code
- All infrastructure changes through code
- Review infra changes like application code
- Use separate state per environment
- Tag all resources with project and environment
