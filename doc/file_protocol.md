file_protocol contains information about the way the file storage/access system

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| name | varchar(50) | X | short name for protocol | |
| description | text | | description of the protocol | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |

Current values are:

* 1 = local filesystem
* 2 = s3 object storage system
* 3 = thredds data server
