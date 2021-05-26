CREATE OR REPLACE FUNCTION public.datum_text_f(sph_name VARCHAR(50), a NUMERIC, b NUMERIC, dat_name VARCHAR(50))
 RETURNS TEXT
 LANGUAGE plpgsql
 IMMUTABLE SECURITY DEFINER
AS $function$
BEGIN
  IF dat_name IS NOT NULL THEN
    RETURN '+datum=' || dat_name;

  ELSIF sph_name IN ('WGS84', 'GRS80') THEN
    RETURN '+ellps=' || sph_name;

  ELSIF a = b THEN
    RETURN '+R=' || a;

  ELSIF a IS NOT NULL AND b IS NOT NULL THEN
    RETURN '+a=' || a || '+b=' || b;
  END IF;

  RETURN '';
END;
$function$


