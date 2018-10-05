UPDATE param_newbase SET aggregation_id = 3 WHERE param_id IN (SELECT id FROM param WHERE name = 'SNACC-KGM2');
UPDATE param_newbase SET aggregation_id = 1, param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2') WHERE param_id IN (SELECT id FROM param WHERE name = 'SNRI-KGM2');
UPDATE param_newbase SET aggregation_id = 3 WHERE param_id IN (SELECT id FROM param WHERE name = 'RR-KGM2');
UPDATE param_newbase SET aggregation_id = 1, param_id = (SELECT id FROM param WHERE name = 'RR-KGM2') WHERE param_id IN (SELECT id FROM param WHERE name = 'RRI-KGM2');
UPDATE param_newbase SET aggregation_id = 3 WHERE param_id IN (SELECT id FROM param WHERE name = 'GR-KGM2');
UPDATE param_newbase SET aggregation_id = 1, param_id = (SELECT id FROM param WHERE name = 'GR-KGM2') WHERE param_id IN (SELECT id FROM param WHERE name = 'GRI-KGM2');
UPDATE param_newbase SET aggregation_id = 3 WHERE param_id IN (SELECT id FROM param WHERE name IN ('SDNIRR-JM2','EVAP-KGM2'));


