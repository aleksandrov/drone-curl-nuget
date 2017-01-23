FROM alpine
COPY plugin.sh /bin
RUN chmod +x /bin/plugin.sh
RUN apk -Uuv add bash curl ca-certificates
ENTRYPOINT /bin/plugin.sh