#!/bin/bash

echo "Searching for ${PLUGIN_FILES}"

find /drone/src -name $PLUGIN_FILES -print0 | xargs -0 echo curl --verbose -X POST $PLUGIN_FEED_URL -H "X-NuGet-ApiKey: ${PLUGIN_API_KEY}" -T 