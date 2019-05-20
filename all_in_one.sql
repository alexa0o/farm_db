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

INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Сумеречная Искорка', 'Ламповая пони', '2001-05-17', 'Аликорн');
INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Пинки Пай', 'Учительница', '1999-07-17', 'Земная пони');
INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Радуга Дэш', 'Метеоролог', '2000-03-19', 'Пегас');
INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Рарити', 'Предпренимательница', '1998-09-01', 'Единорог');
INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Флаттершай', 'Скромняшка', '2001-03-17', 'Пегас');
INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Эпплджек', 'Фермер', '2002-04-13', 'Земная пони');
INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Спайк', 'Помощник', '2012-12-12', 'Дракон');

INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Джон', NULL, 'Сноу', 120.00, 'Хранитель Севера');
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Дейнерис', NULL, 'Таргариен', 1000.10, 'Матерь драконов');
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Арья', 'Эддардовна', 'Старк', 1500.50, 'Принцесса');
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Тирион', 'Полумуж', 'Ланнистер', 5000.00, 'Бес');
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Эддард', 'Нэд', 'Старк', 1234.56, 'Тихий волк');
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Кхал', NULL, 'Дрого', 50.00, 'лидер Дотраки');
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Кейтилин', NULL, 'Старк', 100.00, 'Бессердечная');

INSERT INTO farm_db.task (task_desc, start_dt, deadline_dttm, end_dttm)
VALUES ('Спасти мир', '2012-12-12', '2012-12-13 01:00:00', NULL);
INSERT INTO farm_db.task (task_desc, start_dt, deadline_dttm, end_dttm)
VALUES ('Сделать домашку', '2018-01-01', '2018-04-29 00:00:00', NULL);
INSERT INTO farm_db.task (task_desc, start_dt, deadline_dttm, end_dttm)
VALUES ('Прополоть грядку', '2019-07-13', '2019-07-19 00:00:00', '2019-07-18 00:00:00');
INSERT INTO farm_db.task (task_desc, start_dt, deadline_dttm, end_dttm)
VALUES ('Посадить дерево', '2020-10-10', '2021-07-21 01:21:21', NULL);
INSERT INTO farm_db.task (task_desc, start_dt, deadline_dttm, end_dttm)
VALUES ('Построить дом', '2021-12-12', '2022-09-10 23:59:59', '2022-10-12 13:25:50');

INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Ламповый сад', 'Понивиль, Ферма "Сладкое Яблоко"');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Железный сад', 'Понивиль, Ферма "Сладкое Яблоко"');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Ледяной сад', 'Понивиль, Луг');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Простой сад', 'Понивиль, Парк');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Клёвый сад', 'Понивиль, Парк');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Рубиновый сад', 'Понивиль, Водоём');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Золотой сад', 'Понивиль, Сахарный уголок');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Синий сад', 'Понивиль, Луг');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Зелёный сад', 'Понивиль, Водоём');
INSERT INTO farm_db.garden (garden_desc, address_txt)
VALUES ('Белый сад', 'Понивиль, Сахарный уголок');

INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Деревянная лопата', 'Лопата', 23);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Алмазная мотыга', 'Мотыга', 12);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Каменная кирка', 'Кирка', 11);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Железный меч', 'Меч', 1);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Обычные ножницы', 'Ножницы', 2);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Новая зажигалка', 'Зажигалка', 1);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('12 литровое', 'Ведро', 10);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Аламазные сапоги', 'Сапоги', 32);
INSERT INTO farm_db.item (item_desc, item_nm, item_cnt)
VALUES('Золотая шапка', 'Шапка', 10);

INSERT INTO farm_db.supplier (supplier_desc, supplier_nm, address_txt)
VALUES ('Надежный, как швейцарские часы', 'ИП Пупкин', 'Понивиль, Стремянная улица');
INSERT INTO farm_db.supplier (supplier_desc, supplier_nm, address_txt)
VALUES ('Новая компания', 'ООО оамв', 'Понивиль, Сахарный уголок');
INSERT INTO farm_db.supplier (supplier_desc, supplier_nm, address_txt)
VALUES ('Правители Севера', 'ИП Старк', 'Понивиль, Часовая башня');
INSERT INTO farm_db.supplier (supplier_desc, supplier_nm, address_txt)
VALUES ('Правитель Западных земель', 'ИП Ланнистер', 'Понивиль, Водоём');
INSERT INTO farm_db.supplier (supplier_desc, supplier_nm, address_txt)
VALUES ('Правящая династия', 'ООО Таргариены', 'Понивиль, Ратуша');

