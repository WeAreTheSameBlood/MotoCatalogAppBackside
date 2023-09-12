-- DB: PostgreSQL

-- DESC: DB structure: props, tables, links

-- NOTE: start Docker PostgreSQL in container: just copy-paste in terminal text below
-- docker run -d -it --rm -p 5432:5432 -e POSTGRES_DB=moto_catalog_db -e POSTGRES_PASSWORD=postgres --name moto_catalog_db postgres

create table moto_brands (
    brand_id serial primary key,
    name varchar(40) unique check ( length(name) > 0 ) not null
);

create table moto_series (
    series_id serial primary key ,
    name varchar(80) unique check ( length(name) > 0 ) not null ,
    description text ,
    brand_id int references moto_brands(brand_id)
);

create table moto_models (
    model_id serial primary key ,
    name varchar(80) unique check ( length(name) > 0 ) not null ,
    series_id int references moto_series(series_id)
);

create table moto_generation (
    gen_id serial primary key ,
    num varchar(10) ,
    year_of_start_prod varchar(10) ,
    year_of_finish_prod varchar(10)
);

create table chassis(
    chassis_id serial primary key ,
    material varchar(80) ,
    weight_dry varchar(8) ,
    weight_total varchar(8) ,
    moto_gen int references moto_generation(gen_id)
);

create table dimensions (
    dims_id serial primary key ,
    full_length int check ( full_length > 0 ) ,
    front_dimensions int check ( front_dimensions > 0 ) ,
    wheelbase int check ( wheelbase > 0 ) ,
    clearance int check ( clearance > 0 ) ,
    height int check ( height > 0 )
);

create table motorcycles (
    moto_id serial primary key ,
    brand_id int references moto_brands(brand_id) ,
    series_id int references moto_series(series_id) ,
    model_id int references moto_models(model_id) ,
    moto_gen_id int references moto_generation(gen_id) ,
    chassis_id int references chassis(chassis_id) ,
    dimensions_id int references dimensions(dims_id)
);