DO $$
DECLARE
  params text[] := ARRAY['RR-KGM2','PRI-KGM2', 'GR-KGM2', 'GRI-KGM2', 'SNACC-KGM2', 'SNRI-KGM2', 'RADLWA-JM2', 'RADLW-WM2', 'RADSWA-JM2', 'RADSW-WM2', 'RNETLWA-JM2', 'RNETLW-WM2', 'RTOPSWA-JM2', 'RTOPSW-WM2'];
  param_a text;
  param_b text;
BEGIN
  FOR i IN 1..array_length(params,1) by 2 LOOP
    param_a := params[i];
    param_b := params[i+1];
    BEGIN
      UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = forecast_period WHERE param_id = (SELECT id FROM param WHERE name = param_a) AND aggregation_id = 1 and aggregation_period='00:00:00';
      UPDATE _TABLE_ SET aggregation_id = 1, aggregation_period = DEFAULT, param_id = (SELECT id FROM param WHERE name = param_a) WHERE param_id = (SELECT id FROM param WHERE name = param_b);
    EXCEPTION
      WHEN unique_violation THEN RAISE NOTICE '% -> % update failed -- maybe done already?', param_b, param_a;
    END;
  END LOOP;
END;
$$;

UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = forecast_period WHERE param_id IN (SELECT id FROM param WHERE name IN ('FLLAT-JM2','FLSEN-JM2','RADGLOA-JM2','RADGLOCA-JM2','RADLWCA-JM2','RNETSWA-JM2','RTOPLWA-JM2','SDNIRR-JM2', 'EVAP-KGM2', 'LHE-JM2', 'RACC-KGM2', 'RRS-KGM2', 'BLDIS-JM2', 'RRC-KGM2', 'RRL-KGM2')) AND aggregation_id = 1 and aggregation_period='00:00:00';
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('T-MEAN-K'));
UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('T-STDDEV-K'));
