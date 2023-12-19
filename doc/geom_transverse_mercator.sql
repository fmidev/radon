## Database Table: `geom_transverse_mercator`

### Table Description
The `geom_transverse_mercator` table in the `public` schema is tailored for storing information about Transverse Mercator geometric projections. This table includes parameters such as grid dimensions, the orientation of the grid, and specific scaling factors, along with the first point of the grid in spatial coordinates.

### Columns
| Column Name    | Type                        | Nullable | Default | Description                                             |
| -------------- | --------------------------- | -------- | ------- | ------------------------------------------------------- |
| `id`           | `integer`                   | not null |         | Unique identifier for the geometric grid record.        |
| `name`         | `text`                      | not null |         | Name of the geometric grid.                             |
| `ni`           | `integer`                   | not null |         | Number of grid points along the x-axis.                 |
| `nj`           | `integer`                   | not null |         | Number of grid points along the y-axis.                 |
| `first_point`  | `geometry(Point,4326)`      | not null |         | The first grid point in the system, specified in WGS 84.|
| `di`           | `numeric`                   | not null |         | Grid point spacing along the x-axis.                    |
| `dj`           | `numeric`                   | not null |         | Grid point spacing along the y-axis.                    |
| `scanning_mode`| `text`                      | not null |         | Scanning mode for the grid.                             |
| `orientation`  | `numeric`                   | not null |         | Orientation angle of the grid.                          |
| `latin`        | `numeric`                   | not null |         | Latitude of the natural origin.                         |
| `scale`        | `numeric`                   | not null |         | Scale factor at the natural origin.                     |
| `description`  | `text`                      | not null |         | Description of the geometric grid.                      |
| `last_updater` | `text`                      |          |         | Information about who last updated the record.          |
| `last_updated` | `timestamp with time zone`  |          |         | Timestamp of the last update to the record.             |
| `earth_shape_id`| `integer`                  |          |         | Reference to an earth shape model.                      |
| `datum_id`     | `integer`                  |          |         | Reference to a datum model.                             |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `geom_transverse_mercator_name_uniq` on the column (`name`) (using btree)

### Check Constraints
- **`geom_transverse_mercator_datum_chk`**: CHECK (datum_id IS NULL OR datum_id IS NOT NULL AND earth_shape_id IS NULL)
- **`geom_transverse_mercator_scanning_mode_chk`**: CHECK (scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text]))

### Foreign-key Constraints
- **`geom_transverse_mercator_datum_id_fkey`**: Foreign Key constraint on `datum_id` referencing `datum(id)`
- **`geom_transverse_mercator_earth_shape_id_fkey`**: Foreign Key constraint on `earth_shape_id` referencing `earth_shape(id)`
- **`geom_transverse_mercator_geom_fkey_02`**: Foreign Key constraint on `id` referencing `geom(id)`
- **`geom_transverse_mercator_geom_fkey_03`**: Foreign Key constraint on `name` referencing `geom(name)`

### Notes
- The table is essential for managing data related to Transverse Mercator projections, commonly used in cartography and GIS.
- Unique constraints and indexes ensure each grid's distinct identification.
- The check constraints enforce data integrity, particularly in terms of projection parameters and grid configurations.
- The table's relationship with earth shape and datum models adds crucial context for spatial data interpretation.

