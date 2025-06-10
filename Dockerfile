# Verificar a tag
FROM node:22.9-alpine3.20 AS builder

EXPOSE 80

WORKDIR /app

COPY package*.json ./

RUN npm install && npm cache clean --force

FROM node:22.9-alpine3.20

WORKDIR /app

COPY --from=builder /app/* .

COPY . .

CMD ["node", "index.js"]