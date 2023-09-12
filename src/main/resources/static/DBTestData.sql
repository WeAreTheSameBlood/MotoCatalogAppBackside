-- Test data for filling DB

INSERT INTO moto_brands (name) VALUES ('Honda');
INSERT INTO moto_brands (name) VALUES ('Kawasaki');
INSERT INTO moto_brands (name) VALUES ('Yamaha');
INSERT INTO moto_brands (name) VALUES ('Triumph');

-- Honda
INSERT INTO moto_series (name, description, brand_id) VALUES ('Shadow', 'Honda Shadow Series', 1);
INSERT INTO moto_series (name, description, brand_id) VALUES ('CBR', 'Honda CBR Series', 1);

-- Kawasaki
INSERT INTO moto_series (name, description, brand_id) VALUES ('Ninja', 'Kawasaki Ninja Series', 2);
INSERT INTO moto_series (name, description, brand_id) VALUES ('Versys', 'Kawasaki Versys Series', 2);

-- Yamaha
INSERT INTO moto_series (name, description, brand_id) VALUES ('MT', 'Yamaha MT Series', 3);
INSERT INTO moto_series (name, description, brand_id) VALUES ('YZF', 'Yamaha YZF Series', 3);

-- Triumph
INSERT INTO moto_series (name, description, brand_id) VALUES ('Bonneville', 'Triumph Bonneville Series', 4);
INSERT INTO moto_series (name, description, brand_id) VALUES ('Tiger', 'Triumph Tiger Series', 4);

-- Honda Shadow
INSERT INTO moto_models (name, series_id) VALUES ('VT750', 1);
-- Honda CBR
INSERT INTO moto_models (name, series_id) VALUES ('CBR600RR', 2);
INSERT INTO moto_models (name, series_id) VALUES ('CBR1000RR', 2);

-- Kawasaki Ninja
INSERT INTO moto_models (name, series_id) VALUES ('Ninja 250R', 3);
INSERT INTO moto_models (name, series_id) VALUES ('Ninja 650R', 3);
-- Kawasaki Versys
INSERT INTO moto_models (name, series_id) VALUES ('Versys 1000', 4);
INSERT INTO moto_models (name, series_id) VALUES ('Versys-X 300', 4);

-- Yamaha MT
INSERT INTO moto_models (name, series_id) VALUES ('MT-07', 5);
INSERT INTO moto_models (name, series_id) VALUES ('MT-09', 5);
-- Yamaha YZF
INSERT INTO moto_models (name, series_id) VALUES ('YZF-R6', 6);
INSERT INTO moto_models (name, series_id) VALUES ('YZF-R1', 6);

-- Triumph Bonneville
INSERT INTO moto_models (name, series_id) VALUES ('Street Twin', 7);
INSERT INTO moto_models (name, series_id) VALUES ('T100', 7);
-- Triumph Tiger
INSERT INTO moto_models (name, series_id) VALUES ('Tiger 800', 8);
INSERT INTO moto_models (name, series_id) VALUES ('Tiger 1200', 8);

-- Honda Shadow VT750
INSERT INTO moto_generation (num, year_of_start_prod, year_of_finish_prod) VALUES ('1', '2004', '2009');
INSERT INTO moto_generation (num, year_of_start_prod, year_of_finish_prod) VALUES ('2', '2010', '2021');

-- Honda Shadow VT750
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '200kg', '230kg');
-- Honda CBR600RR
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Aluminum', '190kg', '215kg');
-- Honda CBR1000RR
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Aluminum', '210kg', '237kg');

-- Kawasaki Ninja 250R
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '170kg', '192kg');
-- Kawasaki Ninja 650R
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '210kg', '235kg');
-- Kawasaki Versys 1000
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '220kg', '249kg');
-- Kawasaki Versys-X 300
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '175kg', '193kg');

