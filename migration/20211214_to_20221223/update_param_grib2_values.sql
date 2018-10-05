UPDATE param_grib2 SET param_id = (SELECT id FROM param WHERE name = 'T-C') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-TC%');
UPDATE param_grib2 SET param_id = (SELECT id FROM param WHERE name = 'T-K') WHERE param_id IN (SELECT id FROM param WHERE name LIKE 'PROB-TK%');
UPDATE param_grib2 SET param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2') WHERE param_id = (SELECT id FROM param WHERE name = 'SNRI-KGM2');
DELETE FROM param_grib2 WHERE param_id IN (SELECT id FROM param where name like 'PROB-TC-%' OR name IN ('SNRI-KGM2', 'RRI-KGM2', 'GRI-KGM2'));
