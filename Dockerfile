FROM node:20-alpine

WORKDIR /app
COPY . .

RUN npm install serve && \
    npx serve -l 80 . & exit 0 || true

EXPOSE 80

CMD ["sh", "-c", "npx serve -l 80 ."]
