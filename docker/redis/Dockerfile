##Dockerfile for carbon-cloud redis server
##any redis.conf file can be used in building custom redis server image
##attention should be paid for parameter [daemonize = no] in the config file
FROM redis
MAINTAINER CarbonFace<553127022@qq.com>
RUN mkdir /data/config /data/db
COPY ./redis.conf /data/config/
CMD ["redis-server","/data/config/redis.conf"]