## Database Table: `param`

### Table Description
The `param` table in the `public` schema is structured to store various parameters. Each parameter has unique identifiers, names, versions, and is associated with specific units and interpolation methods. Additional fields include descriptions, information about the last update, and who performed it.

### Columns
| Column Name        | Data Type                                   | Nullable | Default Value                          | Description                                      |
| ------------------ | ------------------------------------------- | -------- | -------------------------------------- | ------------------------------------------------ |
| `id`               | `integer`                                   | not null | `nextval('param_id_seq'::regclass)`    | Unique identifier for each parameter.            |
| `name`             | `character varying(50)`                     | not null |                                        | Name of the parameter.                           |
| `version`          | `integer`                                   | not null | `1`                                    | Version number of the parameter. DEPRECATED.                 |
| `unit_id`          | `integer`                                   | not null |                                        | Identifier linking to a unit.                    |
| `interpolation_id` | `integer`                                   | not null |                                        | Identifier linking to an interpolation method.  |
| `description`      | `text`                                      |          |                                        | Textual description of the parameter.            |
| `last_updater`     | `text`                                      |          |                                        | Information about who last updated the record.  |
| `last_updated`     | `timestamp(0) without time zone`            |          |                                        | Timestamp of the last update to the record.     |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `param_name_version_idx` on columns (`name`, `version`) (using btree)

### Foreign-key Constraints
- **`param_interpolation_id_idx`**: Foreign Key constraint on `interpolation_id` referencing `interpolation_method(id)`
- **`param_unit_id_idx`**: Foreign Key constraint on `unit_id` referencing `param_unit(id)`

### Notes
- The `id` column uses a sequence for auto-incrementing values.
- The `name` and `version` columns together are unique for each record.
- The `description`, `last_updater`, and `last_updated` fields are optional.
- The table includes relations to `interpolation_method` and `param_unit` tables through foreign keys.

