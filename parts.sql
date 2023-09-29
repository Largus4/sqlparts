-- Table: public.parts

-- DROP TABLE IF EXISTS public.parts;

CREATE TABLE IF NOT EXISTS public.parts
(
    id bigint NOT NULL DEFAULT nextval('parts_id_seq'::regclass),
    brand character varying(50) COLLATE pg_catalog."default" NOT NULL,
    model character varying(50) COLLATE pg_catalog."default" NOT NULL,
    part_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    art smallint NOT NULL,
    amount smallint NOT NULL,
    CONSTRAINT parts_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.parts
    OWNER to postgres;