CREATE OR REPLACE FUNCTION 
  public.update_data_index_f(producer_id int,
                             geometry_id int,
                             forecast_type_id int,
                             forecast_type_values numeric[],
                             analysis_time timestamp,
                             forecast_periods interval[],
                             level_id int,
                             level_values numeric[],
                             param_names text[],
                             table_name text)
 RETURNS TEXT
 LANGUAGE plpgsql
 STRICT SECURITY DEFINER
AS $function$
DECLARE
  inssql varchar(600);
  selsql varchar(600);
  tmpsql varchar(100);
  r record;
  m1 bool;
  m2 bool;
  m3 bool;
  m4 bool;
  mi bool;
  tarr text[];
  narr numeric[];
  iarr interval[];
  ret text;
 BEGIN

  inssql := '
INSERT INTO data_index 
( producer_id,
  geometry_id,
  forecast_type_id,
  forecast_type_values,
  analysis_time,
  forecast_periods,
  level_id, 
  level_values,
  param_names,
  table_name
) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)';

  selsql := '
SELECT producer_id,
  geometry_id,
  forecast_type_id,
  forecast_type_values,
  analysis_time,
  forecast_periods,
  level_id, 
  level_values,
  param_names,
  table_name 
FROM
  data_index 
WHERE
  producer_id=$1
  AND geometry_id=$2
  AND forecast_type_id = $3
  AND analysis_time = $4
  AND level_id = $5';

  LOCK data_index IN EXCLUSIVE MODE;

  BEGIN
    mi := TRUE;
    tmpsql := 'SELECT $1 = count(*) FROM (SELECT unnest($2) INTERSECT SELECT unnest($3)) s';
    FOR r IN EXECUTE selsql USING producer_id, geometry_id, forecast_type_id, analysis_time, level_id
    LOOP
      RAISE NOTICE '%', r;

      EXECUTE tmpsql USING array_length(forecast_type_values, 1), forecast_type_values, r.forecast_type_values INTO m1;
      m2 := r.forecast_periods = forecast_periods;
      m3 := r.level_id = level_id AND r.level_values = level_values;
      m4 := r.param_names = param_names;
      -- RAISE NOTICE '% % % %', m1, m2, m3, m4;
      IF m1 AND m2 AND m3 AND m4
      THEN
        mi := FALSE;
        ret := 'did nothing';
        EXIT;
      END IF;

      IF m1 AND m2 AND m3
      THEN
        RAISE NOTICE 'Merge param';
        EXECUTE 'SELECT array_agg(DISTINCT x) FROM unnest(array_cat($1, $2)) t(x)' USING r.param_names, param_names INTO tarr;
        RAISE NOTICE '%', tarr;
        EXECUTE 'UPDATE data_index SET param_names = $1 WHERE producer_id=$2 AND geometry_id=$3 AND forecast_type_id = $4 AND forecast_type_values = $5 AND analysis_time = $6 AND forecast_periods = $7 AND level_id = $8 AND level_values = $9 AND param_names = $10' 
          USING tarr,
                r.producer_id,
                r.geometry_id,
                r.forecast_type_id,
                r.forecast_type_values,
                r.analysis_time,
                r.forecast_periods,
                r.level_id,
                r.level_values,
                r.param_names;
        mi := FALSE;
        ret := 'merge param';
        EXIT;
      END IF;

      IF m1 AND m2 AND m4
      THEN
        RAISE NOTICE 'Merge level';
        EXECUTE 'SELECT array_agg(DISTINCT x) FROM unnest(array_cat($1, $2)) t(x)' USING r.level_values, level_values INTO narr;
        RAISE NOTICE '%', narr;
        EXECUTE 'UPDATE data_index SET level_values = $1 WHERE producer_id=$2 AND geometry_id=$3 AND forecast_type_id = $4 AND forecast_type_values = $5 AND analysis_time = $6 AND forecast_periods = $7 AND level_id = $8 AND level_values = $9 AND param_names = $10' 
          USING narr,
                r.producer_id,
                r.geometry_id,
                r.forecast_type_id,
                r.forecast_type_values,
                r.analysis_time,
                r.forecast_periods,
                r.level_id,
                r.level_values,
                r.param_names;
        mi := FALSE;
        ret := 'merge level';
        EXIT;
      END IF;

      IF m1 AND m3 AND m4
      THEN
        RAISE NOTICE 'Merge forecast periods';
        EXECUTE 'SELECT array_agg(DISTINCT x) FROM unnest(array_cat($1, $2)) t(x)' USING r.forecast_periods, forecast_periods INTO iarr;
        RAISE NOTICE '%', iarr;
        EXECUTE 'UPDATE data_index SET forecast_periods = $1 WHERE producer_id=$2 AND geometry_id=$3 AND forecast_type_id = $4 AND forecast_type_values = $5 AND analysis_time = $6 AND forecast_periods = $7 AND level_id = $8 AND level_values = $9 AND param_names = $10'
          USING iarr,
                r.producer_id,
                r.geometry_id,
                r.forecast_type_id,
                r.forecast_type_values,
                r.analysis_time,
                r.forecast_periods,
                r.level_id,
                r.level_values,
                r.param_names;
        mi := FALSE;
        ret := 'merge forecast periods';
        EXIT;
      END IF;
 
      IF m2 AND m3 AND m4
      THEN
        RAISE NOTICE 'Merge forecast type';
        EXECUTE 'SELECT array_agg(DISTINCT x) FROM unnest(array_cat($1, $2)) t(x)' USING r.forecast_type_values, forecast_type_values INTO narr;
        RAISE NOTICE '%', narr;
        EXECUTE 'UPDATE data_index SET forecast_type_values = $1 WHERE producer_id=$2 AND geometry_id=$3 AND forecast_type_id = $4 AND forecast_type_values = $5 AND analysis_time = $6 AND forecast_periods = $7 AND level_id = $8 AND level_values = $9 AND param_names = $10'
          USING narr,
                r.producer_id,
                r.geometry_id,
                r.forecast_type_id,
                r.forecast_type_values,
                r.analysis_time,
                r.forecast_periods,
                r.level_id,
                r.level_values,
                r.param_names;
        mi := FALSE;
        ret := 'merge forecast type';
        EXIT;
      END IF;

    END LOOP;

    IF mi = TRUE
    THEN
      RAISE NOTICE 'INSERT';

      EXECUTE inssql USING producer_id, geometry_id, forecast_type_id, forecast_type_values, analysis_time, forecast_periods, level_id, level_values, param_names, table_name;
      ret := 'inserted new row';
    END IF;

    EXCEPTION
      WHEN unique_violation THEN
        RAISE NOTICE 'bugger :-(';
  END;
  RETURN ret;
END;
$function$

