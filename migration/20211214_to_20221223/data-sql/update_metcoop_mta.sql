<<<<<<< HEAD
=======
UPDATE _TABLE_ SET param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id = (SELECT id FROM param WHERE name = 'PRI-KGM2');
>>>>>>> 8d00b7d (STU-8689: Extending radon table structure with 3 new dimensions)
UPDATE _TABLE_ SET aggregation_id = 2, aggregation_period = '01:00:00' WHERE param_id IN (SELECT id FROM param WHERE name IN ('RADSW-WM2', 'RADLW-WM2', 'RADGLO-WM2'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', production_type_id = 3, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FFG2-MS'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00' WHERE param_id = (SELECT id FROM param WHERE name = 'FFG-MS');
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', param_id = (SELECT id FROM param WHERE name IN ('GR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('GRR-MMH'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 100, param_id = (SELECT id FROM param WHERE name IN ('CAPE-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE-1'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 500, param_id = (SELECT id FROM param WHERE name IN ('CAPE-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE-2'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 1000, param_id = (SELECT id FROM param WHERE name IN ('CAPE-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE-3'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 1500, param_id = (SELECT id FROM param WHERE name IN ('CAPE-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE-4'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 2000, param_id = (SELECT id FROM param WHERE name IN ('CAPE-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE-5'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 50, param_id = (SELECT id FROM param WHERE name IN ('CAPE1040-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE1040-1'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 100, param_id = (SELECT id FROM param WHERE name IN ('CAPE1040-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE1040-2'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 500, param_id = (SELECT id FROM param WHERE name IN ('CAPE1040-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE1040-3'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 1000, param_id = (SELECT id FROM param WHERE name IN ('CAPE1040-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE1040-4'));
UPDATE _TABLE_ SET processing_type_id = 2, processing_type_value = 1500, param_id = (SELECT id FROM param WHERE name IN ('CAPE1040-JKG')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-CAPE1040-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 0.3, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 2, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 4, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN-4'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 6, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RRS-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-SN-6'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 15, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-WG-1'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 20, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-WG-2'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 25, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-WG-3'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 30, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-WG-4'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 35, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-WG-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 1, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-1'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 5, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-2'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 10, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-3'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 20, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-4'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 35, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-5'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 45, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-6'));
UPDATE _TABLE_ SET aggregation_id = 3, aggregation_period = '01:00:00', processing_type_id = 2, processing_type_value = 0.025, param_id = (SELECT id FROM param WHERE name IN ('RR-KGM2')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('PROB-RR-7'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 16, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FFG-MEAN-MS'));
UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 17, param_id = (SELECT id FROM param WHERE name IN ('FFG-MS')) WHERE param_id IN (SELECT id FROM param WHERE name IN ('FFG-STDDEV-MS'));

DO $$
DECLARE
    fractiles int[] := ARRAY[0, 10, 25, 50, 75, 90, 100];
    fractile int;
BEGIN
    FOREACH fractile IN ARRAY fractiles LOOP
        UPDATE _TABLE_ SET aggregation_id = 2, aggregation_period = '01:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'RADGLO-WM2') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-RADGLO-WM2');
        UPDATE _TABLE_ SET aggregation_id = 4, aggregation_period = '01:00:00', processing_type_id = 8, processing_type_value = fractile, param_id = (SELECT id FROM param WHERE name = 'FFG-MS') WHERE param_id = (SELECT id FROM param WHERE name = 'F' || fractile || '-FFG-MS');

    END LOOP;
END;
$$;
