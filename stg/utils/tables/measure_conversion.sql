CREATE TABLE utils.measure_conversion (
    measure_conversion_id numeric(38, 0) NOT NULL ENCODE az64,
    measure_conversion_type character varying(25) NOT NULL ENCODE lzo,
    source_measure_unit character varying(20) NOT NULL ENCODE lzo,
    target_measure_unit character varying(20) NOT NULL ENCODE lzo,
    conversion_value double precision NOT NULL ENCODE raw,
    measure_conversion_description character varying(100) ENCODE lzo,
    edw_creation_date timestamp without time zone NOT NULL ENCODE az64,
    edw_update_date timestamp without time zone NOT NULL ENCODE az64
) DISTSTYLE AUTO;