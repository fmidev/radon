INSERT INTO table_meta_grid VALUES (default, 4, 'data','grid_meps', (select id from geom where name = 'MEPS2500D'), interval '10 days', '{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}');

INSERT INTO table_meta_grid VALUES (default, 260, 'data','grid_mepsmta', (select id from geom where name = 'MEPS2500D'), interval '10 days', '{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}');

DELETE FROM public.param_grib2 WHERE type_of_statistical_processing != -1;
ALTER TABLE public.param_grib2 DROP COLUMN type_of_statistical_processing CASCADE;
\i param_grib2_v.sql

DELETE FROM public.param_grib2_template WHERE type_of_statistical_processing != -1;
ALTER TABLE public.param_grib2_template DROP COLUMN type_of_statistical_processing CASCADE;
\i param_grib2_template_v.sql

SELECT pg_catalog.set_config('search_path', 'public', false);

INSERT INTO param_grib2_template VALUES ((Select id from param where name ='RR-KGM2'), 0, 1, 8);
INSERT INTO param_grib2_template VALUES ((Select id from param where name ='RR-KGM2'), 0, 1, 52);
INSERT INTO param_grib2 VALUES (default, 260, (Select id from param where name ='RR-KGM2'), 0, 1, 202);
