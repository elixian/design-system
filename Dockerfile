# build
FROM node:16.13 AS builder
WORKDIR /workdir
COPY . /workdir
RUN yarn install
RUN yarn generate --prod

# run
FROM nginx:1.14.2

COPY appli-nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /workdir/dist /usr/share/nginx/html
 
RUN echo $(ls -l /tmp/dir)
