--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.3

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
-- Data for Name: file_format; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.file_format (id, name, description, last_updater, last_updated) FROM stdin;
1	GRIBv1	GRIB version 1	\N	\N
2	GRIBv2	GRIB version 2	\N	\N
3	NetCDFv3	NetCDF version 3	\N	\N
4	NetCDFv4	NetCDF version 4	\N	\N
5	GeoTIFF	Georeferenced TIFF	\N	\N
\.


--
-- Name: file_format_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.file_format_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

