# build
FROM node:16.13 AS builder
WORKDIR /workdir
COPY . /workdir
RUN yarn
RUN yarn install
RUN yarn generate --prod

# run
FROM nginx:1.14.2

COPY appli-nginx.conf /etc/nginx/conf.d/default.conf

## Remove default nginx index page
## RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /workdir/.nuxt/dist/ /usr/share/nginx/html
COPY --from=builder /workdir/static /usr/share/nginx/html

