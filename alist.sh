# 初始化rclone配置
mkdir -p /rclone
cat >/rclone/rclone.conf <<EOF 
$rclone
EOF

mkdir -p /alist/config/temp

cat >/alist/config/config.json <<EOF
{
  "port": $PORT,
  $alist
}
EOF

#复制网盘的备份配置到运行环境
rclone ${parameter}
cd /alist
./alist -conf ./config/config.json
