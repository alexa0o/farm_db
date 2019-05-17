
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
