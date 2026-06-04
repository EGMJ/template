---
name: security
description: Security guidelines for code review and development
---

# Security

When reviewing or writing code for security:

## Input Validation
- Validate all external input at system boundaries
- Use allowlists over denylists
- Sanitize data for the output context (HTML, SQL, shell)
- Limit input sizes and rates

## Authentication & Authorization
- Never roll custom crypto or auth
- Use established libraries (bcrypt, argon2 for passwords)
- Implement proper session management
- Check authorization on every request, not just UI

## Data Protection
- Encrypt sensitive data at rest and in transit
- Never log sensitive data (passwords, tokens, PII)
- Use environment variables for secrets
- Implement proper key rotation

## OWASP Top 10
- SQL Injection: use parameterized queries
- XSS: escape output, use CSP headers
- CSRF: use anti-CSRF tokens
- Broken Auth: rate limit, lockout, MFA
- Security Misconfiguration: minimize surface area
