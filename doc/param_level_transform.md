param_level_transform table containes mapping information between FMI level conventions and any model level definitions. FMI level conventions follow closely what HIRLAM has defined, whereas some other models are using very different schemes.

| column | data type | NOT NULL | description | foreign key |
|---|---|---|---|---|
| id | integer (serial) | X | auto-generated primary key | |
| producer_id | integer | X | producer id | fmi_producer(id) |
| param_id | integer | X | database parameter id | param(id) |
| other_level_id | integer | X | level id found from the model data | level(id) |
| other_level_value | numeric | | level value found from the model data, if null, then all values are considered | |
| fmi_level_id | integer | X | level id from FMI conventions | level(id) |
| fmi_level_value | numeric | | level value from FMI conventions, if null then use source level value | |
| last_updater | text | | username of the last modifier | |
| last_updated | timestamptz | | time of last modification | |

For example mapping level FMI convention level height/2 to ground/0 for parameter T-K and producer 131, one would write:

    INSERT INTO param_level_transform VALUES (DEFAULT, 131, (SELECT id FROM param WHERE name = 'T-K'), (SELECT id FROM level WHERE name = 'GROUND'), 0, (SELECT id FROM level WHERE name = 'HEIGHT'), 2);
