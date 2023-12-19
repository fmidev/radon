## Database Table: `param_unit`

### Table Description
The `param_unit` table, part of the `public` schema, is designed to store information about different units used in parameters. It includes a unique identifier for each unit, its name, and a description.

### Columns
| Column Name   | Type                                  | Nullable | Default Value                             | Description                               |
| ------------- | ------------------------------------- | -------- | ----------------------------------------- | ----------------------------------------- |
| `id`          | `integer`                             | not null | `nextval('param_unit_id_seq'::regclass)`  | Unique identifier for each unit.          |
| `name`        | `character varying(50)`               | not null |                                           | Name of the unit.                         |
| `description` | `text`                                | not null |                                           | Description of the unit.                  |
| `last_updater`| `text`                                |          |                                           | Information about who last updated the record. |
| `last_updated`| `timestamp(0) without time zone`      |          |                                           | Timestamp of the last update to the record. |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `param_unit_name_uniq` on the column (`name`) (using btree)

### Notes
- The `id` column is auto-incremented using a sequence.
- The `name` column has a unique constraint, ensuring that each unit name is distinct.
- The table provides detailed information about each unit, including its name and description, and tracks the last updates made.

