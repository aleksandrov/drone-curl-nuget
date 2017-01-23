FROM alpine
RUN apk -Uuv add bash curl ca-certificates
COPY plugin.sh /bin
RUN chmod +x /bin/plugin.sh
ENTRYPOINT /bin/plugin.sh