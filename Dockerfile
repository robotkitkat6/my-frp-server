FROM fatedier/frps:v0.60.0
COPY frps.toml /etc/frp/frps.toml

# Chỉ mở duy nhất cổng 10000 cho Render2222
EXPOSE 10000

CMD ["-c", "/etc/frp/frps.toml"]
