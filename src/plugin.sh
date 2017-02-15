#!/bin/bash

env

if [ -z "$PLUGIN_API_KEY" ]; then 
	echo "No Nuget API key provided" 
	exit 1
else 
	echo "Searching for ${PLUGIN_FILES}"
	find /drone/src -name $PLUGIN_FILES -print0 | xargs -0 -I{} curl -s -X POST "${PLUGIN_FEED_URL}" -H "X-NuGet-ApiKey: ${PLUGIN_API_KEY}" -T {}
fi

