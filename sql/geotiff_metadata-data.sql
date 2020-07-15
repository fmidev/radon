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
-- Data for Name: geotiff_metadata; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geotiff_metadata (id, producer_id, attribute, key, mask) FROM stdin;
1	110	param_name	GDAL_METADATA	<Item name="Quantity" unit="mm">([A-Za-z ]*)</Item>
2	110	missing_value	GDAL_METADATA	<Item name="Nodata">([0-9]*)</Item>
3	110	valid_time	GDAL_METADATA	<Item name="Observation time" format="YYYYMMDDhhmm">([0-9]*)</Item>
\.


--
-- Name: geotiff_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.geotiff_metadata_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

