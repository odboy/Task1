# Task1

```
git clone --depth 1 https://github.com/odboy/Task1
cd Task1

# 修改env.txt中的邮件账号信息，该账号是用于发送邮件的，注意不同的邮件服务器端口可能不一致。
# 可以在docker-compose.yml中修改端口号，当前默认8008。
# 可以在php.ini中修改xdebug信息，当前调试端口9000。

docker-compose up -d
```
> 请修改catchme.txt中的内容。

然后访问localhost:8008，调试端口为9000。


