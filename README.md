# Task1

## 部署
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


## 提示

- 该题为任意文件读取漏洞，建议关注 file_get_contents() 函数。
- 关注两个点：
	- 如何执行到危险函数？ 		回溯函数调用关系
    - 如何构造可控变量？		回溯变量来源
