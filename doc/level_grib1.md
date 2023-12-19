## Database Table: `level_grib1`

### Table Description
The `level_grib1` table in the `public` schema is designed to link producers and levels with specific GRIB1 level identifiers. It serves as a mapping table in the context of GRIB1 data format.

### Columns
| Column Name   | Type                            | Nullable | Default | Description                                          |
| ------------- | ------------------------------- | -------- | ------- | ---------------------------------------------------- |
| `producer_id` | `integer`                       | not null |         | Identifier for the producer.                         |
| `level_id`    | `integer`                       | not null |         | Identifier for the level.                            |
| `grib_level_id`| `integer`                      | not null |         | GRIB1-specific level identifier (https://codes.ecmwf.int/grib/format/grib1/level/3/)                     |
| `last_updater`| `text`                          |          |         | Information about who last updated the record.       |
| `last_updated`| `timestamp with time zone`      |          |         | Timestamp of the last update to the record.          |

### Indexes
- **Primary Key**: (`producer_id`, `level_id`, `grib_level_id`) (using btree)

### Check Constraints
- **`level_grib1_grib_level_id_chk`**: CHECK (grib_level_id >= 0 AND grib_level_id <= 255)

### Foreign-key Constraints
- **`level_grib1_fmi_producer_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`
- **`level_grib1_level_fkey`**: Foreign Key constraint on `level_id` referencing `level(id)`

### Notes
- The primary key is a composite of `producer_id`, `level_id`, and `grib_level_id`, ensuring unique mapping for each combination.
- The `grib_level_id` is constrained to be within the range of 0 to 255.
- This table plays a crucial role in associating levels and producers with specific GRIB1 level identifiers, facilitating data organization and retrieval in weather forecasting and related applications.

