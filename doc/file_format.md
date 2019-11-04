file_format contains information about the type of the file

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| name | varchar(50) | X | short name for format | |
| description | text | | description of the format | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |

Current values are:

* 1 = GRIBv1
* 2 = GRIBv2
* 3 = NetCDFv3
* 4 = NetCDFv4
