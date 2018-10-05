DELETE FROM _TABLE_ WHERE param_id = (SELECT id FROM param WHERE name = 'RR-1-MM');
-- UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2'), aggregation_id = 3, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RR-1-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2'), aggregation_id = 3, aggregation_period = '03:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RR-3-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2'), aggregation_id = 3, aggregation_period = '06:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RR-6-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2'), aggregation_id = 3, aggregation_period = '12:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RR-12-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2'), aggregation_id = 3, aggregation_period = '24:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RR-24-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RR-KGM2'), aggregation_id = 3, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RRR-KGM2');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RRS-KGM2'), aggregation_id = 3, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RRRS-KGM2');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RRS-KGM2'), aggregation_id = 3, aggregation_period = '03:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RRS-3-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2'), aggregation_id = 3, aggregation_period = '03:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'SN-3-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2'), aggregation_id = 3, aggregation_period = '06:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'SN-6-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2'), aggregation_id = 3, aggregation_period = '24:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'SN-24-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2'), aggregation_id = 3, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'SNR-KGM2');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RRS-KGM2'), aggregation_id = 1, aggregation_period = '00:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RSI-KGM2');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RRS-KGM2'), aggregation_id = 3, aggregation_period = '24:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RRS-24-MM');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RRC-KGM2'), aggregation_id = 3, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RRRC-KGM2');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RRL-KGM2'), aggregation_id = 3, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RRRL-KGM2');
UPDATE _TABLE_ SET aggregation_id = 2, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'RADSW-WM2');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'T-K'), processing_type_id = 15 WHERE param_id = (SELECT id FROM param WHERE name = 'T-BIASC-K');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'RH-0TO1'), processing_type_id = 15 WHERE param_id = (SELECT id FROM param WHERE name = 'RH-BIASC-0TO1');
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name = 'FF-MS'), processing_type_id = 15 WHERE param_id = (SELECT id FROM param WHERE name = 'FF-BIASC-MS');
UPDATE _TABLE_ SET production_type_id = 2, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PRECFORM2-N'));
UPDATE _TABLE_ SET production_type_id = 6, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PRECFORM4-N'));
UPDATE _TABLE_ SET production_type_id = 4, param_id = (SELECT id FROM param WHERE name IN ('CEIL-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('CEIL-2-M'));
UPDATE _TABLE_ SET production_type_id = 5, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('VV2-M'));
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('RAIL-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('RAIL-MEAN-N'));
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('SNOWLOAD-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('SNOWLOAD-MEAN-KGM2'));
UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('SNOWLOAD-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('SNOWLOAD-STDDEV-KGM2'));
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('TD-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('TD-MEAN-K'));
UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('TD-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('TD-STDDEV-K'));
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('T-MEAN-K'));
UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('T-STDDEV-K'));
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('P-PA')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('P-MEAN-PA'));
UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('P-PA')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('P-STDDEV-PA'));
UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FF-MEAN-MS'));
UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FF-STDDEV-MS'));
--UPDATE _TABLE_ SET processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FFG-MEAN-MS'));
--UPDATE _TABLE_ SET processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FFG-STDDEV-MS'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 299.15, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-TW-1'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 301.15, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-TW-2'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 304.15, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-TW-3'));

UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '3:00:00', processing_type_id = 2, processing_type_value = 0.3, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR3-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '3:00:00', processing_type_id = 2, processing_type_value = 3, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR3-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '3:00:00', processing_type_id = 2, processing_type_value = 6, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR3-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '3:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR3-4'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '3:00:00', processing_type_id = 2, processing_type_value = 20, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR3-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '3:00:00', processing_type_id = 2, processing_type_value = 0.01, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR3-6'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '6:00:00', processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR6-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '6:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR6-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '6:00:00', processing_type_id = 2, processing_type_value = 20, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR6-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '12:00:00', processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR12-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '12:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR12-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '12:00:00', processing_type_id = 2, processing_type_value = 20, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR12-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 20, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 30, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-4'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 50, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 70, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-6'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 2, processing_type_value = 100, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR24-7'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 0, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-DRIZZLE'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RAIN'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 2, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SLEET'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 3, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SNOW'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 4, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-FRDRZZL'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 5, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-FRRAIN'));
UPDATE _TABLE_ SET processing_type_id = 7, processing_type_value = 4, processing_type_value2 = 5, param_id = (SELECT id FROM param WHERE name IN ('PRECFORM-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-FRPREC'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 0, param_id = (SELECT id FROM param WHERE name IN ('POTPRECF-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-POTDRIZZLE'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('POTPRECF-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-POTRAIN'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 2, param_id = (SELECT id FROM param WHERE name IN ('POTPRECF-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-POTSLEET'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 3, param_id = (SELECT id FROM param WHERE name IN ('POTPRECF-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-POTSNOW'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 4, param_id = (SELECT id FROM param WHERE name IN ('POTPRECF-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-POTFRDRZZL'));
UPDATE _TABLE_ SET processing_type_id = 6, processing_type_value = 5, param_id = (SELECT id FROM param WHERE name IN ('POTPRECF-N')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-POTFRRAIN'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 0, param_id = (SELECT id FROM param WHERE name IN ('CBTCU-FL')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CBTCU-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN3-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 2, processing_type_value = 2, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN3-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 2, processing_type_value = 5, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN3-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN3-4'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 2, processing_type_value = 15, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN3-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 2, processing_type_value = 25, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN3-6'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 61, param_id = (SELECT id FROM param WHERE name IN ('CEIL-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CEIL-1'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 152, param_id = (SELECT id FROM param WHERE name IN ('CEIL-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CEIL-2'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 305, param_id = (SELECT id FROM param WHERE name IN ('CEIL-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CEIL-3'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 457, param_id = (SELECT id FROM param WHERE name IN ('CEIL-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CEIL-4'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 11, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-W-1'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 14, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-W-2'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 17, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-W-3'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 21, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-W-4'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 25, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-W-5'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 32, param_id = (SELECT id FROM param WHERE name IN ('FF-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-W-6'));

UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 600, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV-1'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 1000, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV-2'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 1500, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV-3'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 3000, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV-4'));
UPDATE _TABLE_ SET processing_type_id = 5, processing_type_value = 5000, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV-5'));
UPDATE _TABLE_ SET production_type_id = 6, processing_type_id = 5, processing_type_value = 600, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV2-1'));
UPDATE _TABLE_ SET production_type_id = 6, processing_type_id = 5, processing_type_value = 1000, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV2-2'));
UPDATE _TABLE_ SET production_type_id = 6, processing_type_id = 5, processing_type_value = 1500, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV2-3'));
UPDATE _TABLE_ SET production_type_id = 6, processing_type_id = 5, processing_type_value = 3000, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV2-4'));
UPDATE _TABLE_ SET production_type_id = 6, processing_type_id = 5, processing_type_value = 5000, param_id = (SELECT id FROM param WHERE name IN ('VV-M')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-VV2-5'));
/*
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 0, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F0-T-K'));
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F10-T-K'));
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 25, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F25-T-K'));
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 50, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F50-T-K'));
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 75, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F75-T-K'));
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 90, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F90-T-K'));
UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = 100, param_id = (SELECT id FROM param WHERE name IN ('T-K')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('F100-T-K'));
*/

DO $$
DECLARE
    params text[] := ARRAY['T-K', 'TD-K', 'FF-MS', 'N-0TO1', 'NLM-PRCNT', 'P-PA', 'SNOWLOAD-KGM2'];
    param_name text;
    fractiles int[] := ARRAY[0, 10, 25, 50, 75, 90, 100];
    fractile int;
BEGIN
    FOREACH param_name IN ARRAY params LOOP
        RAISE NOTICE 'Update fractiles for param: %', param_name;
        FOREACH fractile IN ARRAY fractiles LOOP
           UPDATE _TABLE_ SET processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = param_name) WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-' || param_name);
        END LOOP;
    END LOOP;
END;
$$;

DO $$
DECLARE
    fractiles int[] := ARRAY[0, 10, 25, 50, 75, 90, 100];
    fractile int;
BEGIN
    FOREACH fractile IN ARRAY fractiles LOOP
       UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'SNACC-KGM2') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-SN-24-MM');
       UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'RRS-KGM2') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-RRS-24-MM');
       UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '24:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'RR-KGM2') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-RR-24-MM');
       UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '03:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'RR-KGM2') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-RR-3-MM');

--       UPDATE _TABLE_ SET aggregation_id = 2, aggregation_period = '01:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'RADGLO-WM2') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-RADGLO-WM2');


/*
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'RRS-KGM2'), DEFAULT, 3, '24:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-RRS-24-MM');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'RR-KGM2'), DEFAULT, 3, '03:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-RR-3-MM');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'RR-KGM2'), DEFAULT, 3, '24:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-RR-24-MM');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'RADGLO-WM2'), DEFAULT, 2, '01:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-RADGLO-WM2');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'RADGLO-WM2'), DEFAULT, 2, '03:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-RADGLO-WM2');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'RADGLO-WM2'), DEFAULT, 2, '06:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-RADGLO-WM2');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'FFG-MS'), DEFAULT, 2, '01:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-FFG-MS');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'FFG-MS'), DEFAULT, 2, '03:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-FFG-MS');
       INSERT INTO param_v2_to_v1 VALUES (DEFAULT, -1, (SELECT id FROM param WHERE name = 'FFG-MS'), DEFAULT, 2, '06:00:00', 8, fractile, DEFAULT, false, 'F' || fractile ||'-FFG-MS');
*/
    END LOOP;
END;
$$;
