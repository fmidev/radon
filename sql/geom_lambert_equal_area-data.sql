--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

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
-- Data for Name: geom_lambert_equal_area; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geom_lambert_equal_area (id, name, ni, nj, first_point, di, dj, scanning_mode, orientation, latin, description, last_updater, last_updated, earth_shape_id) FROM stdin;
1103	OPERAEUROPE	1900	2200	0101000020E6100000D6E253008C9F43C00D71AC8BDBC85040	2000.1432	2000.1356	+x-y	10	52	Europe area for OPERA radar network	\N	\N	\N
1111	DIWEUROPE	4102	2721	0101000020E61000001100B950FBF452C08B04094092F84840	2019.755468	2019.755468	+x-y	10	52	Europe area for DIW	\N	\N	5
\.


--
-- PostgreSQL database dump complete
--

