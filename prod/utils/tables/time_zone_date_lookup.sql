CREATE TABLE utils.time_zone_date_lookup (
    tz character varying(50) NOT NULL ENCODE lzo,
    tz_utc_offset numeric(38, 0) NOT NULL ENCODE az64,
    tz_dst_bias numeric(38, 0) NOT NULL ENCODE az64,
    adjusted_utc_offset numeric(38, 0) NOT NULL ENCODE az64,
    is_dst numeric(38, 0) NOT NULL ENCODE az64,
    start_date timestamp without time zone NOT NULL ENCODE az64,
    end_date timestamp without time zone NOT NULL ENCODE az64,
    creation_date timestamp without time zone NOT NULL ENCODE az64,
    arevision numeric(38, 0) NOT NULL ENCODE az64,
    arevision_date timestamp without time zone NOT NULL ENCODE az64,
    edw_creation_date timestamp without time zone NOT NULL ENCODE az64,
    edw_update_date timestamp without time zone NOT NULL ENCODE az64
) DISTSTYLE AUTO;