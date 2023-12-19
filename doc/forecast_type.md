## Database Table: `forecast_type`

### Table Description
The `forecast_type` table in the `public` schema is designed to categorize different types of forecasts. 

Current types are: deterministic, analysis, control forecat, perturbed forecast, statistical processing

Table includes unique identifiers for each forecast type, along with names and descriptions.

### Columns
| Column Name   | Type                            | Nullable | Default Value                              | Description                                          |
| ------------- | ------------------------------- | -------- | ------------------------------------------ | ---------------------------------------------------- |
| `id`          | `integer`                       | not null | `nextval('forecast_type_id_seq'::regclass)`| Unique identifier for each forecast type.           |
| `name`        | `character varying(50)`         | not null |                                            | Name of the forecast type.                           |
| `description` | `text`                          | not null |                                            | Description of the forecast type.                    |
| `last_updater`| `text`                          |          |                                            | Information about who last updated the record.       |
| `last_updated`| `timestamp with time zone`      |          |                                            | Timestamp of the last update to the record.          |

### Indexes
- **Primary Key**: `id` (using btree)
- **Unique Constraint**: `forecast_type_name_uniq` on the column (`name`) (using btree)

### Notes
- The `id` column is auto-incremented using a sequence.
- The `name` column has a unique constraint, ensuring that each forecast type name is distinct.
- The table provides detailed information about each forecast type, including its name and description, and tracks the last updates made.

