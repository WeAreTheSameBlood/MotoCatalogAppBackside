select * from pg_catalog.pg_tables
where schemaname != 'pg_catalog' and schemaname != 'information_schema';

drop table motorcycles;
drop table dimensions;
drop table chassis;
drop table moto_generation;
drop table moto_models;
drop table moto_series;
drop table moto_brands;
