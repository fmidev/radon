CREATE OR REPLACE FUNCTION public.param_grib2_duplicate_check_f()
 RETURNS trigger
 LANGUAGE plpgsql
 IMMUTABLE STRICT
AS $function$
DECLARE
   _id int;
BEGIN
  IF NEW.level_id IS NULL AND NEW.level_value IS NULL THEN
    SELECT id INTO _id FROM param_grib2 WHERE producer_id = NEW.producer_id AND discipline = NEW.discipline AND category = NEW.category AND number = NEW.number AND type_of_statistical_processing = NEW.type_of_statistical_processing;

    IF FOUND THEN
      RAISE WARNING 'Row exists already for given input with id=%', _id;
    END IF;
  END IF;

  RETURN NEW;
END;
$function$

