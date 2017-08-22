#!/bin/bash

export LINKY_PROPERTIES=/etc/linky.properties
export BIND=0.0.0.0
export RUNCFG=PROD-PAGE-GEN
export REST_API_HOST=rest

yarn start
