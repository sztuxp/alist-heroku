# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF

mkdir -p /alist/config/temp
cat >/alist/config/config.json <<EOF
$alist
EOF

#复制网盘的备份配置到运行环境
exec $(command -v rclone) ${parameter}

cd /alist
./alist -conf ./config/config.json
