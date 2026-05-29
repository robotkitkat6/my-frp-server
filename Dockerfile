FROM fatedier/frps:v0.60.0
COPY frps.toml /etc/frp/frps.toml

# Mở cổng kết nối và cổng Web Dashboard
EXPOSE 7000
EXPOSE 10000

CMD ["-c", "/etc/frp/frps.toml"]
