---
name: database
description: Guidelines for database design and operations
---

# Database

When working with databases:

## Schema Design
- Use migrations for all schema changes — never manual DDL
- Add indexes for foreign keys and WHERE clause columns
- Use appropriate data types (don't store dates as strings)
- Add NOT NULL constraints by default; allow NULL only with reason
- Include created_at and updated_at timestamps

## Queries
- Use parameterized queries — never string interpolation
- Avoid SELECT * — list explicit columns
- Use EXPLAIN to analyze query plans for slow queries
- Paginate list queries (LIMIT + OFFSET or cursor)

## Migrations
- Migrations must be reversible (up + down)
- One logical change per migration
- Test migrations against production-like data volumes
- Never modify a deployed migration — create a new one

## Operations
- Use connection pooling
- Set statement timeouts
- Monitor slow query logs
- Back up before destructive migrations
