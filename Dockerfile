FROM fatedier/frps:v0.60.0
COPY frps.toml /etc/frp/frps.toml
EXPOSE 7000

# Chỉ truyền tham số cấu hình vào, tuyệt đối không viết lại chữ "frps"
CMD ["-c", "/etc/frp/frps.toml"]
