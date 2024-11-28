Aggregation contains information about any aggregations done to the parameter over some time period.

For example maximum of a temperature, or accumulation of precipitation.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| name | varchar(50) | | aggregation name | |
| description | text | | description of the aggregation | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
