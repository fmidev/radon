## Database Table: `geom_latitude_longitude`

### Table Description
The `geom_latitude_longitude` table in the `public` schema is specifically designed to store geometric data in a latitude-longitude grid system. This table includes grid dimensions, spatial references, and other parameters related to geographic positioning.

### Columns
| Column Name    | Type                        | Nullable | Default | Description                                             |
| -------------- | --------------------------- | -------- | ------- | ------------------------------------------------------- |
| `id`           | `integer`                   | not null |         | Unique identifier for the geometric grid record.        |
| `name`         | `text`                      | not null |         | Name of the geometric grid.                             |
| `ni`           | `integer`                   | not null |         | Number of grid points along the x-axis (longitude).     |
| `nj`           | `integer`                   | not null |         | Number of grid points along the y-axis (latitude).      |
| `first_point`  | `geometry(Point,4326)`      | not null |         | The first grid point in the system, specified in WGS 84.|
| `di`           | `numeric`                   | not null |         | Grid point spacing along the x-axis (longitude).        |
| `dj`           | `numeric`                   | not null |         | Grid point spacing along the y-axis (latitude).         |
| `scanning_mode`| `text`                      | not null |         | Scanning mode for the grid.                             |
| `description`  | `text`                      | not null |         | Description of the geometric grid.                      |
| `last_updater` | `text`                      |          |         | Information about who last updated the record.          |
| `last_updated` | `timestamp with time zone`  |          |         | Timestamp of the last update to the record.             |
| `earth_shape_id`| `integer`                  |          |         | Reference to an earth shape model.                      |
| `datum_id`     | `integer`                  |          |         | Reference to a datum model.                             |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `geom_latitude_longitude_name_uniq` on the column (`name`) (using btree)

### Check Constraints
- **`geom_latitude_longitude_datum_chk`**: CHECK (datum_id IS NULL OR datum_id IS NOT NULL AND earth_shape_id IS NULL)
- **`geom_latitude_longitude_scanning_mode_chk`**: CHECK (scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text]))

### Foreign-key Constraints
- **`geom_latitude_longitude_datum_id_fkey`**: Foreign Key constraint on `datum_id` referencing `datum(id)`
- **`geom_latitude_longitude_earth_shape_id_fkey`**: Foreign Key constraint on `earth_shape_id` referencing `earth_shape(id)`
- **`geom_latitude_longitude_geom_fkey`**: Foreign Key constraint on `id` referencing `geom(id)`
- **`geom_latitude_longitude_geom_fkey_02`**: Foreign Key constraint on `name` referencing `geom(name)`

### Notes
- The table is essential for managing spatial data related to geographic positioning and mapping in a latitude-longitude grid system.
- Unique constraints ensure that each grid is distinct and identifiable by its name.
- The check constraints enforce data integrity, especially in terms of grid configurations and references.
- The table is linked to earth shape and datum models, providing crucial context for spatial data interpretation.