INSERT INTO farm_db.building (type_nm, address_txt)
VALUES ('Жилой дом', 'Понивиль, Луг');
INSERT INTO farm_db.building (type_nm, address_txt)
VALUES ('Гараж', 'Понивиль, Ратуша');
INSERT INTO farm_db.building (type_nm, address_txt)
VALUES ('Жилой дом', 'Понивиль, Сахарная улица');
INSERT INTO farm_db.building (type_nm, address_txt)
VALUES ('Жилой дом', 'Понивиль, Луг');
INSERT INTO farm_db.building (type_nm, address_txt)
VALUES ('Гараж', 'Понивиль, Водоём');

/*
 Найти всех сотрудников, у которых нет второго имени/отчества и зарплата выше 500
 */

SELECT *
FROM farm_db.worker
WHERE middle_nm IS NULL AND salary_amt > 500;

/*
 Найти имена всех сотрудников, у которых их любимое животное проживает по адресу "Понивиль, Луг"
 */

WITH some_table AS (
    SELECT animal_id
    FROM farm_db.animal_x_build t1 INNER JOIN
        farm_db.building t2 ON t1.building_id = t2.building_id
    WHERE t2.address_txt = 'Понивиль, Луг'
)
SELECT first_nm
FROM (farm_db.worker t1 INNER JOIN
    farm_db.worker_x_anim t2 ON t1.worker_id = t2.worker_id) t3 INNER JOIN
    some_table t4 ON t3.animal_id = t4.animal_id;

/*
 Найти среднюю зарплату сотрудников, имеющих второе имя/отчество
 */

SELECT AVG(salary_amt)
FROM farm_db.worker
WHERE middle_nm IS NOT NULL;


/*
 Найти всех животных породы "Пегас"
 */

SELECT *
FROM farm_db.animal
WHERE type_nm = 'Пегас';

/*
 Найти отклонение от средней зарплаты сотрудников с такой же фамилией
 */

SELECT first_nm, CASE WHEN middle_nm IS NULL THEN '-' ELSE middle_nm END, last_nm, CAST(ABS(salary_amt - AVG(salary_amt) OVER(PARTITION BY last_nm)) AS DECIMAL(6,2)) AS diff
FROM farm_db.worker;

/*
 отсортировать по возрасту животных одного типа
 */

SELECT animal_id, animal_nm, type_nm, row_number() over (PARTITION BY type_nm ORDER BY birth_dt)
FROM farm_db.animal;

/*
 CRUD
 */
INSERT INTO farm_db.worker (first_nm, middle_nm, last_nm, salary_amt, position_nm)
VALUES ('Василий', 'Сергеевич', 'Пупкин', 2282.28, 'Владелец');
SELECT *
FROM farm_db.worker
WHERE position_nm = 'Владелец';
UPDATE farm_db.worker
SET salary_amt = salary_amt * 1.2;
DELETE FROM farm_db.worker
WHERE last_nm = 'Пупкин';

INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Чебурашка', 'Любит апельсины', '1979-02-14', 'Гуманоид');
SELECT *
FROM farm_db.animal
WHERE birth_dt < '2000-01-01';
UPDATE farm_db.animal
SET type_nm = 'Корокодил'
WHERE type_nm = 'Гуманоид';
DELETE FROM farm_db.animal
WHERE type_nm = 'Крокодил';

/*
 Views for all tables
 */
 CREATE VIEW pegases AS
    SELECT animal_nm, animal_desc, overlay(cast(birth_dt as varchar(10)) placing 'xxxx' from 1) AS birth_dt, type_nm
    FROM farm_db.animal
    WHERE type_nm = 'Пегас';

SELECT *
FROM pegases
WHERE animal_nm = 'Флаттершай';

CREATE VIEW starks AS
    SELECT first_nm, middle_nm, last_nm, salary_amt, overlay(position_nm placing 'xxxx' from 3) AS position_nm
    FROM farm_db.worker
    WHERE last_nm = 'Старк';

SELECT *
FROM starks
WHERE first_nm LIKE '%я';

CREATE VIEW finished_tasks AS
    SELECT task_desc, overlay(cast(start_dt as varchar(10)) placing 'xxxx' from 1) AS start_dt, deadline_dttm, end_dttm
    FROM farm_db.task
    WHERE end_dttm IS NOT NULL;

SELECT *
FROM finished_tasks
WHERE end_dttm <= deadline_dttm;

CREATE VIEW gardens_in_sugar_corner AS
    SELECT overlay(garden_desc placing 'xxxxxxxxx' from 5) AS garden_desc, address_txt
    FROM farm_db.garden
    WHERE address_txt = 'Понивиль, Сахарный уголок';

SELECT COUNT(*)
FROM gardens_in_sugar_corner;


