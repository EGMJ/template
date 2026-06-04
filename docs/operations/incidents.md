# Incident Response

## Severity Levels

| Level | Description | Response Time | Example |
|-------|------------|--------------|---------|
| SEV-1 | System down, data loss | 15 min | Production outage |
| SEV-2 | Major feature broken | 1 hour | Auth failures |
| SEV-3 | Degraded performance | 4 hours | Slow responses |
| SEV-4 | Minor issue | Next business day | UI glitch |

## Response Playbook

### 1. Detect
- Automated alerts fire
- User report received

### 2. Triage
- Confirm the issue
- Assess severity
- Notify stakeholders

### 3. Mitigate
- Apply temporary fix or rollback
- Communicate status

### 4. Resolve
- Root cause analysis
- Permanent fix
- Deploy and verify

### 5. Post-Mortem
- Document timeline
- Identify root cause
- Action items to prevent recurrence

## Post-Mortem Template

```markdown
# Incident: [Title]
**Date:** YYYY-MM-DD
**Severity:** SEV-X
**Duration:** X hours
**Impact:** [who/what was affected]

## Timeline
- HH:MM - Event

## Root Cause
[What caused the incident]

## Resolution
[How it was fixed]

## Action Items
- [ ] Item 1
- [ ] Item 2

## Lessons Learned
-
```
