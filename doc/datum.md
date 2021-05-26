datum contains information about the datum used in the geometry definition.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| name | varchar(50) | | 'well-known' name for datum, like WGS84 | |
| description | text | | description of the datum | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
