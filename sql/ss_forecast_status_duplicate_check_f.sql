CREATE OR REPLACE FUNCTION public.ss_forecast_status_duplicate_check_f()
 RETURNS trigger
 LANGUAGE plpgsql
 IMMUTABLE STRICT
AS $function$
DECLARE
   _status varchar(50);
   _status_time timestamptz;
BEGIN
   IF NEW.geometry_id IS NOT NULL THEN
     -- let unique constraint deal with this
     RETURN NEW;
   END IF;

   SELECT status,status_time INTO _status,_status_time FROM public.ss_forecast_status WHERE producer_id = NEW.producer_id AND analysis_time = NEW.analysis_time AND status = NEW.status AND version = NEW.version AND geometry_id IS NULL;

   IF FOUND THEN
     RAISE EXCEPTION 'Status % with time % exists already', _status, _status_time;
   END IF;

   RETURN NEW;

 END;
$function$

