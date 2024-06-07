FROM alpine:latest AS base

FROM base AS build
RUN apk update && apk add --no-cache squid

FROM build AS final
COPY squid.conf /etc/squid/squid.conf
ENV SQUID_PORT=${SQUID_PORT}
EXPOSE $SQUID_PORT
CMD ["sh", "-c", "sed -i \"s/\\$SQUID_PORT/$SQUID_PORT/g\" /etc/squid/squid.conf && squid -N"]