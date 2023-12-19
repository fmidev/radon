## Database Table: `param_netcdf`

### Table Description
The `param_netcdf` table, located in the `public` schema, is designed to store parameters related to the NetCDF format. It includes various identifiers and values specific to NetCDF, along with metadata for each record.

### Columns
| Column Name   | Type                            | Nullable | Default Value                               | Description                                       |
| ------------- | ------------------------------- | -------- | ------------------------------------------- | ------------------------------------------------- |
| `id`          | `integer`                       | not null | `nextval('param_netcdf_id_seq'::regclass)` | Unique identifier for each record.                |
| `producer_id` | `integer`                       | not null |                                             | Identifier for the producer.                      |
| `param_id`    | `integer`                       | not null |                                             | Parameter identifier.                             |
| `netcdf_name` | `character varying(50)`         | not null |                                             | Name of the parameter in NetCDF format.           |
| `level_id`    | `integer`                       |          |                                             | Identifier for the level.                         |
| `level_value` | `numeric`                       |          |                                             | Value for the level.                              |
| `last_updater`| `text`                          |          |                                             | Information about who last updated the record.    |
| `last_updated`| `timestamp with time zone`      |          |                                             | Timestamp of the last update to the record.       |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `param_netcdf_producer_id_uniq` on columns (`producer_id`, `param_id`, `netcdf_name`, `level_id`, `level_value`) (using btree)

### Foreign-key Constraints
- **`param_netcdf_fmi_producer_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`
- **`param_netcdf_level_fkey`**: Foreign Key constraint on `level_id` referencing `level(id)`
- **`param_netcdf_param_fkey`**: Foreign Key constraint on `param_id` referencing `param(id)`

### Notes
- The `id` column is auto-incremented using a sequence.
- The unique constraint ensures that each combination of `producer_id`, `param_id`, `netcdf_name`, `level_id`, and `level_value` is unique within the table.
- The table establishes relationships with `fmi_producer`, `level`, and `param` tables through foreign key constraints.

