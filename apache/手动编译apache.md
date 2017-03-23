
http://blog.csdn.net/victor_py/article/details/51500158
http://apr.apache.org/download.cgi
sudo apt-get install libpcre3 libpcre3-dev  

./configure-prefix=/usr/local/apache2 --enable-deflate --enable-expires --enable-headers --enable-modules=most --enable-so --with-mpm=worker --enable-rewrite --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util --with-pcre=/usr/local/pcre
