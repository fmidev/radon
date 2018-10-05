UPDATE param_grib2_template SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-RR%');
UPDATE param_grib2_template SET param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-TC%');
UPDATE param_grib2_template SET param_id = (SELECT id FROM param WHERE name = 'T-K') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-TK%');
UPDATE param_grib2_template SET param_id = (SELECT id FROM param WHERE name = 'CSI-N') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-CSI-%');
UPDATE param_grib2_template SET param_id = (SELECT id FROM param WHERE name = 'POT-PRCNT') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-POT-%');

DELETE FROM param_grib2_template WHERE param_id IN (SELECT id FROM param WHERE name like 'PROB-RR-%' OR name LIKE 'PROB-TC-%' OR name IN ('SNRI-KGM2', 'RRI-KGM2', 'GRI-KGM2'));
