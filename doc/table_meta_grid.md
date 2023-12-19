## Database Table: `table_meta_grid`

### Table Description
The `table_meta_grid` table in the `public` schema is designed for managing metadata associated with grid-based data tables. It includes information about producers, schema and table names, geometries, retention periods, and partitioning strategies.

Program "radon_tables.py" is reading this table and creating new tables based on the information found.

### Columns
| Column Name         | Type                            | Nullable | Default Value                            | Description                                             |
| ------------------- | ------------------------------- | -------- | ---------------------------------------- | ------------------------------------------------------- |
| `id`                | `integer`                       | not null | `nextval('table_meta_grid_id_seq'::regclass)` | Unique identifier for each metadata record.             |
| `producer_id`       | `integer`                       | not null |                                          | Identifier for the producer associated with the table.  |
| `schema_name`       | `character varying(50)`         |          | `'data'::character varying`              | Name of the database schema.                            |
| `table_name`        | `character varying(50)`         | not null |                                          | Name of the database table.                             |
| `geometry_id`       | `integer`                       | not null |                                          | Identifier for the geometry associated with the table.  |
| `retention_period`  | `interval`                      | not null |                                          | Period after which data is eligible for deletion.       |
| `analysis_times`    | `numeric[]`                     |          |                                          | Array of analysis times relevant to the table.          |
| `last_updater`      | `text`                          |          |                                          | Information about who last updated the record.          |
| `last_updated`      | `timestamp with time zone`      |          |                                          | Timestamp of the last update to the record.             |
| `partitioning_period` | `text`                        | not null | `'ANALYSISTIME'::text`                    | Strategy used for partitioning the table data.          |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `table_meta_grid_uniq` on columns (`producer_id`, `table_name`, `geometry_id`) (using btree)

### Check Constraints
- **`table_meta_grid_partitioning_period_chk`**: CHECK (partitioning_period = ANY (ARRAY['ANALYSISTIME'::text, 'MONTHLY'::text, 'ANNUAL'::text]))

### Foreign-key Constraints
- **`table_meta_grid_fmi_producer_fkey_02`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`
- **`table_meta_grid_geom_fkey`**: Foreign Key constraint on `geometry_id` referencing `geom(id)`

### Notes
- The table plays a crucial role in managing grid data storage and retrieval processes.
- Unique combination of `producer_id`, `table_name`, and `geometry_id` ensures distinct metadata for each grid data table.
- The `partitioning_period` check constraint ensures that partitioning strategies adhere to predefined values.
- This table assists in effective data management, including understanding data retention and partitioning strategies.

