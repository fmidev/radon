CREATE OR REPLACE FUNCTION public.table_meta_producer_class_id_f()
 RETURNS trigger
 LANGUAGE plpgsql
 IMMUTABLE STRICT
AS $function$
DECLARE
  cid int;
BEGIN
  SELECT class_id INTO cid FROM fmi_producer WHERE id = NEW.producer_id;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Producer id % not found', NEW.producer_id;
  END IF;

  IF TG_ARGV[0] = 'table_meta_grid' THEN
    IF cid <> 1 THEN
          RAISE EXCEPTION 'Producer % has class_id % (class_id 1 required)', NEW.producer_id, cid;
    END IF;
  ELSIF TG_ARGV[0] = 'table_meta_previ' THEN
    IF cid <> 3 THEN
          RAISE EXCEPTION 'Producer % has class_id % (class_id 3 required)', NEW.producer_id, cid;
    END IF;
  ELSIF TG_ARGV[0] = 'table_meta_analysis' THEN
    IF cid <> 4 THEN
          RAISE EXCEPTION 'Producer % has class_id % (class_id 4 required)', NEW.producer_id, cid;
    END IF;
  ELSE
    RAISE EXCEPTION 'Invalid table_name as trigger argument: %', TG_ARGV[0];
  END IF;

  RETURN NEW;

END;
$function$