CREATE VIEW swords AS
    SELECT item_desc, item_nm, overlay(cast(item_cnt as varchar(4)) placing 'xxxx' from 1) as item_cnt
    FROM farm_db.item
    WHERE item_nm = 'Меч';

SELECT *
FROM swords
WHERE item_desc = 'Железный меч';

CREATE VIEW suppliers_from_sugar_corner AS
    SELECT supplier_desc, overlay(supplier_nm placing 'xxx' from 1) as supplier_nm, address_txt
    FROM farm_db.supplier
    WHERE address_txt = 'Понивиль, Сахарный уголок';

SELECT COUNT(*)
FROM suppliers_from_sugar_corner;

CREATE VIEW homes AS
    SELECT type_nm, overlay(address_txt placing 'xxxx' from 10) as address_txt
    FROM farm_db.building
    WHERE type_nm = 'Жилой дом';

SELECT COUNT(*)
FROM homes;

/*
 advanced view
 1. all workers with finished tasks
 2. items with supplier_nm from sugar corner
 */

CREATE VIEW workers_with_task AS
    SELECT first_nm, middle_nm, last_nm
    FROM (farm_db.worker RIGHT JOIN farm_db.worker_x_task ON worker.worker_id = worker_x_task.worker_id) t INNER JOIN
        farm_db.task ON farm_db.task.task_id = t.task_id
    WHERE end_dttm IS NOT NULL;


CREATE VIEW item_x_supplier_from_sugar_corner AS
    SELECT item_nm, item_cnt, supplier_nm
    FROM farm_db.item LEFT JOIN farm_db.supplier ON farm_db.item.supplier_id = farm_db.supplier.supplier_id
    WHERE farm_db.supplier.address_txt = 'Понивиль, Сахарный уголок';

/*
 Триггеры
 */

/*
 При добавлении животного, если у него не назначен ответственный, то назначить сотрудника с меньшим числом животных.
 */

CREATE TRIGGER t_animal
AFTER INSERT ON farm_db.animal FOR EACH ROW
EXECUTE PROCEDURE set_worker();

CREATE OR REPLACE FUNCTION set_worker() RETURNS TRIGGER AS
    $$
    BEGIN
        IF NOT EXISTS(SELECT * FROM farm_db.worker_x_anim WHERE animal_id=NEW.animal_id) THEN
            INSERT INTO farm_db.worker_x_anim
            VALUES (NEW.animal_id, (SELECT MIN(worker_id)
                FROM (SELECT worker_id
                    FROM farm_db.worker_x_anim
                    GROUP BY worker_id
                    HAVING count(animal_id) = (SELECT MIN(animal_id_cnt)
                        FROM (SELECT count(animal_id) as animal_id_cnt
                            FROM farm_db.worker_x_anim
                            GROUP BY worker_id) c)) t
            ));
        END IF;
        RETURN NEW;
    END;
    $$ LANGUAGE plpgsql;

INSERT INTO farm_db.animal (animal_nm, animal_desc, birth_dt, type_nm)
VALUES ('Катя', 'Красавица', '2000-03-13', 'Школьница');

/*
 При удалении сотрудника удаляются его связи с животными и задачами
 */

CREATE TRIGGER deleter
BEFORE DELETE ON farm_db.worker
FOR EACH ROW
EXECUTE PROCEDURE delete_contact();

CREATE OR REPLACE FUNCTION delete_contact() RETURNS TRIGGER AS
    $$
    BEGIN
        DELETE FROM farm_db.worker_x_anim
        WHERE worker_id = OLD.worker_id;
        DELETE FROM farm_db.worker_x_task
        WHERE worker_id = OLD.worker_id;
        RETURN OLD;
    END;
    $$ LANGUAGE plpgsql;

DELETE FROM farm_db.worker
WHERE worker_id = 1;

/*
 Procedure
 */

CREATE OR REPLACE FUNCTION recalculation(w_id INT) RETURNS VOID AS $$
    BEGIN
    IF (w_id IN (
        SELECT worker.worker_id
        FROM (farm_db.worker INNER JOIN farm_db.worker_x_task ON worker.worker_id = worker_x_task.worker_id)
            INNER JOIN farm_db.task ON worker_x_task.task_id = task.task_id
        WHERE CASE
            WHEN end_dttm IS NULL
            THEN NOW() >= deadline_dttm
            ELSE end_dttm >= deadline_dttm
            END
        ))
    THEN
        UPDATE farm_db.worker
        SET salary_amt = salary_amt * 0.8
        WHERE w_id = worker_id;
    ELSE
        UPDATE farm_db.worker
        SET salary_amt = salary_amt * 1.2
        WHERE w_id = worker_id;
    END IF;
    END;
    $$ LANGUAGE plpgsql;

SELECT recalculation(2);
