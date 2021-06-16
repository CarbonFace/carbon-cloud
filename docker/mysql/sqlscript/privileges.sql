use mysql;
select host, user from user ;
# create carbonuser privilege
set global time_zone ='+8:00';
create user carbonuser identified by 'Carbon@mysqlUser';
grant all on carbonuser.* to carbonuser@'%' identified by 'Carbon@mysqlUser' with grant option;
# create carbonface privilege
create user carbonface identified by 'Carbon@mysqlFace';
grant all on carbonface.* to carbonface@'%' identified by 'Carbon@mysqlFace' with grant option ;
flush privileges;
select host, user from user ;