FROM node:22-alpine

RUN addgroup -S nodegroup && adduser -S nodeuser -G nodegroup

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .

RUN chown -R nodeuser:nodegroup /app

USER nodeuser

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget --spider -q http://localhost:8000/health || exit 1

CMD ["npm","start"]