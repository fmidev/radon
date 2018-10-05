declare -x PGDATABASE="radon"
declare -x PGHOST="localhost"
declare -x PGPASSWORD="radon_admin"
declare -x PGPORT="20000"
declare -x PGUSER="radon_admin"
export RADON_HOSTNAME=$PGHOST
export RADON_WETODB_PASSWORD=wetodb
export RADON_PORT=$PGPORT
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/fmidb/lib
export INCLUDEPATHS=$HOME/fmidb/include
export LIBRARYPATHS=$HOME/fmidb/lib

