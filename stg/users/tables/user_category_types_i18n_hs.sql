CREATE TABLE users.user_category_types_i18n_hs (
    id numeric(38, 0) NOT NULL ENCODE az64,
    locale_id numeric(38, 0) NOT NULL ENCODE az64,
    internal_name character varying(50) NOT NULL ENCODE lzo,
    description character varying(500) ENCODE lzo,
    creation_date timestamp without time zone NOT NULL ENCODE az64,
    a_revision numeric(38, 0) NOT NULL ENCODE az64,
    a_revision_date timestamp without time zone NOT NULL ENCODE az64,
    edw_creation_date timestamp without time zone NOT NULL ENCODE az64,
    edw_update_date timestamp without time zone NOT NULL ENCODE az64
) DISTSTYLE AUTO;