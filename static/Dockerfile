FROM oglimmer/linky-build

RUN apt-get update && \
    apt-get -qy install nginx-core && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*

COPY default /etc/nginx/sites-available

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 8082

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
