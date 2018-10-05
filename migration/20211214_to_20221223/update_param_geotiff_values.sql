DELETE FROM param_geotiff WHERE param_id IN (SELECT id FROM param WHERE name IN ('SNRI-KGM2', 'RRI-KGM2'));
