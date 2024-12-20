# use MySQL:8.4 base image as latest stable version
# FROM docker.io/mysql:8.4
FROM mysql:8.4

# must define root password as environment variable (here
# with empty password, which should not be in production)
ENV MYSQL_ALLOW_EMPTY_PASSWORD="yes"
ENV MYSQL_ROOT_PASSWORD=""

# define path to db_init.sql file inside container image
ARG DB_INIT_FILE=/docker-entrypoint-initdb.d/db_init.sql

# copy FREERIDER_DB init files into container to /tmp
COPY access.sql /tmp
COPY schema.sql /tmp
COPY drop_data.sql /tmp
COPY load_sample_data.sql /tmp

# compound init files in db_init.sql to initialize the
# MySQL database if no data is found in volume
RUN cat /tmp/access.sql /tmp/schema.sql /tmp/load_sample_data.sql >> $DB_INIT_FILE
