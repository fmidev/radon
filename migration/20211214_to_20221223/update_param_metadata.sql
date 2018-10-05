-- script to update any table that contains a param-column that needs to split
-- into param,aggregation,processing_type

UPDATE _TABLE_ SET processing_type_id = 4, processing_type_value = 273.15, param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-TC-0');
UPDATE _TABLE_ SET processing_type_id = 4, processing_type_value = 259.15, param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-TC-1');
UPDATE _TABLE_ SET processing_type_id = 4, processing_type_value = 254.15, param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-TC-2');
UPDATE _TABLE_ SET processing_type_id = 4, processing_type_value = 249.15, param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-TC-3');
UPDATE _TABLE_ SET processing_type_id = 4, processing_type_value = 244.15, param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-TC-4');
UPDATE _TABLE_ SET processing_type_id = 4, processing_type_value = 238.15, param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-TC-5');
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 30, param_id = (SELECT id FROM param WHERE name = 'CSI-N') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-CSI-1');
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 60, param_id = (SELECT id FROM param WHERE name = 'CSI-N') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-CSI-2');
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 100, param_id = (SELECT id FROM param WHERE name = 'CSI-N') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-CSI-3');
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name = 'POT-PRCNT') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-POT-1');
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 30, param_id = (SELECT id FROM param WHERE name = 'POT-PRCNT') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-POT-2');
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 60, param_id = (SELECT id FROM param WHERE name = 'POT-PRCNT') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-POT-3');
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 10, processing_type_value = 20, processing_type_value2 = 33, param_id = (SELECT id FROM param WHERE name = 'FFG-MS') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-WG-AGG-1');
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 10, processing_type_value = 20, processing_type_value2 = 33, param_id = (SELECT id FROM param WHERE name = 'RR-KGM2') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-RR-AGG-1');
UPDATE _TABLE_ SET processing_type_id = 13, processing_type_value = 7, processing_type_value2 = 33, param_id = (SELECT id FROM param WHERE name = 'PRECFORM-N') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-HAIL-AGG-1');
UPDATE _TABLE_ SET processing_type_id = 10, processing_type_value = 25, processing_type_value2 = 33, param_id = (SELECT id FROM param WHERE name = 'FL-MPLTY-N') WHERE param_id = (SELECT id FROM param WHERE name = 'PROB-FLASH-AGG-1');
