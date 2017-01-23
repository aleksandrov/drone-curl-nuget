#!/bin/bash

mkdir /tmp/drone
mkdir /tmp/drone/src
mkdir /tmp/drone/src/sub
touch /tmp/drone/src/sub/test.nupkg

docker run --rm \
  -v /tmp/drone/src:/drone/src \
  -e PLUGIN_FILES=*.nupkg \
  -e PLUGIN_API_KEY=ololololo \
  -e PLUGIN_FEED_URL=https://www.myget.org/F/backend/api/v2/package \
  aleksandrovd/drone-curl-nuget

rm -rf /tmp/drone  