FROM prismagraphql/prisma:1.34

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN mkdir -pv /usr/app
ENV PRISMA_CONFIG_PATH /usr/app/config.yml

COPY ./config.tpl.yml /usr/app/
RUN dockerize -template /usr/app/config.tpl.yml:/usr/app/config.yml
