---
name: backend-development
description: Guidelines for backend development tasks
---

# Backend Development

When working on backend code:

## API Design
- Use RESTful conventions: proper HTTP methods and status codes
- Version APIs via URL prefix (`/api/v1/`)
- Return consistent response envelopes: `{ data, error, meta }`
- Implement pagination for list endpoints

## Database
- Always use migrations for schema changes
- Index foreign keys and frequently queried columns
- Use transactions for multi-table operations
- Never use `SELECT *` in production code

## Error Handling
- Use domain-specific error classes
- Return appropriate HTTP status codes
- Log errors with request context
- Never expose internal errors to clients

## Performance
- Add database indexes for queries in hot paths
- Use connection pooling
- Cache expensive computations
- Profile before optimizing
