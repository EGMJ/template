.PHONY: help setup up down restart logs shell test lint build clean release

# Default target
help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

# ==============================================================================
# Development
# ==============================================================================

setup: ## Install dependencies and setup development environment
	@echo "Setting up development environment..."
	# npm install
	# pip install -e ".[dev]"
	# go mod download
	cp -n .env.example .env 2>/dev/null || true
	@echo "Done. Edit .env with your local settings."

up: ## Start all services (Docker)
	docker compose -f docker/docker-compose.yml up -d

down: ## Stop all services
	docker compose -f docker/docker-compose.yml down

restart: ## Restart all services
	docker compose -f docker/docker-compose.yml restart

logs: ## Show service logs (follow mode)
	docker compose -f docker/docker-compose.yml logs -f

shell: ## Open a shell in the app container
	docker compose -f docker/docker-compose.yml exec app sh

# ==============================================================================
# Quality
# ==============================================================================

test: ## Run tests
	@echo "Running tests..."
	# npm test
	# pytest
	# go test ./...

lint: ## Run linters
	@echo "Running linters..."
	# npm run lint
	# ruff check . && ruff format --check .
	# golangci-lint run

format: ## Auto-format code
	@echo "Formatting code..."
	# npm run format
	# ruff format .
	# gofmt -w .

# ==============================================================================
# Build
# ==============================================================================

build: ## Build the application
	@echo "Building..."
	# npm run build
	# docker build -f docker/Dockerfile -t $(shell basename $(CURDIR)) .

clean: ## Remove build artifacts and caches
	rm -rf dist build out coverage .pytest_cache .nyc_output __pycache__
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name .pytest_cache -exec rm -rf {} + 2>/dev/null || true

# ==============================================================================
# Release
# ==============================================================================

release: ## Create a release (triggers CI pipeline)
	@echo "Releases are managed by Release Please via CI."
	@echo "Push to main with conventional commits to trigger a release."
