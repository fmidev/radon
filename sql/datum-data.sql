--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Data for Name: datum; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.datum (id, name, description, last_updater, last_updated) FROM stdin;
1	WGS84	WGS84 datum	radon_admin	2021-05-26 06:06:41.276256+00
2	ETRS89	ETRS89 datum	radon_admin	2021-05-26 06:12:58.930495+00
3	NAD83	NAD83 datum	radon_admin	2021-05-26 06:13:21.300685+00
\.


--
-- Name: datum_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.datum_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

