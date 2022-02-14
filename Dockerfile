# build
FROM node:16.13 AS builder
WORKDIR /workdir
COPY . /workdir
RUN yarn
RUN yarn install
RUN yarn build --prod

# run
FROM nginx:1.14.2

COPY appli-nginx.conf /etc/nginx/conf.d/default.conf

## Remove default nginx index page
## RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /workdir/.nuxt /usr/share/nginx/html
COPY --from=builder /workdir/nuxt.config.js /usr/share/nginx/html
COPY --from=builder /workdir/package.json /usr/share/nginx/html
COPY --from=builder /workdir/static /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
RUN npm install
RUN npm start
