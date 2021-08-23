FROM docker.io/postgres:13

RUN echo 'Acquire::http::Proxy "http://wwwproxy.fmi.fi:8080";' >> /etc/apt/apt.conf

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		postgresql-13-postgis-3 postgresql-13-postgis-3-scripts \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d/sql

COPY sql/* /docker-entrypoint-initdb.d/sql/

COPY bin/restore.sh /docker-entrypoint-initdb.d

WORKDIR /docker-entrypoint-initdb.d
