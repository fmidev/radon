## Database Table: `geom_lambert_conformal`

### Table Description
The `geom_lambert_conformal` table in the `public` schema is designed to store information about Lambert Conformal Conic geometric projections. This table includes parameters specific to this projection type such as grid dimensions, orientation, and reference points.

### Columns
| Column Name    | Type                        | Nullable | Default | Description                                                   |
| -------------- | --------------------------- | -------- | ------- | ------------------------------------------------------------- |
| `id`           | `integer`                   | not null |         | Unique identifier for the geometric projection record.        |
| `name`         | `text`                      | not null |         | Name of the geometric projection.                             |
| `ni`           | `integer`                   | not null |         | Number of grid points along the x-axis (i-coordinate).        |
| `nj`           | `integer`                   | not null |         | Number of grid points along the y-axis (j-coordinate).        |
| `first_point`  | `geometry(Point,4326)`      | not null |         | The first grid point in the projection, specified in WGS 84.  |
| `di`           | `numeric`                   | not null |         | Grid point spacing along the x-axis.                          |
| `dj`           | `numeric`                   | not null |         | Grid point spacing along the y-axis.                          |
| `scanning_mode`| `text`                      | not null |         | Scanning mode for the grid.                                   |
| `orientation`  | `numeric`                   | not null |         | Orientation of the grid.                                      |
| `latin1`       | `numeric`                   | not null |         | First latitude from pole at which the secant cone cuts the sphere. |
| `latin2`       | `numeric`                   |          |         | Second latitude from pole at which the secant cone cuts the sphere. |
| `south_pole`   | `geometry(Point,4326)`      |          |         | Location of the south pole in the projection, specified in WGS 84. |
| `description`  | `text`                      | not null |         | Description of the geometric projection.                      |
| `last_updater` | `text`                      |          |         | Information about who last updated the record.                |
| `last_updated` | `timestamp with time zone`  |          |         | Timestamp of the last update to the record.                   |
| `earth_shape_id`| `integer`                  |          |         | Reference to an earth shape model.                            |
| `datum_id`     | `integer`                   |          |         | Reference to a datum model.                                   |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `geom_lambert_conformal_name_uniq` on the column (`name`) (using btree)

### Check Constraints
- **`geom_lambert_conformal_datum_chk`**: CHECK (datum_id IS NULL OR datum_id IS NOT NULL AND earth_shape_id IS NULL)
- **`geom_lambert_conformal_scanning_mode_chk`**: CHECK (scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text]))

### Foreign-key Constraints
- **`geom_lambert_conformal_datum_id_fkey`**: Foreign Key constraint on `datum_id` referencing `datum(id)`
- **`geom_lambert_conformal_earth_shape_id_fkey`**: Foreign Key constraint on `earth_shape_id` referencing `earth_shape(id)`
- **`geom_lambert_conformal_geom_fkey_02`**: Foreign Key constraint on `id` referencing `geom(id)`
- **`geom_lambert_conformal_geom_fkey_03`**: Foreign Key constraint on `name` referencing `geom(name)`

### Notes
- The table is integral for managing Lambert Conformal geometric projections used in various spatial analyses and meteorological applications.
- The unique constraints and indexes ensure that each projection is distinct and easily retrievable.
- The check constraints enforce data integrity, particularly in terms of projection parameters and grid configurations.

