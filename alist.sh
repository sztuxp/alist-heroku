# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
mkdir -p /alist/config/temp
cat >/alist/config/config.json <<EOF
$alist
EOF
# 启动rclone挂载
exec $(command -v rclone) mount ${parameter}

cd /alist
./alist -conf config/config.json
