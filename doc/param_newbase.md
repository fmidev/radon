## Database Table: `param_newbase`

### Table Description
The `param_newbase` table in the `public` schema is structured to store enhanced parameter information. It links various identifiers and includes scaling and basing information for each parameter. This table also maintains metadata about updates.

### Columns
| Column Name    | Type                          | Nullable | Default Value                                 | Description                                            |
| -------------- | ----------------------------- | -------- | --------------------------------------------- | ------------------------------------------------------ |
| `id`           | `integer`                     | not null | `nextval('param_newbase_id_seq'::regclass)`   | Unique identifier for each entry.                      |
| `producer_id`  | `integer`                     | not null |                                               | Identifier for the producer.                           |
| `param_id`     | `integer`                     | not null |                                               | Parameter identifier.                                  |
| `univ_id`      | `integer`                     | not null |                                               | Universal (newbase) identifier for parameters.                   |
| `scale`        | `numeric`                     | not null | `1`                                           | Scaling factor for the parameter (multiplied with parameter value).                      |
| `base`         | `numeric`                     | not null | `0`                                           | Base value for the parameter (added to parameter value).                          |
| `last_updater` | `text`                        |          |                                               | Information about who last updated the record.         |
| `last_updated` | `timestamp with time zone`    |          |                                               | Timestamp of the last update to the record.            |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `param_newbase_producer_id_param_id_univ_id_uniq_idx` on columns (`producer_id`, `param_id`, `univ_id`) (using btree)

### Foreign-key Constraints
- **`param_newbase_fmi_producer_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`
- **`param_newbase_param_fkey_02`**: Foreign Key constraint on `param_id` referencing `param(id)`

### Notes
- The `id` column is auto-incremented using a sequence.
- The unique constraint ensures that each combination of `producer_id`, `param_id`, and `univ_id` is distinct in the table.
- The `scale` and `base` fields are used for scaling and basing parameters.
- The table is linked to `fmi_producer` and `param` tables through foreign key relationships.

