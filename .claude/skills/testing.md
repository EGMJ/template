---
name: testing
description: Guidelines for writing tests
---

# Testing

When writing or modifying tests:

## Structure
- Arrange-Act-Assert pattern
- One assertion per test when possible
- Use descriptive names: `should_[expected]_when_[condition]`
- Group related tests with describe/context blocks

## Unit Tests
- Test pure logic and business rules
- Mock external dependencies (HTTP, DB, filesystem)
- Cover edge cases: null, empty, boundary values
- Test error paths, not just happy paths

## Integration Tests
- Test real interactions between components
- Use test databases with migrations
- Clean up test data after each test
- Test API contracts end-to-end

## What NOT to Test
- Framework internals
- Trivial getters/setters
- Third-party library behavior
- Implementation details that may change
