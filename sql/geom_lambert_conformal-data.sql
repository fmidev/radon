--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: geom_lambert_conformal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geom_lambert_conformal (id, name, ni, nj, first_point, di, dj, scanning_mode, orientation, latin1, latin2, south_pole, description, last_updater, last_updated) FROM stdin;
1050	MEPSNOFMI2500	739	949	0101000020E6100000D34D62105839FA3F6891ED7C3F054A40	2500	2500	+x+y	15	63	63	0101000020E610000000000000000000000000000000000000	MEPS Scandinavia area without FMI extension	\N	\N
1078	MEPSSCAN2500	889	949	0101000020E6100000105839B4C876CE3FE9263108ACEC4940	2500	2500	+x+y	15.0	63.0	63.0	0101000020E610000000000000000000000000000000000000	MEPS scandinavia (including Finland) in 2500 meter grid resolution	\N	\N
1087	LAPSLAMBERT2500	869	929	0101000020E6100000D1950854FF20E03F744694F6060F4A40	2500	2500	+x+y	15	63	63	0101000020E610000000000000008056C00000000000002E40	LAPS Analysis over Scandinavia	\N	\N
1092	METANSCAN1000	1796	2321	0101000020E6100000C3B645990DB2FE3FE63FA4DFBE264A40	1000	1000	+x+y	15.0	63.0	63.0	0101000020E610000000000000000000000000000000000000	METNO Scandinavia analysis in 1000 meter grid resolution	\N	\N
1093	MEPS2500D	949	1069	0101000020E6100000986E1283C0CAD13F295C8FC2F5284940	2500	2500	+x+y	15	63	63	0101000020E610000000000000000000000000000000000000	MEPS scandinavia 2500 meter area version D	\N	\N
\.


--
-- PostgreSQL database dump complete
--
