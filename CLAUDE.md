# CLAUDE.md — Project Intelligence

## Project Overview

<!-- Replace with your project description -->
This is a template repository. When creating a new project from this template, update this file with project-specific conventions.

## Tech Stack

<!-- List your technologies -->
- Language:
- Framework:
- Database:
- Infrastructure:

## Code Conventions

### Naming
- Files: kebab-case (e.g., `user-service.ts`)
- Classes: PascalCase
- Functions/variables: camelCase (JS/TS) or snake_case (Python)
- Constants: UPPER_SNAKE_CASE
- Database tables: snake_case, plural (e.g., `user_accounts`)

### Architecture
- Follow the established directory structure
- New features go in their own module/directory
- Shared utilities go in `src/shared/` or `src/lib/`
- Keep modules loosely coupled

### Git
- Use Conventional Commits: `type(scope): description`
- Types: feat, fix, docs, style, refactor, perf, test, build, ci, chore
- Branch naming: `feature/description`, `fix/description`, `hotfix/description`
- Keep commits atomic — one logical change per commit
- Write imperative mood commit messages

### Code Quality
- No `any` types (TypeScript) — use proper typing
- No `# type: ignore` (Python) without explanation
- Functions should do one thing and be under 40 lines
- Maximum file length: 300 lines — split if larger
- Prefer composition over inheritance
- Prefer pure functions where possible

### Testing
- Every new feature needs tests
- Test behavior, not implementation
- Use descriptive test names: `should return 404 when user not found`
- Minimum coverage target: 80%
- Integration tests for API endpoints
- Unit tests for business logic

### Error Handling
- Never swallow errors silently
- Use typed/custom errors for domain-specific failures
- Log errors with context (request ID, user ID, operation)
- Return meaningful error messages to clients

### Documentation
- Update README.md when adding new setup steps
- Add JSDoc/docstrings only for public APIs
- Document non-obvious business rules inline
- Keep ADRs up to date for architectural decisions

### Security
- Never commit secrets or credentials
- Use environment variables for configuration
- Validate all external input
- Use parameterized queries — never string interpolation for SQL
- Follow OWASP Top 10 guidelines

## What to Avoid

- Don't add dependencies without justification
- Don't premature-optimize
- Don't write comments that repeat the code
- Don't leave TODO comments without a linked issue
- Don't mix refactoring with feature changes in the same PR
- Don't bypass CI checks
