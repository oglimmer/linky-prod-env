FROM oglimmer/linky-base

COPY linky.properties /etc/

WORKDIR /home/build

RUN mkdir linky && git clone https://github.com/oglimmer/linky.git sources && cd sources && yarn install && LINKY_PROPERTIES=/etc/linky.properties yarn run build && cp -r dist/ server/ src/ link-check-server/ node_modules/ build/ package.json yarn.lock .babelrc ../linky && cd .. && rm -rf sources
