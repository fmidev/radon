param_grib2 contains mappings between database parameters and grib2 parameters. Commonly grib2-parameter mappings are defined in param_grib2_template, but if some producer has overriden the default values or is using local grib tables, the are described in this table.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| producer_id | integer | X | producer id | fmi_producer(id) |
| param_id | integer | X | database parameter id | param(id) |
| discipline | integer | X | discipline value found from grib2 metadata ('discipline') | |
| category | integer | X | category value found from grib2 metadata ('parameterCategory') | |
| number | integer | X | parameter number value found from grib2 metadata ('parameterNumber') | |
| level_id | integer | X | database level id (where parameter is found), if null all levels are considered | level(id) |
| level_value | integer | X | level value (where parameter is found), if null all level values with given type are considered | |
| type_of_statistical_processing | integer | X | number describing the (possible) statistical processing this parameter has, in grib2 'typeOfStatisticalProcessing'. default value -1 means no statistical processing is done. | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
