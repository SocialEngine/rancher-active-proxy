#!/usr/bin/env bash

docker run -p 8080:3000 \
    --name mini-web \
    --health-cmd="echo 'true'" \
    --health-interval=5s \
    --health-retries=12 \
    --health-timeout=2s \
    -l rap.host=www.jitflowlab.com \
    -l rap.le_host=www.jitflowlab.com \
    -l rap.le_email=admin@jitflowlab.com \
    -d tobilg/mini-webserver
