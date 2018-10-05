DELETE FROM param_grib1 WHERE param_id IN (SELECT id FROM param where name like 'PROB-RR-%' OR name like 'PROB-TC-%' OR name IN ('SNRI-KGM2', 'RRI-KGM2', 'GRI-KGM2'));
UPDATE param_grib1 SET param_id = (SELECT id FROM param WHERE name = 'T-K') WHERE param_id = (SELECT id FROM param WHERE name = 'TMAX-K');
UPDATE param_grib1 SET param_id = (SELECT id FROM param WHERE name = 'T-K') WHERE param_id = (SELECT id FROM param WHERE name = 'TMIN-K');
