CREATE OR REPLACE FUNCTION public.store_last_updated_f()
 RETURNS trigger
 LANGUAGE plpgsql
 STABLE STRICT SECURITY DEFINER
AS $function$
BEGIN

  NEW.last_updated := current_timestamp;
  NEW.last_updater := session_user;

  RETURN NEW;

END;
$function$

