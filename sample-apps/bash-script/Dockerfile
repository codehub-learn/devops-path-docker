FROM debian:bookworm-slim

RUN mkdir /app

COPY shellprint.sh /app

RUN chmod +x /app/shellprint.sh

CMD ["/bin/bash", "/app/shellprint.sh"]
