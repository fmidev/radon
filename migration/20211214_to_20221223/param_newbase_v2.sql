--
-- PostgreSQL database dump
--

DROP VIEW IF EXISTS param_newbase_v2;

CREATE VIEW public.param_newbase_v2 AS
SELECT f.id AS producer_id,
    f.name AS producer_name,
    p.id AS param_id,
    p.name AS param_name,
    pot.id AS production_type_id,
    ag.id AS aggregation_id,
    ag.name AS aggregation_name,
    n.aggregation_period,
    n.processing_type_id,
    pt.name AS processing_type_name,
    n.processing_type_value,
    n.processing_type_value2,
    n.univ_id,
    n.scale,
    n.base,
    n.last_updater,
    n.last_updated
FROM 
    param_newbase n
JOIN production_type pot ON (pot.id = n.production_type_id)
JOIN processing_type pt ON (pt.id = n.processing_type_id)
JOIN aggregation ag ON (ag.id = n.aggregation_id)    
JOIN fmi_producer f ON (f.id = n.producer_id)
JOIN param p ON (p.id = n.param_id)
LEFT OUTER JOIN param_v2_to_v1 v21 ON (
     n.param_id = v21.v2_param_id AND 
     n.aggregation_id = v21.aggregation_id AND 
     n.aggregation_period = v21.aggregation_period AND 
     n.processing_type_id = v21.processing_type_id AND
     n.processing_type_value = v21.processing_type_value AND
     n.processing_type_value2 = v21.processing_type_value2);


ALTER TABLE public.param_newbase_v2 OWNER TO radon_admin;

--
-- Name: TABLE param_newbase_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_newbase_v2 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

