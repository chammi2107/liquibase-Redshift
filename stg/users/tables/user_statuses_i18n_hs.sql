CREATE TABLE users.user_statuses_i18n_hs (
    id numeric(38, 0) NOT NULL ENCODE az64,
    locale_id numeric(38, 0) NOT NULL ENCODE az64,
    name character varying(20) NOT NULL ENCODE lzo,
    report_label character varying(20) NOT NULL ENCODE lzo,
    description character varying(500) ENCODE lzo,
    creation_date timestamp without time zone NOT NULL ENCODE az64,
    a_revision numeric(38, 0) NOT NULL ENCODE az64,
    a_revision_date timestamp without time zone NOT NULL ENCODE az64,
    edw_creation_date timestamp without time zone NOT NULL ENCODE az64,
    edw_update_date timestamp without time zone NOT NULL ENCODE az64
) DISTSTYLE AUTO;