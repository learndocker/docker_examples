CREATE TABLE IF NOT EXISTS requests (
  id serial primary key,
  requested_at character varying,
  ip character varying,
  host character varying,
  path character varying
);
