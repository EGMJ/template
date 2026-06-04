# Monitoring and Observability

## Key Metrics

| Metric | Threshold | Alert |
|--------|----------|-------|
| Response time (p95) | < 200ms | Warning > 500ms, Critical > 1s |
| Error rate | < 1% | Warning > 2%, Critical > 5% |
| CPU usage | < 70% | Warning > 80%, Critical > 90% |
| Memory usage | < 70% | Warning > 80%, Critical > 90% |

## Tools

<!-- Configure based on your stack -->

- **Logging:** <!-- Datadog, CloudWatch, ELK, etc. -->
- **Metrics:** <!-- Prometheus, Grafana, etc. -->
- **Tracing:** <!-- Jaeger, Zipkin, etc. -->
- **Alerting:** <!-- PagerDuty, OpsGenie, etc. -->

## Dashboards

| Dashboard | URL | Purpose |
|-----------|-----|---------|
|           |     |         |

## Log Levels

| Level | When to use |
|-------|------------|
| ERROR | Unexpected failures that need attention |
| WARN | Degraded but functional, or deprecated usage |
| INFO | Key business events and state transitions |
| DEBUG | Diagnostic details (development only) |
