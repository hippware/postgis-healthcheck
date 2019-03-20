# based on https://github.com/codeship-library/healthcheck-images/blob/master/postgres/10.1.dockerfile
FROM mdillon/postgis:10-alpine

COPY docker-healthcheck /usr/local/bin/
RUN chmod u+x /usr/local/bin/docker-healthcheck

HEALTHCHECK --timeout=120s --start-period=20s CMD ["docker-healthcheck"]
