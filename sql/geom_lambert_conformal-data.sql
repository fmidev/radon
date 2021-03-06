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
-- Data for Name: geom_lambert_conformal; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geom_lambert_conformal (id, name, ni, nj, first_point, di, dj, scanning_mode, orientation, latin1, latin2, south_pole, description, last_updater, last_updated) FROM stdin;
1050	MEPSNOFMI2500	739	949	0101000020E6100000D34D62105839FA3F6891ED7C3F054A40	2500	2500	+x+y	15	63	63	0101000020E610000000000000000000000000000000000000	MEPS Scandinavia area without FMI extension	\N	\N
1078	MEPSSCAN2500	889	949	0101000020E6100000105839B4C876CE3FE9263108ACEC4940	2500	2500	+x+y	15.0	63.0	63.0	0101000020E610000000000000000000000000000000000000	MEPS scandinavia (including Finland) in 2500 meter grid resolution	\N	\N
1092	METANSCAN1000	1796	2321	0101000020E6100000C3B645990DB2FE3FE63FA4DFBE264A40	1000	1000	+x+y	15.0	63.0	63.0	0101000020E610000000000000000000000000000000000000	METNO Scandinavia analysis in 1000 meter grid resolution	\N	\N
1095	MEPSSCAN2500G2	889	949	0101000020E61000009E279EB30584CE3F8274B169A5EC4940	2500	2500	+x+y	15	63	63	0101000020E610000000000000000000000000000000000000	MEPS scandinavia in 2500 meter grid resolution	\N	\N
1093	MEPS2500D	949	1069	0101000020E61000005760C8EA56CFD13FA1A3552DE9284940	2500	2500	+x+y	15	63	63	0101000020E610000000000000000000000000000000000000	MEPS scandinavia 2500 meter area version D	\N	\N
1087	LAPSLAMBERT2500	869	929	0101000020E6100000D1950854FF20E03FC0AF9124080F4A40	2500	2500	+x+y	15	63	63	0101000020E61000000000000000002E4000000000008056C0	LAPS Analysis over Scandinavia	\N	\N
\.


--
-- PostgreSQL database dump complete
--

