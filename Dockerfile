FROM node:20-alpine

WORKDIR /app
COPY . .

RUN npm install serve && \
    npx serve -p 80 index.html & exit 0 || true

EXPOSE 80

CMD ["sh", "-c", "npx serve -p 80 index.html"]
