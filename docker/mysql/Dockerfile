##Dockerfile for carbon-cloud mysql server
##any my.cnf file can be used in building customer mysql server image
FROM mysql:5.7
MAINTAINER CarbonFace<553127022@qq.com>
ENV TZ                      Asia/Shanghai
ENV MYSQL_ROOT_PASSWORD     root
ENV INIT_SQL_FILE_0         privileges.sql
ENV INIT_SQL_FILE_1         carbon_user_sql.sql
ENV INIT_SQL_FILE_2         carbonface_sql.sql

COPY ./sqlscript/$INIT_SQL_FILE_0 /docker-entrypoint-initdb.d/
COPY ./sqlscript/$INIT_SQL_FILE_1 /docker-entrypoint-initdb.d/
COPY ./sqlscript/$INIT_SQL_FILE_2 /docker-entrypoint-initdb.d/
CMD ["mysqld"]
