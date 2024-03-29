FROM python:3.7.5-alpine3.9

RUN pip install speedtest-cli

RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add bash curl ip6tables iptables openvpn \
                shadow tini && \
    addgroup -S vpn && \
    rm -rf /tmp/*
    
VOLUME ["/vpn"]
