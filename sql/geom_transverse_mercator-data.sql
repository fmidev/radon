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
-- Data for Name: geom_transverse_mercator; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geom_transverse_mercator (id, name, ni, nj, first_point, di, dj, scanning_mode, orientation, latin, scale, description, last_updater, last_updated, earth_shape_id) FROM stdin;
1104	PPNFIN	850	1345	0101000020E6100000EAFEDA8F4E6E2440DD930BBEFE9F5140	1169.293057	1168.870164	+x-y	27	0	0.9996	PPN area over Finland	\N	\N	5
\.


--
-- PostgreSQL database dump complete
--

