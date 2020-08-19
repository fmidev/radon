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
-- Data for Name: producer_class; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.producer_class (id, name, description, last_updater, last_updated) FROM stdin;
1	GRID	Data in gridded format	postgres	2016-05-26 08:58:31.750028+00
3	POINT	Data in point format	postgres	2016-05-26 08:58:42.483457+00
\.


--
-- Name: producer_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.producer_class_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

