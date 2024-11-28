Processing_type contains information about any statistical processing done to the parameter.

For example a probability or a fractile.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| name | varchar(50) | | processing type name | |
| description | text | | description of the processing type | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
