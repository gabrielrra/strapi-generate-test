FROM node:20-alpine

RUN apk update && apk add expect

WORKDIR /app

COPY . .

RUN --mount=type=cache,target=/root/.yarn YARN_CACHE_FOLDER=/root/.yarn yarn install

RUN chmod +x ./strapi-generate.exp ./entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
