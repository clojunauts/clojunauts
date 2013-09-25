CREATE TABLE users_user (
    id serial PRIMARY KEY,
    email character varying(75) NOT NULL,
    first_name character varying(32) NOT NULL DEFAULT '',
    last_name character varying(32) NOT NULL DEFAULT '',
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL DEFAULT FALSE,
    last_login timestamp with time zone NOT NULL DEFAULT now(),
    date_joined timestamp with time zone NOT NULL DEFAULT now(),

    photo character varying(100),
    bio text NOT NULL,
    newsletter boolean NOT NULL,
    latitude numeric,
    longitude numeric,

    city_id integer REFERENCES ne_10m_populated_places (gid) ON DELETE SET NULL,
    province_id integer REFERENCES ne_10m_admin_1_states_provinces_shp (gid) ON DELETE SET NULL,
    country_id integer REFERENCES ne_10m_admin_0_countries (gid) ON DELETE SET NULL
);
