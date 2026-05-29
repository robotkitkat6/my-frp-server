FROM fatedier/frps:v0.60.0
COPY frps.toml /etc/frp/frps.toml
EXPOSE 7000
CMD ["frps", "-c", "/etc/frp/frps.toml"]
