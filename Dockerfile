FROM yandex/clickhouse-server:18.14.13

RUN \
  apt-get update \
  && apt-get install --no-install-recommends --no-install-suggests -y \
    odbc-postgresql \
    odbcinst \
    unixodbc \
  && rm -rf /var/lib/apt/lists/* /var/cache/debconf \
  && apt-get clean

COPY odbcinst.ini /etc/odbcinst.ini