-- Yamaha MT-07
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '180kg', '205kg');
-- Yamaha MT-09
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Aluminum', '190kg', '212kg');
-- Yamaha YZF-R6
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Aluminum', '190kg', '213kg');
-- Yamaha YZF-R1
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Aluminum', '200kg', '225kg');

-- Triumph Street Twin
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '210kg', '235kg');
-- Triumph T100
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '220kg', '248kg');
-- Triumph Tiger 800
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '200kg', '228kg');
-- Triumph Tiger 1200
INSERT INTO chassis (material, weight_dry, weight_total) VALUES ('Steel', '260kg', '288kg');

-- Honda Shadow VT750
INSERT INTO dimensions (full_length, front_dimensions, wheelbase, clearance, height) VALUES (2300, 880, 1650, 130, 1100);
-- Honda CBR600RR
INSERT INTO dimensions (full_length, front_dimensions, wheelbase, clearance, height) VALUES (2100, 690, 1375, 125, 1120);
-- Honda CBR1000RR
INSERT INTO dimensions (full_length, front_dimensions, wheelbase, clearance, height) VALUES (2065, 715, 1405, 130, 1135);

-- Honda Shadow VT750
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (1, 1, 1, 1, 1, 1); -- Gen1
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (1, 1, 1, 2, 1, 1); -- Gen2

-- Honda CBR600RR
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (1, 2, 2, 1, 2, 2); -- Gen1

-- Honda CBR1000RR
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (1, 2, 3, 1, 3, 3); -- Gen1

-- Kawasaki Ninja 250R
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (2, 3, 4, 1, 4, 3); -- Gen1

-- Kawasaki Ninja 650R
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (2, 3, 5, 1, 5, null); -- Gen1

-- Kawasaki Versys 1000
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (2, 4, 6, 1, 6, null); -- Gen1

-- Kawasaki Versys-X 300
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (2, 4, 7, 1, 7, null); -- Gen1

-- Yamaha MT-07
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (3, 5, 8, 1, 8, null); -- Gen1

-- Yamaha MT-09
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (3, 5, 9, 1, 9, null); -- Gen1

-- Yamaha YZF-R6
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (3, 6, 10, 1, 10, null); -- Gen1

-- Yamaha YZF-R1
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (3, 6, 11, 1, 11, null); -- Gen1

-- Triumph Street Twin
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (4, 7, 12, 1, 12, null); -- Gen1

-- Triumph T100
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (4, 7, 13, 1, 13, null); -- Gen1

-- Triumph Tiger 800
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (4, 8, 14, 1, 14, null); -- Gen1

-- Triumph Tiger 1200
INSERT INTO motorcycles (brand_id, series_id, model_id, moto_gen_id, chassis_id, dimensions_id)
VALUES (4, 8, 15, 1, 15, null); -- Gen1


select
    motorcycles.*,
    brands.name as brand_name,
    series.name as series_name, series.description as series_description,
    models.name as model_name,
    generation.num as generation_num, generation.year_of_start_prod, generation.year_of_finish_prod,
    chassis.material, chassis.weight_dry, chassis.weight_total,
    dimensions.full_length, dimensions.front_dimensions, dimensions.wheelbase, dimensions.clearance, dimensions.height
from
    motorcycles
        join
    moto_brands brands ON motorcycles.brand_id = brands.brand_id
        join
    moto_series series ON motorcycles.series_id = series.series_id
        join
    moto_models models ON motorcycles.model_id = models.model_id
        left join
    moto_generation generation ON motorcycles.moto_gen_id = generation.gen_id
        left join
    chassis ON motorcycles.chassis_id = chassis.chassis_id
        left join
    dimensions ON motorcycles.dimensions_id = dimensions.dims_id
WHERE
        motorcycles.moto_id > 0;

select * from motorcycles;
select * from moto_brands;
delete from motorcycles where moto_id > 0;
alter sequence motorcycles_moto_id_seq restart 1;

