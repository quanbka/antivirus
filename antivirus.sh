kill $(pgrep -f ./mysqld)
kill $(pgrep -f /usr/bin/ps)
kill $(pgrep -f /usr/bin/pythno)
kill $(pgrep -f /usr/bin/bsd-port/knerl)
kill $(pgrep -f /usr/bin/netstat)
rm -rf   /var/tmp/.c/mysqld
rm -rf   /usr/bin/ps
rm -rf   /usr/bin/pythno
rm -rf   /usr/bin/bsd-port/knerl
rm -rf   /usr/bin/netstat
yum reinstall -y procps  net-tools
yum install -y procps  net-tools
find /etc/httpd/ -name logs -type f -delete
mkdir /var/log/httpd
mkdir /etc/httpd/logs
httpd -t
service httpd reload
