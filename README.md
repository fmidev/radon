# radon
Database schema for storing meteorological field data

# Description

radon is a database schema built on top of PostgreSQL that can be used to store information on meterological fields. The relevant metadata from each field are extracted and stored to tables which makes easy querying. The data itself is not stored in the database. Radon database is a practical requirement for [Himan](https://github.com/fmidev/himan).

By default radon contains three user accounts:

* radon_admin, an account which owns all objects in the database
* wetodb, an account with rw privileges
* radon_client, an account with ro privileges

The passwords for these accounts need to be given as docker run environment variables with the postgres user password. Unless passwords are given, login is allowed without password.

Note! Radon requires that each grib or netcdf message is in its own file, but for now only the metadata part is released.

# Usage

```
git clone https://github.com/fmidev/radon
docker build -t radon .
docker run -d -p 5432:5432 \
	-e POSTGRES_PASSWORD=... \
	-e RADON_RADON_ADMIN_PASSWORD=...
	-e RADON_WETODB_PASSWORD=... \
	-e RADON_RADONCLIENT_PASSWORD=... \
	-t radon
```

# Taking a dump

```
export PGDATABASE=radon
export PGHOST=...
export PGUSER=radon_admin
export PGPASSWORD=...
cd sql
../bin/dump.sh
```


# TODO

Schema documentation.
