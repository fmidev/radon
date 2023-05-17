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
-- Data for Name: earth_shape; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.earth_shape (id, a, b, name, description, last_updater, last_updated) FROM stdin;
1	6371220	6371220	newbase	Newbase value	postgres	2018-07-30 11:22:22.483987+00
2	6378160	6356775	\N	Earth assumed oblate spheroid with size as determined by IAU in 1965	postgres	2018-07-30 11:24:30.534346+00
3	6367470	6367470	\N	GRIB 1 default value	postgres	2018-07-30 11:24:51.845212+00
4	6378137	6356752.31424783	WGS84	WGS84 ellipsoid	radon_admin	2021-03-29 07:05:40.466521+00
5	6378137	6356752.31414028	GRS80	GRS80 ellipsoid	\N	\N
6	6378388	6356911.946	Hayford	Hayford ellipsoid	\N	\N
\.


--
-- Name: earth_shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.earth_shape_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

