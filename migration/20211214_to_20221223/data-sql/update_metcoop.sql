UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', param_id = (SELECT id FROM param WHERE name = 'T-K') WHERE param_id = (SELECT id FROM param WHERE name = 'TMAX-K');
UPDATE _TABLE_ SET aggregation_id = 5, aggregation_period = '01:00:00', param_id = (SELECT id FROM param WHERE name = 'T-K') WHERE param_id = (SELECT id FROM param WHERE name = 'TMIN-K');
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'FFG-MS');

