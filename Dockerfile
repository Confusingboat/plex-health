FROM alpine:3

ENV PLEX_HEALTH_MEDIA_DIR='/media' \
    PLEX_HEALTH_HOST='localhost' \
    PLEX_HEALTH_PORT='32400' \
    PLEX_HEALTH_PROTO='http' \
    PLEX_HEALTH_URL='http://localhost:32400/web/index.html'

COPY check-health.sh .
RUN apk add --no-cache curl && \
    chmod +x ./check-health.sh
