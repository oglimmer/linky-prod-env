FROM oglimmer/linky-build

ENV LINKY_PROPERTIES /etc/linky.properties
ENV BIND 0.0.0.0
ENV RUNCFG PROD-PAGE-GEN
ENV REST_API_HOST rest

EXPOSE 8080

ENTRYPOINT ["/home/build/docker-entrypoint.sh"]
CMD ["yarn", "start"]
