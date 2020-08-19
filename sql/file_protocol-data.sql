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
-- Data for Name: file_protocol; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.file_protocol (id, name, description, last_updater, last_updated) FROM stdin;
1	local	Local POSIX filesystem	\N	\N
2	s3	S3 object storage system	\N	\N
3	thredds	THREDDS data server	\N	\N
\.


--
-- Name: file_protocol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.file_protocol_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

