# heroku alist
## 概述
用于在 Heroku 上部署 alist。
由于 Herok 免费账户无法永久保存应用数据，在没有使用正确的方法防止应用休眠情况下，Alist 会被重置。
Heroku也无法挂载用rclone挂载网盘，目前是假设你已经有了配置数据，并配置在网盘上，应用如果重置后，
会自动去网盘取出配置数据，从这个角度看，配置数据是只读的，变通方法，在流量比较少的VPS配置好数据，
并备份到网盘，heroku从网盘读取。

## 一键部署alist
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/sztuxp/alist-heroku.git)
