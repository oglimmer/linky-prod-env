FROM oglimmer/linky-build

ENV LINKY_PROPERTIES /etc/linky.properties
ENV BIND 0.0.0.0
ENV RUNCFG PROD-REST

EXPOSE 8081

ENTRYPOINT ["/home/build/docker-entrypoint.sh"]
CMD ["yarn", "setup"]
