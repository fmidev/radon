## Database Table: `producer_meta`

### Table Description
The `producer_meta` table in the `public` schema is structured to store miscellaneous metadata related to producers. It links metadata attributes and values to specific producers, identified by their `producer_id`.

### Columns
| Column Name   | Type                            | Nullable | Default | Description                                      |
| ------------- | ------------------------------- | -------- | ------- | ------------------------------------------------ |
| `producer_id` | `integer`                       | not null |         | Identifier for the producer.                     |
| `attribute`   | `text`                          | not null |         | The name of the metadata attribute.              |
| `value`       | `text`                          | not null |         | The value associated with the metadata attribute.|
| `last_updater`| `text`                          |          |         | Information about who last updated the record.   |
| `last_updated`| `timestamp with time zone`      |          |         | Timestamp of the last update to the record.      |

### Indexes
- **Primary Key**: (`producer_id`, `attribute`) (using btree)

### Foreign-key Constraints
- **`producer_meta_fmi_producer_fkey`**: Foreign Key constraint on `producer_id` referencing `fmi_producer(id)`

### Notes
- The primary key is a composite of `producer_id` and `attribute`, ensuring that each metadata attribute is uniquely associated with a specific producer.
- This table is essential for managing additional descriptive information about producers, which can be crucial for understanding the context and specifics of the data they provide.
- The table tracks the history of each metadata record, including updates and the identity of the individual who made the last update.

