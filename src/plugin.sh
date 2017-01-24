#!/bin/bash

echo "Searching for ${PLUGIN_FILES}"

find /drone/src -name $PLUGIN_FILES -print0 | xargs -0 -I{} curl -X POST "${PLUGIN_FEED_URL}" -H "X-NuGet-ApiKey: ${PLUGIN_API_KEY}" -T {}