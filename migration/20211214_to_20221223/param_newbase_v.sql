--
-- PostgreSQL database dump
--

DROP VIEW IF EXISTS public.param_newbase_v;

CREATE VIEW public.param_newbase_v AS
SELECT f.id AS producer_id,
    f.name AS producer_name,
    p.id AS param_id,
    check_for_unknown_param(v21.v1_param_name, p.name, n.aggregation_id, n.processing_type_id) AS param_name,
    n.univ_id,
    n.scale,
    n.base,
    n.last_updater,
    n.last_updated
FROM 
    param_newbase n
JOIN fmi_producer f ON (f.id = n.producer_id)
JOIN param p ON (p.id = n.param_id)
LEFT OUTER JOIN param_v2_to_v1 v21 ON (
     n.param_id = v21.v2_param_id AND 
     n.aggregation_id = v21.aggregation_id AND 
     n.aggregation_period = v21.aggregation_period AND 
     n.processing_type_id = v21.processing_type_id AND
     n.processing_type_value = v21.processing_type_value AND
     n.processing_type_value2 = v21.processing_type_value2);


ALTER TABLE public.param_newbase_v OWNER TO radon_admin;

--
-- Name: TABLE param_newbase_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_newbase_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

