--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Data for Name: level; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.level (id, name, description, unit_id, last_updater, last_updated) FROM stdin;
1	GROUND	Ground or water surface	\N	\N	\N
2	PRESSURE	Pressure level	\N	\N	\N
3	HYBRID	Hybrid level	\N	\N	\N
4	ALTITUDE	Altitude	\N	\N	\N
5	TOP	Top of atmosphere	\N	\N	\N
6	HEIGHT	Height above ground in meters	\N	\N	\N
7	MEANSEA	Mean sea level	\N	\N	\N
8	ENTATM	Entire atmosphere	\N	\N	\N
10	DEPTH	Depth below some surface	\N	postgres	2016-02-12 06:55:56.089001+00
12	MAXTHETAE	Level where maximum equivalent potential temperature is found	\N	\N	\N
11	PRESSURE_DELTA	Level at specified pressure difference from ground to level	89	postgres	2016-06-10 17:28:15.507903+00
13	HEIGHT_LAYER	Layer between two metric heights above ground	2	\N	\N
14	DEPTH_LAYER	Layer between two depths below land surface	63	\N	\N
9	GROUND_DEPTH	Layer between two depths below land surface	63	wetodb	2017-08-18 07:01:00.767969+00
15	ISOTHERMAL	Isothermal level, temperature in 1/100 K	\N	\N	\N
16	MAXWIND	Maximum wind level	\N	wetodb	2019-04-24 05:57:57.715881+00
\.


--
-- Name: level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.level_id_seq', 16, true);


--
-- PostgreSQL database dump complete
--

