CREATE OR REPLACE FUNCTION public.param_grib1_duplicate_check_f()
 RETURNS trigger
 LANGUAGE plpgsql
 IMMUTABLE STRICT
AS $function$
DECLARE
   _id int;
BEGIN
   SELECT id INTO _id FROM public.param_grib1 WHERE producer_id = NEW.producer_id AND param_id = NEW.param_id AND table_version = NEW.table_version AND timerange_indicator = NEW.timerange_indicator AND level_id IS NULL AND level_value IS NULL;

   IF FOUND THEN
     RAISE EXCEPTION 'Row exists already for given input with id=%', _id;
   END IF;

   RETURN NEW;

 END;
$function$

