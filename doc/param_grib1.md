## Database Table: `param_grib1`

### Table Description
The `param_grib1` table, located in the `public` schema, is designed to store specific parameters related to GRIB1 format. This table includes various identifiers and values unique to GRIB1, along with metadata for each entry.

### Columns
| Column Name           | Type                            | Nullable | Default Value                              | Description                                             |
| --------------------- | ------------------------------- | -------- | ------------------------------------------ | ------------------------------------------------------- |
| `id`                  | `integer`                       | not null | `nextval('param_grib1_id_seq'::regclass)`  | Unique identifier for each entry.                       |
| `producer_id`         | `integer`                       | not null |                                            | Identifier for the producer.                            |
| `param_id`            | `integer`                       | not null |                                            | Parameter identifier.                                   |
| `table_version`       | `integer`                       | not null |                                            | Version of the table.                                   |
| `number`              | `integer`                       | not null |                                            | Number associated with the parameter.                   |
| `timerange_indicator` | `numeric`                       | not null |                                            | Indicator for the time range.                           |
| `level_id`            | `integer`                       |          |                                            | Identifier for the level.                               |
| `level_value`         | `numeric`                       |          |                                            | Value for the level.                                    |
| `last_updater`        | `text`                          |          |                                            | Information about who last updated the record.          |
| `last_updated`        | `timestamp with time zone`      |          |                                            | Timestamp of the last update to the record.             |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `param_grib1_producer_id_uniq` on columns (`producer_id`, `param_id`, `table_version`, `number`, `timerange_indicator`, `level_id`, `level_value`) (using btree)

### Check Constraints
- **`param_grib1_number_chk`**: CHECK (number >= 0 AND number <= 255)
- **`param_grib1_table_version_chk`**: CHECK (table_version >= 0 AND table_version <= 255)

### Foreign-key Constraints
- **`param_grib1_fmi_producers_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`
- **`param_grib1_level_fkey`**: Foreign Key constraint on `level_id` referencing `level(id)`
- **`param_grib1_param_fkey`**: Foreign Key constraint on `param_id` referencing `param(id)`

### Notes
- The `id` column is auto-incremented using a sequence.
- The unique constraint ensures that each combination of `producer_id`, `param_id`, `table_version`, `number`, `timerange_indicator`, `level_id`, and `level_value` is unique within the table.
- Check constraints on `number` and `table_version` enforce valid ranges for these fields.
- The table establishes relationships with `fmi_producer`, `level`, and `param` tables through foreign key constraints.

