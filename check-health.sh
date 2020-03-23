#!/bin/sh

STATUS=$(curl -I -s -o /dev/null -w '%{http_code}' $PLEX_HEALTH_URL)
if [ $STATUS -lt 200 ] || [ $STATUS -ge 400 ]; then
  echo "Invalid HTTP status $STATUS" && return 1
fi

if [ ! ls "$PLEX_HEALTH_MEDIA_DIR" ]; then
  echo "Unable to list media dir" && return 1
fi

echo "Health check success" && return 0
