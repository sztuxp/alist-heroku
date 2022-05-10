# 初始化rclone配置
mkdir -p /rclone
cat >/rclone/rclone.conf <<EOF 
$rclone
EOF

mkdir -p /alist/config/temp

cat >/alist/config/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "assets": "/",
  "database": {
    "type": "sqlite3",
    "user": "",
    "password": "",
    "host": "",
    "port": 0,
    "name": "",
    "table_prefix": "x_",
    "db_file": "/alist/data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": 60,
    "cleanup_interval": 120
  },
  "temp_dir": "/alist/config/temp"
}
EOF

#复制网盘的备份配置到运行环境
rclone ${parameter}
cd /alist
./alist -conf ./config/config.json
