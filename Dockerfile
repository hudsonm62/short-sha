FROM alpine:3.19

WORKDIR /usr/src

COPY entrypoint.sh .
RUN chmod +x /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
