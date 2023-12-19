## Database Table: `geom_rotated_latitude_longitude`

### Table Description
The `geom_rotated_latitude_longitude` table in the `public` schema is designed to store data about geometric grids that use a rotated latitude-longitude system. It includes detailed information on grid dimensions, rotation parameters, and other relevant spatial characteristics.

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
| `south_pole`   | `geometry(Point,4326)`      | not null |         | Location of the rotated south pole, specified in WGS 84.|
| `description`  | `text`                      | not null |         | Description of the geometric grid.                      |
| `last_updater` | `text`                      |          |         | Information about who last updated the record.          |
| `last_updated` | `timestamp with time zone`  |          |         | Timestamp of the last update to the record.             |
| `earth_shape_id`| `integer`                  |          |         | Reference to an earth shape model.                      |
| `datum_id`     | `integer`                  |          |         | Reference to a datum model.                             |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `geom_rotated_latitude_longitude_name_uniq` on the column (`name`) (using btree)

### Check Constraints
- **`geom_rotated_latitude_longitude_datum_chk`**: CHECK (datum_id IS NULL OR datum_id IS NOT NULL AND earth_shape_id IS NULL)
- **`geom_rotated_latitude_longitude_scanning_mode_chk`**: CHECK (scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text]))

### Foreign-key Constraints
- **`geom_rotated_latitude_longitude_datum_id_fkey`**: Foreign Key constraint on `datum_id` referencing `datum(id)`
- **`geom_rotated_latitude_longitude_earth_shape_id_fkey`**: Foreign Key constraint on `earth_shape_id` referencing `earth_shape(id)`
- **`geom_rotated_latitude_longitude_geom_fkey`**: Foreign Key constraint on `id` referencing `geom(id)`
- **`geom_rotated_latitude_longitude_geom_fkey_02`**: Foreign Key constraint on `name` referencing `geom(name)`

### Notes
- This table is crucial for handling data in rotated latitude-longitude grid systems, often used in meteorological and climatological models.
- The unique constraints and indexes ensure that each grid is distinct and easily identifiable by its name.
- The check constraints enforce data integrity, especially in terms of grid configurations and spatial references.
- The table's relationship with earth shape and datum models adds crucial context for interpreting spatial data.

