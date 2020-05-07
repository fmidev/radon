--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.2

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
-- Data for Name: param_unit; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param_unit (id, name, description, last_updater, last_updated) FROM stdin;
1	Kg	Kilograms	\N	\N
2	m	Meters	\N	\N
3	K	Kelvins	\N	\N
4	s	Seconds	\N	\N
5	Deg	Degrees	\N	\N
6	%	PerCents	\N	\N
7	kg m-1 s-2	pascal 	\N	\N
8	gmp	metre geopotentiel	\N	\N
9	kg m s-3	 watt 	\N	\N
10	kg m2 s-2	joule	\N	\N
11	s-1	herz or rounds per second	\N	\N
12	W m-2	Watts per square meter	\N	\N
13	m2 s-2	 	\N	\N
14	K m-1	 	\N	\N
15	m s-1	meters per second	\N	\N
16	m2 s-1	   	\N	\N
17	kg kg-1	Proportion, kg per kg	\N	\N
18	kg m-2	kilograms per square meter in an hour	\N	\N
19	kg m-2 s-1	 	\N	\N
20	kg s-2	J m-2 	\N	\N
21	hPa	hectoPascal	\N	\N
22	kPa	 	\N	\N
23	hm	 	\N	\N
25	unitpolluant m-2	 	\N	\N
26	unitpolluant m-3	 	\N	\N
28	0_1	0 ou 1	\N	\N
29	fl	niveau de vol	\N	\N
30	No Unit	Not Applicable	\N	\N
31	kt	Knots	\N	\N
40	V	Volt	\N	\N
50	hPa 10-1	Tenths of HectoPascals	\N	\N
51	C 10-1	Tenths of Celsius	\N	\N
52	m s-1 10-1	Tenths of m/s	\N	\N
53	mm s-1	Millimeters per second	\N	\N
54	m 10-4	Tenths of Millimeter	\N	\N
56	cb s-1	Centibars in second	\N	\N
57	s-1 10-5	Hz/10000	\N	\N
58	C	Celsius	\N	\N
59	h	Hours	\N	\N
60	mm	Millimeters	\N	\N
61	hPa s-1	HectoPascals in Second	\N	\N
62	0to1	Proportion, from 0 to 1	\N	\N
63	cm	Centimeters	\N	\N
64	Code	Code - usually number or alpha	\N	\N
65	ug m-3	Micrograms in cubic meter	\N	\N
66	mg m-3	Milligrams in cubic meter	\N	\N
67	kA	Kiloamperes	\N	\N
68	km	Kilometers	\N	\N
69	JustAnumber	A number without any unit	\N	\N
70	dBZ	dBZ	\N	\N
71	kJ m-2	Kilojoule per m2	\N	\N
72	DU	Dobson unit	\N	\N
73	MED	Skin sensibility unit	\N	\N
74	MEDH	Skin sensibility unit per hour	\N	\N
75	HM	Combined hour and minute	\N	\N
76	min	Minutes	\N	\N
77	J kg-1	Joule per kg	\N	\N
78	N m-2 s	Should be the unit of momentum flux	\N	\N
79	K kg m-2	Kelvin kilograms per m2	\N	\N
80	day	Days	\N	\N
81	ms	Milliseconds	\N	\N
82	ft	Feet	\N	\N
83	J m-2	Joule per square meter	\N	\N
85	g/l	Grams per litre	\N	\N
86	psu	Practical salinity unit (parts per thousand)	\N	\N
87	kg m-3	Kilograms per cubic metre	\N	\N
88	s-2	inverse square seconds	\N	\N
90	-1 to 1	-1 to 1	\N	\N
89	Pa	Pascal	\N	\N
27	Pa s-1	Pa/s	wetodb	2018-11-12 05:44:33
32	kg m-2 h-1	kg / m2 / hour = mm / h	wetodb	2018-11-12 05:45:13
84	g m-2	Grams per square meter	wetodb	2018-11-12 05:46:14
91	m3 m-3	Cubic meters per cubic meters	wetodb	2018-11-12 05:46:45
92	t m-2	Tonnes per square meter	\N	\N
93	m2 m-2	square meters per square meters	\N	\N
\.


--
-- Name: param_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_unit_id_seq', 92, true);


--
-- PostgreSQL database dump complete
--

