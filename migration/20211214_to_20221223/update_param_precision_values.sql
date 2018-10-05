DELETE FROM param_precision WHERE param_id IN (SELECT id FROM param WHERE name like 'PROB-RR-%' OR name LIKE 'PROB-TC-%' OR name IN ('SNRI-KGM2', 'RRI-KGM2'));
