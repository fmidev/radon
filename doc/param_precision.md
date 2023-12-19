## Database Table: `param_precision`

### Table Description
The `param_precision` table, located in the `public` schema, is specifically designed to store precision details for various parameters. It links each precision value to a specific parameter identified by `param_id`.

### Columns
| Column Name   | Type                            | Nullable | Default Value                                | Description                                   |
| ------------- | ------------------------------- | -------- | -------------------------------------------- | --------------------------------------------- |
| `id`          | `integer`                       | not null | `nextval('param_precision_id_seq'::regclass)`| Unique identifier for each precision record.  |
| `param_id`    | `integer`                       | not null |                                              | Identifier for the associated parameter.      |
| `precision`   | `integer`                       | not null |                                              | Precision value for the parameter: how many decimal digits to store.            |
| `last_updater`| `text`                          |          |                                              | Information about who last updated the record.|
| `last_updated`| `timestamp with time zone`      |          |                                              | Timestamp of the last update to the record.   |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `param_precision_param_id_key` on the column (`param_id`) (using btree)

### Foreign-key Constraints
- **`param_precision_param_id_fkey`**: Foreign Key constraint on `param_id` referencing `param(id)`

### Notes
- The `id` column is auto-incremented using a sequence.
- The unique constraint on `param_id` ensures that each parameter has a unique precision record.
- The table is linked to the `param` table through a foreign key, providing a reference to the associated parameter.

