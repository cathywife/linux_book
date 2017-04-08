<h3>php7.1:</h3>
<pre><code>
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum makecache
yum install php71w php71w-common php71w-fpm php71w-cli
</code></pre>
<p>后续安装7.1插件都是php71w-xxx</p>

<h3>nginx最新版本:</h3>
<pre><code>
官方说明:http://nginx.org/en/linux_packages.html#stable
vim /etc/yum.repos.d/nginx.repo  

[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=0
enabled=1

yum makecache 
yum install nginx
</code></pre>
配置:<a href="https://github.com/linjianzao/linux_book/tree/master/nginx">https://github.com/linjianzao/linux_book/tree/master/nginx</a>

<br/>
<h3>mysql最新版本:</h3>
<pre><code>
wget http://repo.mysql.com/mysql57-community-release-el6-9.noarch.rpm
yum localinstall mysql57-community-release-el6-9.noarch.rpm 
yum install mysql-community-server
service mysqld start
</code></pre>
参考:<a href="http://www.cnblogs.com/ccooler/p/4367718.html">http://www.cnblogs.com/ccooler/p/4367718.html</a> <br/>
配置:<a href="https://github.com/linjianzao/linux_book/tree/master/mysql">https://github.com/linjianzao/linux_book/tree/master/mysql</a>
