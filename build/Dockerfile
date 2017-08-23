FROM oglimmer/linky-base

COPY linky.properties /etc/
COPY sources /home/build/sources
COPY docker-entrypoint.sh /home/build/

WORKDIR /home/build

RUN mkdir linky && \
    if [ ! -e "/home/build/sources/package.json" ]; then \
      rm -rf /home/build/sources/; \
      git clone https://github.com/oglimmer/linky.git sources; \
    fi && \
    cd sources && \
    yarn install && \
    LINKY_PROPERTIES=/etc/linky.properties yarn run build && \
    rm -rf node_modules/ && \
    yarn install --production=true && \
    cp -r dist/ server/ src/ link-check-server/ node_modules/ build/ package.json yarn.lock .babelrc ../linky && \
    cd .. && \
    rm -rf sources
