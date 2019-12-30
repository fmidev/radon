--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 12.1

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
-- Data for Name: geom_reduced_gaussian; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geom_reduced_gaussian (id, name, nj, first_point, last_point, scanning_mode, n, points_along_parallels, description, last_updater, last_updated) FROM stdin;
1094	O80	80	0101000020E610000000000000000000000000000000805640	0101000020E6100000000000000080764000000000008056C0	+x-y	80	{20,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100,104,108,112,116,120,124,128,132,136,140,144,148,152,156,160,164,168,172,176,180,184,188,192,196,200,204,208,212,216,220,224,228,232,236,240,244,248,252,256,260,264,268,272,276,280,284,288,292,296,300,304,308,312,316,320,324,328,332,336,336,332,328,324,320,316,312,308,304,300,296,292,288,284,280,276,272,268,264,260,256,252,248,244,240,236,232,228,224,220,216,212,208,204,200,196,192,188,184,180,176,172,168,164,160,156,152,148,144,140,136,132,128,124,120,116,112,108,104,100,96,92,88,84,80,76,72,68,64,60,56,52,48,44,40,36,32,28,24,20}	Octahedral test grid with 80 latitude lines between pole and equator	\N	\N
\.


--
-- PostgreSQL database dump complete
--

