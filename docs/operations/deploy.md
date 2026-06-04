# Deployment Guide

## Environments

| Environment | URL | Branch | Auto-deploy |
|------------|-----|--------|-------------|
| Development | | develop | Yes |
| Staging | | release/* | Yes |
| Production | | main | Manual |

## Prerequisites

- [ ] Access to deployment platform
- [ ] Environment variables configured
- [ ] Secrets configured in GitHub

## Deploy Process

### Automatic (CI/CD)

1. Merge PR to target branch
2. CI pipeline runs tests
3. Build artifacts are created
4. Deploy to target environment

### Manual (Emergency)

```bash
# Only use for hotfixes when CI is down
make build
make deploy ENV=production
```

## Rollback

```bash
# Revert to previous version
# Option 1: Revert the commit
git revert <commit-hash>
git push origin main

# Option 2: Redeploy previous tag
# Platform-specific instructions here
```

## Health Checks

```bash
./scripts/check-health.sh https://your-app.com/health
```
