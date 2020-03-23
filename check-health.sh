#!/bin/sh

ls "$PLEX_HEALTH_MEDIA_DIR" && curl -I $PLEX_HEALTH_URL
