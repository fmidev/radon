param_geotiff contains mappings between database parameters and geotiff parameters.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| producer_id | integer | X | producer id | fmi_producer(id) |
| param_id | integer | X | database parameter id | param(id) |
| geotiff_name | integer | X | Parameter name found from geotiff file | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
