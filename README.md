# Project Name

<!-- Replace with your project description -->

> **This repository was created from the [Organization Template](link-to-template).** Delete this line after setup.

## Quick Start

```bash
# Clone and setup
git clone <repo-url>
cd <project>
make setup

# Start development
make up        # Start services (Docker)
make logs      # View logs
make test      # Run tests
make lint      # Run linters
```

## Structure

```
├── .claude/              # Claude Code AI configuration
│   └── skills/           # Domain-specific AI guidelines
├── .devcontainer/        # Dev Container configuration
├── .github/              # GitHub configuration
│   ├── ISSUE_TEMPLATE/   # Issue templates
│   ├── workflows/        # CI/CD pipelines
│   ├── CODEOWNERS        # Code ownership
│   ├── dependabot.yml    # Dependency updates
│   └── PULL_REQUEST_TEMPLATE.md
├── docker/               # Docker configuration
├── docs/                 # Documentation
│   ├── architecture/     # System design and ADRs
│   ├── business/         # Business model and strategy
│   ├── operations/       # Deploy, monitoring, incidents
│   └── product/          # Vision, roadmap, requirements
├── scripts/              # Development scripts
├── .editorconfig         # Editor settings
├── .env.example          # Environment variables template
├── .gitattributes        # Git file handling rules
├── .gitleaks.toml        # Secret scanning config
├── CLAUDE.md             # AI assistant conventions
└── Makefile              # Development commands
```

## Development

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) (recommended)
- [Make](https://www.gnu.org/software/make/)
- Runtime for your project (Node.js, Python, Go, etc.)

### Available Commands

| Command | Description |
|---------|-------------|
| `make help` | Show all available commands |
| `make setup` | Install dependencies and configure environment |
| `make up` | Start all services |
| `make down` | Stop all services |
| `make restart` | Restart services |
| `make logs` | Stream service logs |
| `make shell` | Open a shell in the app container |
| `make test` | Run tests |
| `make lint` | Run linters |
| `make format` | Auto-format code |
| `make build` | Build the application |
| `make clean` | Remove build artifacts |

### Git Workflow

This project uses **GitHub Flow** with Conventional Commits:

| Branch | Purpose | Merges to |
|--------|---------|-----------|
| `main` | Production-ready code | — |
| `develop` | Integration branch (optional) | `main` |
| `feature/*` | New features | `develop` or `main` |
| `fix/*` | Bug fixes | `develop` or `main` |
| `hotfix/*` | Urgent production fixes | `main` |
| `release/*` | Release preparation | `main` |

**Commit format:** `type(scope): description`

```
feat(auth): add OAuth2 login
fix(api): handle null user in response
docs: update deployment guide
```

### CI/CD

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| CI | Push, PR | Lint, test, build |
| PR Validation | PR | Conventional commits, title, size label |
| Security | Push to main, weekly | CodeQL, Trivy, Gitleaks |
| Release | Push to main | Automated versioning and changelog |
| Stale | Daily | Close inactive issues/PRs |
| Auto PR | Feature branch push | Auto-create draft PRs |

### Releases

Releases are automated via [Release Please](https://github.com/googleapis/release-please):

1. Write conventional commits on feature branches
2. Merge PRs to `main`
3. Release Please creates a "Release PR" with changelog
4. Merge the Release PR to publish

## Documentation

- [Architecture](docs/architecture/) — System design, C4 diagrams, ADRs
- [Product](docs/product/) — Vision, roadmap, requirements
- [Business](docs/business/) — Business model, competitors, pricing
- [Operations](docs/operations/) — Deploy, monitoring, incidents

## Contributing

1. Create a branch: `git checkout -b feature/my-feature`
2. Make changes following the conventions in [CLAUDE.md](CLAUDE.md)
3. Commit with conventional commits
4. Push and open a PR
5. Wait for CI and code review

## License

<!-- Choose your license -->
