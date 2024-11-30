CREATE TABLE users.users_ms (
    id character varying(36) ENCODE lzo
    distkey
,
        user_name character varying(256) ENCODE lzo,
        first_name character varying(128) ENCODE lzo,
        last_name character varying(128) ENCODE lzo,
        email character varying(290) ENCODE bytedict,
        is_system_user boolean ENCODE raw,
        web_access_enabled boolean ENCODE raw,
        employee_id character varying(128) ENCODE lzo,
        company_id integer ENCODE az64,
        status character varying(32) ENCODE bytedict,
        user_type character varying(32) ENCODE bytedict,
        roles super,
        login_enabled boolean ENCODE raw,
        multiple_company_user_flag boolean ENCODE raw,
        correlation_id character varying(36) ENCODE lzo,
        kafka_topic character varying(128) ENCODE lzo,
        kafka_partition integer ENCODE az64,
        kafka_offset bigint ENCODE az64,
        kafka_timestamp bigint ENCODE az64,
        kafka_timestamp_type character varying(32) ENCODE lzo,
        kafka_date_time character varying(32) ENCODE lzo,
        kafka_key character varying(130) ENCODE lzo,
        record_creation_ts timestamp without time zone ENCODE az64,
        record_update_ts timestamp without time zone ENCODE az64
) DISTSTYLE KEY
SORTKEY
    (company_id);