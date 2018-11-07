ss_state_v is a view combining tables as_grid and ss_state.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| producer_id | integer | X | producer id | fmi_producer(id) |
| geometry_id | integer | X | geometry id | geom(id) |
| forecast_type_id | integer | X | forecast type id | forecast_type(id) |
| forecast_type_value | numeric | X | forecast type value | |
| analysis_time | timestamptz | X | analysis time of forecast | |
| forecast_period | interval | X | leadtime of forecast | |
| table_name | text | X | table where data is located | |
| delete_time | timestamptz | | delete time of data | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
