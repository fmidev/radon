earth_shape contains information about the shape of the earth, namely the sizes of the semi-major and semi-minor axis.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| a | numeric | X | size of the semi-major axis in meters | |
| b | numeric | X | size of the semi-minor axis in meters | |
| name | varchar(50) | | 'well-known' name for shape, like WGS84 | |
| description | text | | description of the ellipsoid | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |
