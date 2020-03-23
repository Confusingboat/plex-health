FROM alpine:3

ENV PLEX_MEDIA_DIR='/media' \
    PLEX_HOST='localhost' \
    PLEX_PORT='32400' \
    PLEX_PROTO='http'

COPY . .
RUN apk add --no-cache curl
