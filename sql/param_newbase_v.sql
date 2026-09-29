--
-- PostgreSQL database dump
--

\restrict yrmKFB2hzX7poWGf9VUhfBXoZAA2MhL2Nel6rYG8sE9HH5dt42CD4oboiB2hhJ9

-- Dumped from database version 15.2
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Name: param_newbase_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.param_newbase_v AS
 SELECT f.id AS producer_id,
    f.name AS producer_name,
    p.id AS param_id,
    p.name AS param_name,
    n.univ_id,
    n.scale,
    n.base,
    n.last_updater,
    n.last_updated
   FROM ((public.param_newbase n
     JOIN public.fmi_producer f ON ((f.id = n.producer_id)))
     JOIN public.param p ON ((p.id = n.param_id)));


ALTER VIEW public.param_newbase_v OWNER TO radon_admin;

--
-- Name: TABLE param_newbase_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_newbase_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict yrmKFB2hzX7poWGf9VUhfBXoZAA2MhL2Nel6rYG8sE9HH5dt42CD4oboiB2hhJ9

