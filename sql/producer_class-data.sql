--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: producer_class; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY producer_class (id, name, description, last_updater, last_updated) FROM stdin;
1	GRID	Data in gridded format	postgres	2016-05-26 08:58:31.750028+00
3	POINT	Data in point format	postgres	2016-05-26 08:58:42.483457+00
\.


--
-- Name: producer_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wetodb
--

SELECT pg_catalog.setval('producer_class_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

