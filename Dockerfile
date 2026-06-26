# ==========================
# Builder Stage
# ==========================
FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm prune --omit=dev

# ==========================
# Runtime Stage
# ==========================
FROM node:22-alpine

WORKDIR /app

RUN addgroup -S nodegroup && \
    adduser -S nodeuser -G nodegroup

COPY --from=builder /app .

RUN chown -R nodeuser:nodegroup /app

USER nodeuser

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=5s --start-period=15s --retries=3 \
CMD wget --spider -q http://localhost:8000/health || exit 1

CMD ["npm","start"]