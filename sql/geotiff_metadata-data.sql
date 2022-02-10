--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

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
4	110	time_mask	GDAL_METADATA	<Item name="Observation time" format="([A-Za-z ]*)">
8	502	param_name	NETCDF_VARNAME	([a-z_]*)
5	115	param_name		<Item name="Quantity" unit="%">([A-Za-z0-9 ]*)</Item>
9	502	producer_id	NETCDF_VARNAME	([0-9]*)
6	115	missing_value		<Item name="Nodata">([0-9]*)</Item>
7	115	valid_time		<Item name="Forecast start time" format="YYYYmmddHHMM">([0-9]*)</Item>
11	115	time_mask		<Item name="Forecast start time" format="([A-Za-z]*)">
\.


--
-- Name: geotiff_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.geotiff_metadata_id_seq', 12, true);


--
-- PostgreSQL database dump complete
--

