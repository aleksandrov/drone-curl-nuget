#!/bin/bash

mkdir /tmp/drone
mkdir /tmp/drone/src
mkdir /tmp/drone/src/sub
touch /tmp/drone/src/sub/test1.nupkg
touch /tmp/drone/src/sub/test2.nupkg

docker run --rm \
  -v /tmp/drone/src:/drone/src \
  -e PLUGIN_FILES=*.nupkg \
  -e PLUGIN_API_KEY=$API_KEY \
  -e PLUGIN_FEED_URL=$FEED_URL \
  aleksandrovd/drone-curl-nuget

rm -rf /tmp/drone  