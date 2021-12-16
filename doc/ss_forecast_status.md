ss_forecast_state contains information about the the statuses of forecasts 
stored in radon. Its purpose is to signal smartmet server whenever some
forecast for some producer is 'finished', so that all data is loaded to
database. In principal table has support for many different statuses but
for now only 'READY' is supported.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| producer_id | integer | X | producer id | fmi_producer(id) |
| analysis_time | timestamp | X | analysis time of forecast | |
| version | int | X | version number of forecast, in case of a re-run (default: 1) | |
| geometry_id | int | | optional geometry id, null value indicates all geometries' statuses | geom(id) |
| status | varchar(50) | X | status of forecast (currently only 'READY') | |
| status_time | timestamptz | time when status was changed | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
