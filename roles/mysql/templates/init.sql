ALTER USER USER() IDENTIFIED BY '{{ mysql_password }}';
use mysql;
update user set authentication_string = password("{{ mysql_password }}") where user="root" ;
grant all privileges on *.* to root@"%" identified by "{{ mysql_password }}";
ALTER USER 'root'@'localhost' PASSWORD EXPIRE NEVER;
flush privileges;