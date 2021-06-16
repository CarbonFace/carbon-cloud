##Dockerfile for carbon-cloud mongodb server
##any mongod.conf file can be used in building custom mongo server image
FROM mongo
MAINTAINER CarbonFace<553127022@qq.com>
ENV MONGO_INITDB_ROOT_USERNAME root
ENV MONGO_INITDB_ROOT_PASSWORD root
RUN  mkdir -p /data/log && chown -R mongodb:mongodb /data/log
VOLUME /data/log
COPY ./MongoInitScript.js /docker-entrypoint-initdb.d/
COPY ./mongod.conf /data/configdb/
CMD ["mongod","--config","/data/configdb/mongod.conf"]