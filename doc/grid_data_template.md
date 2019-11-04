grid_data_template table acts as a template for every new data table.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| producer_id | integer | X | producer id | fmi_producer(id)|
| analysis_time | timestamptz | X | analysis time of forecasts | |
| geometry_id | integer | X | geometry id | geom(id) |
| param_id | integer | X | param id | param(id) |
| level_id | integer | X | level id | level(id) |
| level_value | numeric | X | first value of level | |
| level_value2 | numeric | X | second value of level, if present (default = -1) | |
| forecast_period | interval | X | leadtime of forecast | |
| forecast_type_id | integer | X | forecast type id (deterministict, ensemble control etc) | forecast_type(id) |
| forecast_type_value | numeric | X | forecast type value, if present (default = -1 = deterministic) | |
| file_location | text | X | /path/to/file | |
| file_server | text | X | host name where file is located | |
| file_format_id | integer | X | file format id, ie. grib 1/2, netcdf, ... | file_format(id) |
| file_protocol_id | integer | X | file protocol id, ie. local file, s3, thredds, ... | file_protocol(id) |
| message_no | integer | | message order number in file, if present. starting from 0. | |
| byte_offset | bigint | | offset in bytes in the file where this message is found, if present | |
| byte_offset | bigint | | length of message in bytes, if present | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
