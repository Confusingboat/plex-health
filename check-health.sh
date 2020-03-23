#!/bin/sh

ls "$PLEX_MEDIA_DIR" && curl -I $PLEX_PROTO://$PLEX_HOST:$PLEX_PORT/web/index
