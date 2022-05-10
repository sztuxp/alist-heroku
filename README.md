# heroku alist
## 概述
用于在 Heroku 上部署 alist。
由于 Herok 免费账户无法永久保存应用数据，在没有使用正确的方法防止应用休眠情况下，Alist 会被重置。Heroku也无法挂载用rclone挂载网盘，变通方法，在流量比较少的VPS配置好数据，并备份到网盘，本应用启动时，会通过rclone copy 把配置数据从网盘下载下来。

## 一键部署alist
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/sztuxp/alist-heroku.git)
