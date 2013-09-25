CREATE TABLE ne_10m_admin_0_countries (
    gid integer NOT NULL,
    scalerank smallint,
    featurecla character varying(30),
    labelrank double precision,
    sovereignt character varying(254),
    sov_a3 character varying(254),
    adm0_dif double precision,
    level double precision,
    type character varying(254),
    admin character varying(254),
    adm0_a3 character varying(254),
    geou_dif double precision,
    geounit character varying(254),
    gu_a3 character varying(254),
    su_dif double precision,
    subunit character varying(254),
    su_a3 character varying(254),
    brk_diff double precision,
    name character varying(254),
    name_long character varying(254),
    brk_a3 character varying(254),
    brk_name character varying(254),
    brk_group character varying(254),
    abbrev character varying(254),
    postal character varying(254),
    formal_en character varying(254),
    formal_fr character varying(254),
    note_adm0 character varying(254),
    note_brk character varying(254),
    name_sort character varying(254),
    name_alt character varying(254),
    mapcolor7 double precision,
    mapcolor8 double precision,
    mapcolor9 double precision,
    mapcolor13 double precision,
    pop_est double precision,
    gdp_md_est double precision,
    pop_year double precision,
    lastcensus double precision,
    gdp_year double precision,
    economy character varying(254),
    income_grp character varying(254),
    wikipedia double precision,
    fips_10 character varying(254),
    iso_a2 character varying(254),
    iso_a3 character varying(254),
    iso_n3 character varying(254),
    un_a3 character varying(254),
    wb_a2 character varying(254),
    wb_a3 character varying(254),
    woe_id double precision,
    adm0_a3_is character varying(254),
    adm0_a3_us character varying(254),
    adm0_a3_un double precision,
    adm0_a3_wb double precision,
    continent character varying(254),
    region_un character varying(254),
    subregion character varying(254),
    region_wb character varying(254),
    name_len double precision,
    long_len double precision,
    abbrev_len double precision,
    tiny double precision,
    homepart double precision,
    geom geometry(MultiPolygon,4326)
);
--;;
CREATE SEQUENCE ne_10m_admin_0_countries_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
--;;
ALTER SEQUENCE ne_10m_admin_0_countries_gid_seq OWNED BY ne_10m_admin_0_countries.gid;
--;;
CREATE TABLE ne_10m_admin_1_states_provinces_shp (
    gid integer NOT NULL,
    adm1_code character varying(10),
    shape_leng numeric,
    shape_area numeric,
    diss_me integer,
    adm1_code_ character varying(10),
    iso_3166_2 character varying(10),
    wikipedia character varying(254),
    sr_sov_a3 character varying(3),
    sr_adm0_a3 character varying(3),
    iso_a2 character varying(2),
    adm0_sr smallint,
    admin0_lab smallint,
    name character varying(100),
    name_alt character varying(200),
    name_local character varying(200),
    type character varying(100),
    type_en character varying(100),
    code_local character varying(50),
    code_hasc character varying(10),
    note character varying(254),
    hasc_maybe character varying(50),
    region character varying(100),
    region_cod character varying(50),
    region_big character varying(200),
    big_code character varying(50),
    provnum_ne integer,
    gadm_level smallint,
    check_me smallint,
    scalerank smallint,
    datarank smallint,
    abbrev character varying(10),
    postal character varying(10),
    area_sqkm double precision,
    sameascity smallint,
    labelrank smallint,
    featurecla character varying(50),
    admin character varying(200),
    name_len integer,
    mapcolor9 smallint,
    mapcolor13 smallint,
    geom geometry(MultiPolygon,4326)
);
--;;
CREATE SEQUENCE ne_10m_admin_1_states_provinces_shp_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
--;;
ALTER SEQUENCE ne_10m_admin_1_states_provinces_shp_gid_seq OWNED BY ne_10m_admin_1_states_provinces_shp.gid;
--;;
CREATE TABLE ne_10m_populated_places (
    gid integer NOT NULL,
    scalerank smallint,
    natscale smallint,
    labelrank smallint,
    featurecla character varying(50),
    name character varying(100),
    namepar character varying(254),
    namealt character varying(254),
    diffascii smallint,
    nameascii character varying(100),
    adm0cap numeric,
    capalt numeric,
    capin character varying(15),
    worldcity numeric,
    megacity smallint,
    sov0name character varying(100),
    sov_a3 character varying(3),
    adm0name character varying(50),
    adm0_a3 character varying(3),
    adm1name character varying(50),
    iso_a2 character varying(5),
    note character varying(254),
    latitude numeric,
    longitude numeric,
    changed numeric,
    namediff smallint,
    diffnote character varying(254),
    pop_max integer,
    pop_min integer,
    pop_other integer,
    rank_max integer,
    rank_min integer,
    geonameid numeric,
    meganame character varying(50),
    ls_name character varying(41),
    ls_match smallint,
    checkme smallint,
    max_pop10 numeric,
    max_pop20 numeric,
    max_pop50 numeric,
    max_pop300 numeric,
    max_pop310 numeric,
    max_natsca numeric,
    min_areakm numeric,
    max_areakm numeric,
    min_areami numeric,
    max_areami numeric,
    min_perkm numeric,
    max_perkm numeric,
    min_permi numeric,
    max_permi numeric,
    min_bbxmin numeric,
    max_bbxmin numeric,
    min_bbxmax numeric,
    max_bbxmax numeric,
    min_bbymin numeric,
    max_bbymin numeric,
    min_bbymax numeric,
    max_bbymax numeric,
    mean_bbxc numeric,
    mean_bbyc numeric,
    compare smallint,
    gn_ascii character varying(254),
    feature_cl character varying(254),
    feature_co character varying(254),
    admin1_cod numeric,
    gn_pop numeric,
    elevation numeric,
    gtopo30 numeric,
    timezone character varying(254),
    geonamesno character varying(100),
    un_fid integer,
    un_adm0 character varying(254),
    un_lat numeric,
    un_long numeric,
    pop1950 numeric,
    pop1955 numeric,
    pop1960 numeric,
    pop1965 numeric,
    pop1970 numeric,
    pop1975 numeric,
    pop1980 numeric,
    pop1985 numeric,
    pop1990 numeric,
    pop1995 numeric,
    pop2000 numeric,
    pop2005 numeric,
    pop2010 numeric,
    pop2015 numeric,
    pop2020 numeric,
    pop2025 numeric,
    pop2050 numeric,
    cityalt character varying(50),
    geom geometry(Point,4326)
);
--;;
CREATE SEQUENCE ne_10m_populated_places_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
--;;
ALTER SEQUENCE ne_10m_populated_places_gid_seq OWNED BY ne_10m_populated_places.gid;
--;;
ALTER TABLE ONLY ne_10m_admin_0_countries ALTER COLUMN gid SET DEFAULT nextval('ne_10m_admin_0_countries_gid_seq'::regclass);
--;;
ALTER TABLE ONLY ne_10m_admin_1_states_provinces_shp ALTER COLUMN gid SET DEFAULT nextval('ne_10m_admin_1_states_provinces_shp_gid_seq'::regclass);
--;;
ALTER TABLE ONLY ne_10m_populated_places ALTER COLUMN gid SET DEFAULT nextval('ne_10m_populated_places_gid_seq'::regclass);
--;;
ALTER TABLE ONLY ne_10m_admin_0_countries
    ADD CONSTRAINT ne_10m_admin_0_countries_pkey PRIMARY KEY (gid);
--;;
ALTER TABLE ONLY ne_10m_admin_1_states_provinces_shp
    ADD CONSTRAINT ne_10m_admin_1_states_provinces_shp_pkey PRIMARY KEY (gid);
--;;
ALTER TABLE ONLY ne_10m_populated_places
    ADD CONSTRAINT ne_10m_populated_places_pkey PRIMARY KEY (gid);
--;;
CREATE INDEX ne_10m_admin_0_countries_geom_gist ON ne_10m_admin_0_countries USING gist (geom);
--;;
CREATE INDEX ne_10m_admin_1_states_provinces_shp_geom_gist ON ne_10m_admin_1_states_provinces_shp USING gist (geom);
--;;
CREATE INDEX ne_10m_populated_places_geom_gist ON ne_10m_populated_places USING gist (geom);
