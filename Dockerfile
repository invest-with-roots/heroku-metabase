# https://discourse.metabase.com/t/support-for-heroku/23506/3
FROM metabase/metabase:latest

COPY docker-entrypoint.sh /app/

RUN ["chmod", "+x", "/app/docker-entrypoint.sh"]

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]
