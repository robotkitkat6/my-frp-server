FROM alpine:latest

RUN apk add --no-cache curl unzip
RUN curl -L -H "Cache-Control: no-cache" -o /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    mkdir -p /usr/bin/xray && \
    unzip /tmp/xray.zip -d /usr/bin/xray && \
    rm -rf /tmp/xray.zip

COPY config.json /usr/bin/xray/config.json

EXPOSE 10000
CMD ["/usr/bin/xray/xray", "-c", "/usr/bin/xray/config.json"]
