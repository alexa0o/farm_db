 CREATE VIEW pegases AS
    SELECT animal_nm, animal_desc, overlay(cast(birth_dt as varchar(10)) placing 'xxxx' from 1) AS birth_dt, type_nm
    FROM farm_db.animal
    WHERE type_nm = 'Пегас';

CREATE VIEW starks AS
    SELECT first_nm, middle_nm, last_nm, salary_amt, overlay(position_nm placing 'xxxx' from 3) AS position_nm
    FROM farm_db.worker
    WHERE last_nm = 'Старк';

CREATE VIEW finished_tasks AS
    SELECT task_desc, overlay(cast(start_dt as varchar(10)) placing 'xxxx' from 1) AS start_dt, deadline_dttm, end_dttm
    FROM farm_db.task
    WHERE end_dttm IS NOT NULL;

CREATE VIEW gardens_in_sugar_corner AS
    SELECT overlay(garden_desc placing 'xxxxxxxxx' from 5) AS garden_desc, address_txt
    FROM farm_db.garden
    WHERE address_txt = 'Понивиль, Сахарный уголок';

CREATE VIEW swords AS
    SELECT item_desc, item_nm, overlay(cast(item_cnt as varchar(4)) placing 'xxxx' from 1) as item_cnt
    FROM farm_db.item
    WHERE item_nm = 'Меч';

CREATE VIEW suppliers_from_sugar_corner AS
    SELECT supplier_desc, overlay(supplier_nm placing 'xxx' from 1) as supplier_nm, address_txt
    FROM farm_db.supplier
    WHERE address_txt = 'Понивиль, Сахарный уголок';

CREATE VIEW homes AS
    SELECT type_nm, overlay(address_txt placing 'xxxx' from 10) as address_txt
    FROM farm_db.building
    WHERE type_nm = 'Жилой дом';
