param_grib2_template contains the mappings between database parameters and default grib2 parameters (found from WMO specs).

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| param_id | integer | X | database parameter id | param(id) |
| discipline | integer | X | discipline value found from grib2 metadata ('discipline') | |
| category | integer | X | category value found from grib2 metadata ('parameterCategory') | |
| number | integer | X | parameter number value found from grib2 metadata ('parameterNumber') | |
| type_of_statistical_processing | integer | X | number describing the (possible) statistical processing this parameter has, in grib2 'typeOfStatisticalProcessing'. default value -1 means no statistical processing is done. | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
