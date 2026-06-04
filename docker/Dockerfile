# =============================================================================
# Multi-stage Dockerfile template
# Adapte para o runtime do seu projeto
# =============================================================================

# --- Stage 1: Build ---
FROM node:20-alpine AS builder
# FROM python:3.12-slim AS builder
# FROM golang:1.22-alpine AS builder

WORKDIR /app

# Copiar apenas arquivos de dependência primeiro (cache de layers)
COPY package*.json ./
# COPY requirements.txt ./
# COPY go.mod go.sum ./

RUN npm ci --only=production
# RUN pip install --no-cache-dir -r requirements.txt
# RUN go mod download

COPY . .

RUN npm run build
# RUN go build -o /app/server ./cmd/server

# --- Stage 2: Production ---
FROM node:20-alpine AS production
# FROM python:3.12-slim AS production
# FROM gcr.io/distroless/static-debian12 AS production

WORKDIR /app

# Criar usuário não-root
RUN addgroup -g 1001 appgroup && \
    adduser -u 1001 -G appgroup -D appuser

# Copiar apenas artefatos necessários do build
COPY --from=builder --chown=appuser:appgroup /app/dist ./dist
COPY --from=builder --chown=appuser:appgroup /app/node_modules ./node_modules
COPY --from=builder --chown=appuser:appgroup /app/package.json ./

USER appuser

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

CMD ["node", "dist/index.js"]
