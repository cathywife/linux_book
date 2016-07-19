指定utf8: CREATE DATABASE `xxx` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
指定gbk: <code>CREATE DATABASE `xxx` DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;</code><br/>
<br/>
创建用户: <br/>
<code>create user xxxusername IDENTIFIED by 'xxxpwd';</code><br/><br/>

给本地xxxusername用户xxx数据库的所有权限:<br/>
<code>grant all privileges on xxx.*  to xxxusername;</code><br/><br/>

远程用户xxxusername用户xxx数据库的所有权限: <br/>
<code>grant all privileges on xxx.* to 'xxxusername'@'%' identified by 'xxxpwd';</code><br/>

注释my.cnf: <br/>
<code>bind-address = 127.0.0.1</code><br/>

重启:<br/>
<code>service mysql restart</code>
<br/><br/>

刷新权限:<br/>
<code>flush  privileges ;</code><br/><br/>
