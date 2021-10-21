geom_stereographic contains information about defined grids for stereographic projection.

Definition includes both area/projection information and grid information.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | geom(id) |
| name | text | X | Short name of this specific geom | geom(name) |
| ni | int | X | Number of points in i-direction | |
| nj | int | X | Number of points in j-dimension | |
| first_point | geometry(Point,4326) | First point location of data in WGS84 | |
| di | numeric | X | Distance between two grid points in i-direction in unit defined by projection | |
| dj | numeric | X | Distance between two grid points in j-direction in unit defined by projection. Always positive! | |
| scanning_mode | text | X | Starting corner of data. Possible values: +x+y, +x-y | |
| orientation | X | numeric | Longitude of projection center in degrees | |
| latin | X | numeric | Latitude of projection center in degrees, default 90 (lat_0 in proj) | |
| lat_ts | | numeric | Latitude where scale is undistorted (lat_ts in proj) | |
| description | text | | Description of the ellipsoid | |
| earth_shape_id | integer | | reference to used ellipsoid (only if datum is null) | earth_shape(id) |
| datum_id | integer | | reference to used datum | datum(id) |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |

