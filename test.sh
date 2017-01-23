#!/bin/bash

docker run --rm \
  -e PLUGIN_FILES=*.nupkg \
  -e PLUGIN_API_KEY=post \
  -e PLUGIN_FEED_URL=https://www.myget.org/F/backend/api/v2/package \
  aleksandrovd/drone-curl-nuget