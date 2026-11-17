-- Undo migrate.sql: remove the geostationary geometry type.
-- Fails (and changes nothing) if data tables reference the geostationary geometries.
-- The datum_text_f bugfix is left in place.

SET search_path TO public;

DROP VIEW public.geom_geostationary_v;
DROP TABLE public.geom_geostationary;

DELETE FROM geom WHERE projection_id = 9;
DELETE FROM projection WHERE id = 9;

CREATE OR REPLACE FUNCTION public.radon_version_f()
 RETURNS TEXT
 LANGUAGE plpgsql
 STABLE STRICT SECURITY DEFINER
AS $function$
BEGIN
  RETURN '20241119';
END;
$function$;

SELECT public.radon_version_f();
