FROM ghcr.io/openclaw/openclaw:latest

WORKDIR /app
COPY . .

EXPOSE 80

CMD ["npm", "start"]
