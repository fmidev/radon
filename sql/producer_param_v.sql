--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: producer_param_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.producer_param_v AS
 SELECT po.id AS producer_id,
    po.name AS producer_name,
    pa.id AS param_id,
    pa.name AS param_name,
    pa.version AS param_version,
    max(
        CASE
            WHEN (ss.grib1_table_version IS NOT NULL) THEN ss.grib1_table_version
            ELSE NULL::integer
        END) AS grib1_table_version,
    max(
        CASE
            WHEN (ss.grib1_number IS NOT NULL) THEN ss.grib1_number
            ELSE NULL::integer
        END) AS grib1_number,
    max(
        CASE
            WHEN (ss.grib2_discipline IS NOT NULL) THEN ss.grib2_discipline
            ELSE NULL::integer
        END) AS grib2_discipline,
    max(
        CASE
            WHEN (ss.grib2_category IS NOT NULL) THEN ss.grib2_category
            ELSE NULL::integer
        END) AS grib2_category,
    max(
        CASE
            WHEN (ss.grib2_number IS NOT NULL) THEN ss.grib2_number
            ELSE NULL::integer
        END) AS grib2_number,
    max(
        CASE
            WHEN (ss.newbase_id IS NOT NULL) THEN ss.newbase_id
            ELSE NULL::integer
        END) AS newbase_id,
    max(
        CASE
            WHEN (ss.newbase_scale IS NOT NULL) THEN ss.newbase_scale
            ELSE NULL::numeric
        END) AS newbase_scale,
    max(
        CASE
            WHEN (ss.newbase_base IS NOT NULL) THEN ss.newbase_base
            ELSE NULL::numeric
        END) AS newbase_base
   FROM ((( SELECT pg1.producer_id,
            pg1.param_id,
            pg1.table_version AS grib1_table_version,
            pg1.number AS grib1_number,
            NULL::integer AS grib2_discipline,
            NULL::integer AS grib2_category,
            NULL::integer AS grib2_number,
            NULL::integer AS newbase_id,
            NULL::integer AS newbase_scale,
            NULL::integer AS newbase_base
           FROM public.param_grib1 pg1
        UNION ALL
         SELECT pg2.producer_id,
            pg2.param_id,
            NULL::integer AS grib1_table_version,
            NULL::integer AS grib1_number,
            pg2.discipline AS grib2_discipline,
            pg2.category AS grib2_category,
            pg2.number AS grib2_number,
            NULL::integer AS int4,
            NULL::integer AS int4,
            NULL::integer AS int4
           FROM public.param_grib2 pg2
        UNION ALL
         SELECT pn.producer_id,
            pn.param_id,
            NULL::integer AS int4,
            NULL::integer AS int4,
            NULL::integer AS int4,
            NULL::integer AS int4,
            NULL::integer AS int4,
            pn.univ_id AS newbase_id,
            pn.scale AS newbase_scale,
            pn.base AS newbase_base
           FROM public.param_newbase pn) ss
     JOIN public.param pa ON ((ss.param_id = pa.id)))
     JOIN public.fmi_producer po ON ((ss.producer_id = po.id)))
  GROUP BY po.id, po.name, pa.id, pa.name, pa.version;


ALTER TABLE public.producer_param_v OWNER TO radon_admin;

--
-- Name: TABLE producer_param_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.producer_param_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

