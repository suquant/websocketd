FROM busybox:glibc
LABEL maintainer="George Kutsurua g.kutsurua@gmail.com"

ARG version=0.3.0
RUN wget https://github.com/joewalnes/websocketd/releases/download/v${version}/websocketd-${version}-linux_amd64.zip \
        -O /tmp/websocketd.zip && \
    unzip -j /tmp/websocketd.zip websocketd -d /usr/sbin && \
    rm /tmp/websocketd.zip

ENTRYPOINT ["/usr/sbin/websocketd"]
CMD ["--help"]
