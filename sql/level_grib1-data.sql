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
-- Data for Name: level_grib1; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.level_grib1 (producer_id, level_id, grib_level_id, last_updater, last_updated) FROM stdin;
250	1	1	\N	\N
135	9	112	radon_admin	2023-10-27 06:01:17.050525+00
242	1	1	\N	\N
250	6	105	\N	\N
137	9	112	radon_admin	2023-10-27 06:01:17.050525+00
4	7	102	\N	\N
250	2	100	\N	\N
101	9	112	\N	\N
4	6	105	\N	\N
149	6	105	\N	\N
4	7	103	\N	\N
131	9	112	\N	\N
4	8	200	\N	\N
148	6	105	\N	\N
4	15	20	\N	\N
240	13	106	\N	\N
107	1	1	\N	\N
240	12	246	\N	\N
53	1	1	\N	\N
118	1	1	\N	\N
109	1	1	\N	\N
107	5	8	\N	\N
4	3	109	\N	\N
53	5	8	\N	\N
118	5	8	\N	\N
109	5	8	\N	\N
107	6	105	\N	\N
241	1	1	\N	\N
53	6	105	\N	\N
118	6	105	\N	\N
109	6	105	\N	\N
107	4	103	\N	\N
53	4	103	\N	\N
118	4	103	\N	\N
109	4	103	\N	\N
107	7	102	\N	\N
53	7	102	\N	\N
118	7	102	\N	\N
109	7	102	\N	\N
107	2	100	\N	\N
135	1	1	\N	\N
53	2	100	\N	\N
118	2	100	\N	\N
109	2	100	\N	\N
131	2	100	\N	\N
131	7	102	\N	\N
131	3	109	\N	\N
131	6	105	\N	\N
131	1	1	\N	\N
160	6	105	\N	\N
160	4	103	\N	\N
132	7	102	\N	\N
133	7	102	\N	\N
132	6	105	\N	\N
133	6	105	\N	\N
210	3	109	\N	\N
240	3	109	\N	\N
4	2	100	\N	\N
210	1	1	\N	\N
240	1	1	\N	\N
210	6	105	\N	\N
240	6	105	\N	\N
4	5	8	\N	\N
210	7	102	\N	\N
240	7	102	\N	\N
113	6	105	\N	\N
210	2	100	\N	\N
240	2	100	\N	\N
122	6	105	\N	\N
210	5	8	\N	\N
240	5	8	\N	\N
260	12	246	\N	\N
210	4	103	\N	\N
240	4	103	\N	\N
52	6	105	\N	\N
210	6	163	\N	\N
240	6	163	\N	\N
199	8	200	\N	\N
2026	2	100	\N	\N
301	6	105	\N	\N
105	6	105	\N	\N
2161	2	100	\N	\N
10	7	103	\N	\N
7	2	100	\N	\N
500	1	1	\N	\N
10	6	105	\N	\N
7	3	109	\N	\N
2156	2	100	\N	\N
2158	2	100	\N	\N
7	5	8	\N	\N
7	6	105	\N	\N
112	2	100	\N	\N
7	7	102	\N	\N
7	7	103	\N	\N
7	8	200	\N	\N
7	15	20	\N	\N
189	6	105	\N	\N
1016	2	100	\N	\N
2026	3	109	\N	\N
2161	3	109	\N	\N
2156	3	109	\N	\N
2158	3	109	\N	\N
260	15	20	\N	\N
112	3	109	\N	\N
1016	3	109	\N	\N
2026	1	1	\N	\N
2161	1	1	\N	\N
2156	1	1	\N	\N
2158	1	1	\N	\N
112	1	1	\N	\N
1016	1	1	\N	\N
2026	6	105	\N	\N
2161	6	105	\N	\N
2156	6	105	\N	\N
2158	6	105	\N	\N
112	6	105	\N	\N
1016	6	105	\N	\N
2026	7	102	\N	\N
2161	7	102	\N	\N
2156	7	102	\N	\N
2158	7	102	\N	\N
112	7	102	\N	\N
1016	7	102	\N	\N
2026	4	103	\N	\N
2161	4	103	\N	\N
2156	4	103	\N	\N
2158	4	103	\N	\N
112	4	103	\N	\N
1016	4	103	\N	\N
2026	5	8	\N	\N
199	15	20	postgres	2017-01-10 19:51:17.063908+00
120	6	105	postgres	2016-06-16 04:34:16.304016+00
2161	5	8	\N	\N
2156	5	8	\N	\N
2158	5	8	\N	\N
112	5	8	\N	\N
1016	5	8	\N	\N
105	1	1	\N	\N
152	1	1	\N	\N
102	6	105	\N	\N
106	6	105	\N	\N
101	6	105	\N	\N
102	7	102	\N	\N
106	7	102	\N	\N
101	7	102	\N	\N
119	6	105	\N	\N
242	6	105	\N	\N
199	5	8	\N	\N
199	6	105	\N	\N
199	3	109	\N	\N
199	4	103	\N	\N
199	2	100	\N	\N
134	1	1	wetodb	2016-05-19 11:35:26.54645+00
134	9	112	\N	\N
\.


--
-- PostgreSQL database dump complete
--

