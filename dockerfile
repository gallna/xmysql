FROM biasofpriene/node:10.15.3

WORKDIR /usr/src/app

COPY . /usr/src/app
COPY docker-entrypoint.sh /docker-entrypoint.sh

# env
ENV DATABASE_HOST 127.0.0.1
ENV DATABASE_USER root
ENV DATABASE_PASSWORD password
ENV DATABASE_NAME sakila

EXPOSE 80
CMD ["bash", "-c", "node bin/index.js -h $DATABASE_HOST -p $DATABASE_PASSWORD -d $DATABASE_NAME -u $DATABASE_USER -n 80 -r 0.0.0.0"]
