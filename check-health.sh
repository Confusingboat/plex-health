#!/bin/sh

STATUS=$(curl -I -s -o /dev/null -w '%{http_code}' $PLEX_HEALTH_URL)
if [ $STATUS -ge 200 && $STATUS -lt 400 && ls "$PLEX_HEALTH_MEDIA_DIR" ]; then
  return 0
else
  return 1
fi
