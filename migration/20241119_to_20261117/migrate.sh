set -ue

cd "$(dirname "$0")"

psql -v ON_ERROR_STOP=1 -1 -f migrate.sql
