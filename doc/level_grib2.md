## Database Table: `level_grib2`

### Table Description
The `level_grib2` table in the `public` schema is specifically designed for mapping producers and levels to GRIB2 level identifiers. This table is essential for organizing and referencing data in the context of the GRIB2 data format.

### Columns
| Column Name    | Type                            | Nullable | Default | Description                                          |
| -------------- | ------------------------------- | -------- | ------- | ---------------------------------------------------- |
| `producer_id`  | `integer`                       | not null |         | Identifier for the producer.                         |
| `level_id`     | `integer`                       | not null |         | Identifier for the level.                            |
| `grib_level_id`| `integer`                       | not null |         | GRIB2-specific level identifier (https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/grib2_table4-5.shtml)                     |
| `last_updater` | `text`                          |          |         | Information about who last updated the record.       |
| `last_updated` | `timestamp with time zone`      |          |         | Timestamp of the last update to the record.          |

### Indexes
- **Primary Key**: (`producer_id`, `level_id`, `grib_level_id`) (using btree)

### Foreign-key Constraints
- **`level_grib2_fmi_producer_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`
- **`level_grib2_level_fkey`**: Foreign Key constraint on `level_id` referencing `level(id)`

### Notes
- The primary key is a composite of `producer_id`, `level_id`, and `grib_level_id`, ensuring unique mapping for each combination.
- The table is crucial in associating levels and producers with specific GRIB2 level identifiers, which is vital for managing and interpreting meteorological data within GRIB2 format.

