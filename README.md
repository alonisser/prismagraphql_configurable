## Prisma 1.34 docker file that accepts environment variables

Supported env vars:

* DATABASE_CONNECTOR
* PORT
* DATABASE_PORT
* DATABASE_USER
* DATABASE_HOST
* DATABASE_PASSWORD

Basically we're inheriting from the [docker of the legacy 1.34](https://hub.docker.com/r/prismagraphql/prisma) branch and
adding support for templating the configuration file 