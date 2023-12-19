## Database Table: `as_previ`

### Table Description
The `as_previ` table in the `public` schema is designed to manage data related to point forecasts. It includes details about the producer, analysis times, and storage information.

### Columns
| Column Name        | Type                            | Nullable | Default Value                              | Description                                              |
| ------------------ | ------------------------------- | -------- | ------------------------------------------ | -------------------------------------------------------- |
| `producer_id`      | `integer`                       | not null |                                            | Identifier for the producer associated with the analysis.|
| `analysis_time`    | `timestamp with time zone`      | not null |                                            | Timestamp indicating the time of analysis.               |
| `schema_name`      | `character varying(50)`         | not null |                                            | Name of the database schema where the data is stored.    |
| `table_name`       | `character varying(50)`         | not null |                                            | Name of the database table where the data is stored.     |
| `partition_name`   | `character varying(70)`         |          |                                            | Name of the database partition for the data.             |
| `record_count`     | `integer`                       | not null | `0`                                        | The count of records in the analysis.                    |
| `delete_time`      | `timestamp with time zone`      | not null |                                            | Timestamp indicating when the data will be deleted.      |
| `last_updater`     | `text`                          |          |                                            | Information about who last updated the record.           |
| `last_updated`     | `timestamp(0) without time zone`|          |                                            | Timestamp of the last update to the record.              |
| `min_analysis_time`| `timestamp with time zone`      |          |                                            | Earliest analysis time for the data.                     |
| `max_analysis_time`| `timestamp with time zone`      |          |                                            | Latest analysis time for the data.                       |
| `id`               | `integer`                       | not null | `nextval('as_previ_id_seq'::regclass)`     | Unique identifier for each record.                       |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `as_previ_partition_name_uniq` on the column (`partition_name`) (using btree)
- **Unique Index**: `as_previ_producer_id_minmax_analysis_time_uniq_idx` on columns (`producer_id`, `min_analysis_time`, `max_analysis_time`) (using btree)

### Foreign-key Constraints
- **`as_previ_fmi_producer_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`

### Notes
- The table is instrumental in tracking and managing historical analysis data.
- The primary key ensures unique identification for each record.
- The unique constraints and indexes facilitate the efficient organization and retrieval of data based on specific parameters like analysis times and partition names.
- The table also manages the lifecycle of the analysis data, including creation, updates, and planned deletion times.

