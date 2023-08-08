FROM alpine:3.18.3
COPY cli53 /bin/cli53
RUN chmod +x /bin/cli53 && apk add --no-cache openssl ca-certificates
ENTRYPOINT ["cli53"]
CMD ["-v"]