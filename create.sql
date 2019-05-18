DROP SCHEMA IF EXISTS farm_db CASCADE;
CREATE SCHEMA farm_db;

DROP TABLE IF EXISTS farm_db.animal;
CREATE TABLE farm_db.animal (
 animal_id        SERIAL PRIMARY KEY,
 animal_nm        VARCHAR(30) NOT NULL,
 animal_desc      VARCHAR(30),
 birth_dt  DATE,
 type_nm   VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS farm_db.worker;
CREATE TABLE farm_db.worker (
 worker_id       SERIAL PRIMARY KEY,
 first_nm        VARCHAR(30) NOT NULL,
 middle_nm       VARCHAR(30),
 last_nm         VARCHAR(30) NOT NULL,
 salary_amt      NUMERIC(6, 2) NOT NULL,
 position_nm     VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS farm_db.task;
CREATE TABLE farm_db.task (
 task_id        SERIAL PRIMARY KEY,
 task_desc      VARCHAR(50) NOT NULL,
 start_dt       DATE,
 deadline_dttm  TIMESTAMP,
 end_dttm       TIMESTAMP
);

DROP TABLE IF EXISTS farm_db.garden;
CREATE TABLE farm_db.garden (
 garden_id        SERIAL PRIMARY KEY,
 garden_desc      VARCHAR(30),
 address_txt      TEXT NOT NULL
);

DROP TABLE IF EXISTS farm_db.item;
CREATE TABLE farm_db.item (
 item_id       SERIAL PRIMARY KEY,
 supplier_id   INT REFERENCES farm_db.supplier(supplier_id),
 item_desc     VARCHAR(30),
 item_nm       VARCHAR(15) NOT NULL,
 item_cnt     INT NOT NULL
);

DROP TABLE IF EXISTS farm_db.supplier;
CREATE TABLE farm_db.supplier (
 supplier_id      SERIAL PRIMARY KEY,
 supplier_desc    VARCHAR(30),
 supplier_nm      VARCHAR(15) NOT NULL,
 address_txt      TEXT NOT NULL
);

DROP TABLE IF EXISTS farm_db.building;
CREATE TABLE farm_db.building (
 building_id       SERIAL PRIMARY KEY,
 type_nm           VARCHAR(15) NOT NULL,
 address_txt       TEXT NOT NULL
);

DROP TABLE IF EXISTS farm_db.worker_x_anim;
CREATE TABLE farm_db.worker_x_anim (
 animal_id INT REFERENCES farm_db.animal(animal_id),
 worker_id INT REFERENCES farm_db.worker(worker_id),
 PRIMARY KEY (animal_id, worker_id)
);

DROP TABLE IF EXISTS farm_db.worker_x_task;
CREATE TABLE farm_db.worker_x_task (
 worker_id INT REFERENCES farm_db.worker(worker_id),
 task_id INT REFERENCES farm_db.task(task_id),
 PRIMARY KEY (worker_id, task_id)
);

DROP TABLE IF EXISTS farm_db.task_x_item;
CREATE TABLE farm_db.task_x_item (
 task_id INT REFERENCES farm_db.task(task_id),
 item_id INT REFERENCES farm_db.item(item_id),
 PRIMARY KEY (task_id, item_id)
);

DROP TABLE IF EXISTS farm_db.task_x_garden;
CREATE TABLE farm_db.task_x_garden (
 task_id INT REFERENCES farm_db.task(task_id),
 garden_id INT REFERENCES farm_db.garden(garden_id),
 PRIMARY KEY (task_id, garden_id)
);

DROP TABLE IF EXISTS farm_db.building_x_item;
CREATE TABLE farm_db.building_x_item (
 building_id INT REFERENCES farm_db.building(building_id),
 item_id INT REFERENCES farm_db.item(item_id),
 PRIMARY KEY (building_id, item_id)
);

DROP TABLE IF EXISTS farm_db.animal_x_build;
CREATE TABLE farm_db.animal_x_build (
 animal_id INT REFERENCES farm_db.animal(animal_id),
 building_id INT REFERENCES farm_db.building(building_id),
 PRIMARY KEY (animal_id, building_id)
);
