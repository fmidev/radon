CREATE OR REPLACE FUNCTION public.param_grib2_duplicate_check_f()
 RETURNS trigger
 LANGUAGE plpgsql
 IMMUTABLE STRICT
AS $function$
DECLARE
   _id int;
BEGIN
  IF NEW.level_id IS NULL AND NEW.level_value IS NULL THEN
    SELECT id INTO _id FROM public.param_grib2 WHERE producer_id = NEW.producer_id AND discipline = NEW.discipline AND category = NEW.category AND number = NEW.number ;

    IF FOUND THEN
      RAISE WARNING 'Row exists already for given input with id=%', _id;
    END IF;
  END IF;

  RETURN NEW;
END;
$function$

