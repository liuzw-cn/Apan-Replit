# Apan-Replit
在Replit部署Alist，被检测到就会无法运行，所以修改了程序的名称，并且代理了程序下载链接。数据库使用sqlite3，默认转移到不公开的上级目录，默认admin密码：`123456`。建议修改配置后将数据库备份到其他网盘，并且分享下载链接。将数据库下载链接添加到Secrets，每次Replit重置的时候都会重新下载数据库。没有添加Secrets的话，配置不会被保存，每次重置后恢复默认配置。
## Secrets
|Key         |Value                 |
|------------|----------------------|
| url_db     | data.db的下载链接     |
| url_db_shm | data.db-shm的下载链接 |
| url_db_wal | data.db-wal下载链接   |

## 部署

点击下方 `run on repl.it` 按钮，将apan快速部署到`repl.it`。

<a href="https://repl.it/github/liuzhiwei90/Apan-Replit">
  <img alt="Run on Repl.it" src="https://repl.it/badge/github/liuzhiwei90/Apan-Replit" style="height: 40px; width: 190px;" />
</a>
