<a href="https://github.com/hilojack/hilojack.github.io/blob/master/_posts/c-debug-coredump.md">参考链接</a>
生成core文件:
<code>
sudo su - 
echo '/tmp/core-%e.%p' > /proc/sys/kernel/core_pattern
echo 0 > /proc/sys/kernel/core_uses_pid
ulimit -c unlimited
</code>
允许php-fpm生成coredump文件
<code>ps aux |grep php-fpm</code>
master process主进程可以看到php-fpm的配置文件路径
/etc/php5/fpm/php-fpm.conf
有个配置是include=/etc/php5/fpm/pool.d/*.conf
所以配置文件目录: /etc/php5/fpm/pool.d/www.conf
<code> rlimit_core = unlimited </code>
重启php-fpm： <pre>sudo kill -9 $(ps -ef|grep php-fpm|gawk '$0 !~/grep/ {print $2}' |tr -s '\n' ' ')</pre>
然后在/tmp/目录下就可以找到code文件
<pre><code>sudo gdb php5-fpm /tmp/core-xxx.xxx</code></pre>
这样就可以看到php5-fpm哪里出问题了
