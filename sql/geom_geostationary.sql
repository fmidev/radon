--
-- PostgreSQL database dump
--

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: geom_geostationary; Type: TABLE; Schema: public; Owner: radon_admin
--
-- Geostationary satellite "space view" projection.
-- Integer columns store GRIB-native values as-is so that grids compare exactly
-- and can be written back to GRIB bit-identically. Full disk only: sub-satellite
-- latitude, Xo, Yo and orientationOfTheGrid are always 0 and not stored.
--

CREATE TABLE public.geom_geostationary (
    id integer NOT NULL,
    name text NOT NULL,
    ni integer NOT NULL,
    nj integer NOT NULL,
    nr integer NOT NULL,
    dx integer NOT NULL,
    dy integer NOT NULL,
    xp integer NOT NULL,
    yp integer NOT NULL,
    sub_satellite_longitude integer NOT NULL,
    sweep_axis text NOT NULL,
    scanning_mode text NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    earth_shape_id integer NOT NULL,
    CONSTRAINT geom_geostationary_sweep_axis_chk CHECK ((sweep_axis = ANY (ARRAY['x'::text, 'y'::text]))),
    CONSTRAINT geom_geostationary_scanning_mode_chk CHECK ((scanning_mode = '+x-y'::text)),
    CONSTRAINT geom_geostationary_dims_chk CHECK (((ni > 0) AND (nj > 0) AND (dx > 0) AND (dy > 0))),
    CONSTRAINT geom_geostationary_nr_chk CHECK ((nr > 1000000)),
    CONSTRAINT geom_geostationary_sub_satellite_longitude_chk CHECK (((sub_satellite_longitude >= '-180000000'::integer) AND (sub_satellite_longitude <= 360000000)))
);


ALTER TABLE public.geom_geostationary OWNER TO radon_admin;

COMMENT ON COLUMN public.geom_geostationary.ni IS 'GRIB2 Nx';
COMMENT ON COLUMN public.geom_geostationary.nj IS 'GRIB2 Ny';
COMMENT ON COLUMN public.geom_geostationary.nr IS 'GRIB2 Nr: satellite distance from earth centre in equatorial radii x 10^6';
COMMENT ON COLUMN public.geom_geostationary.dx IS 'GRIB2 dx: apparent earth diameter in grid lengths, x direction';
COMMENT ON COLUMN public.geom_geostationary.dy IS 'GRIB2 dy: apparent earth diameter in grid lengths, y direction';
COMMENT ON COLUMN public.geom_geostationary.xp IS 'GRIB2 Xp: x coordinate of sub-satellite point in 10^-3 grid lengths';
COMMENT ON COLUMN public.geom_geostationary.yp IS 'GRIB2 Yp: y coordinate of sub-satellite point in 10^-3 grid lengths';
COMMENT ON COLUMN public.geom_geostationary.sub_satellite_longitude IS 'GRIB2 longitudeOfSubSatellitePoint in 10^-6 degrees';
COMMENT ON COLUMN public.geom_geostationary.sweep_axis IS 'Not in GRIB. EUMETSAT (MSG, MTG) = y, GOES = x';

--
-- Name: geom_geostationary geom_geostationary_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_geostationary
    ADD CONSTRAINT geom_geostationary_name_uniq UNIQUE (name);


--
-- Name: geom_geostationary geom_geostationary_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_geostationary
    ADD CONSTRAINT geom_geostationary_pkey PRIMARY KEY (id);


--
-- Name: geom_geostationary geom_geostationary_grid_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--
-- Geometry-from-grid lookup key: first point has no lat/lon, so match exactly
-- on grid size, sub-satellite longitude and apparent earth diameter. nr, xp, yp
-- and earth shape are stored but not part of the key, so that a lookup with
-- this key returns at most one row.
--

ALTER TABLE ONLY public.geom_geostationary
    ADD CONSTRAINT geom_geostationary_grid_uniq UNIQUE (ni, nj, sub_satellite_longitude, dx, dy);


--
-- Name: geom_geostationary audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.geom_geostationary FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: geom_geostationary geom_geostationary_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER geom_geostationary_store_last_updated_trg BEFORE UPDATE ON public.geom_geostationary FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: geom_geostationary geom_geostationary_earth_shape_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_geostationary
    ADD CONSTRAINT geom_geostationary_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);


--
-- Name: geom_geostationary geom_geostationary_geom_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_geostationary
    ADD CONSTRAINT geom_geostationary_geom_fkey_02 FOREIGN KEY (id) REFERENCES public.geom(id);


--
-- Name: geom_geostationary geom_geostationary_geom_fkey_03; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_geostationary
    ADD CONSTRAINT geom_geostationary_geom_fkey_03 FOREIGN KEY (name) REFERENCES public.geom(name);


--
-- Name: TABLE geom_geostationary; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_geostationary TO radon_ro;


--
-- PostgreSQL database dump complete
--
