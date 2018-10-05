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
-- Data for Name: aggregation; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY aggregation (id, name, description, last_updater, last_updated) FROM stdin;
1	INSTANT	No aggregation	\N	\N
2	AVG	Average	\N	\N
3	ACCUMULATION	Accumulation	\N	\N
4	MAX	Maximum	\N	\N
5	MIN	Minimum	\N	\N
6	DIFF	Difference	\N	\N
\.

SELECT pg_catalog.setval('aggregation_id_seq', 6, true);

--
-- PostgreSQL database dump complete
--

