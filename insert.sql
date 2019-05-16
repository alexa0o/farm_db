INSERT INTO farm_db.animal
VALUES (1, 'Сумеречная Искорка', 'Ламповая пони', '2001-05-17', 'Аликорн');
INSERT INTO farm_db.animal
VALUES (2, 'Пинки Пай', 'Учительница', '1999-07-17', 'Земная пони');
INSERT INTO farm_db.animal
VALUES (3, 'Радуга Дэш', 'Метеоролог', '2000-03-19', 'Пегас');
INSERT INTO farm_db.animal
VALUES (4, 'Рарити', 'Предпренимательница', '1998-09-01', 'Единорог');
INSERT INTO farm_db.animal
VALUES (5, 'Флаттершай', 'Скромняшка', '2001-03-17', 'Пегас');
INSERT INTO farm_db.animal
VALUES (6, 'Эпплджек', 'Фермер', '2002-04-13', 'Земная пони');
INSERT INTO farm_db.animal
VALUES (7, 'Спайк', 'Помощник', '2012-12-12', 'Дракон');

INSERT INTO farm_db.worker
VALUES (1, 'Джон', NULL, 'Сноу', 120.00, 'Хранитель Севера');
INSERT INTO farm_db.worker
VALUES (2, 'Дейнерис', NULL, 'Таргариен', 1000.10, 'Матерь драконов');
INSERT INTO farm_db.worker
VALUES (3, 'Арья', 'Эддардовна', 'Старк', 1500.50, 'Принцесса');
INSERT INTO farm_db.worker
VALUES (4, 'Тирион', 'Полумуж', 'Ланнистер', 5000.00, 'Бес');
INSERT INTO farm_db.worker
VALUES (5, 'Эддард', 'Нэд', 'Старк', 1234.56, 'Тихий волк');
INSERT INTO farm_db.worker
VALUES (6, 'Кхал', NULL, 'Дрого', 50.00, 'лидер Дотраки');
INSERT INTO farm_db.worker
VALUES (7, 'Кейтилин', NULL, 'Старк', 100.00, 'Бессердечная');

INSERT INTO farm_db.task
VALUES (1, 'Спасти мир', '2012-12-12', '2012-12-13 01:00:00', NULL);
INSERT INTO farm_db.task
VALUES (2, 'Сделать домашку', '2018-01-01', '2018-04-29 00:00:00', NULL);
INSERT INTO farm_db.task
VALUES (3, 'Прополоть грядку', '2019-07-13', '2019-07-19 00:00:00', '2019-07-18 00:00:00');
INSERT INTO farm_db.task
VALUES (4, 'Посадить дерево', '2020-10-10', '2021-07-21 01:21:21', NULL);
INSERT INTO farm_db.task
VALUES (5, 'Построить дом', '2021-12-12', '2022-09-10 23:59:59', '2022-10-12 13:25:50');

INSERT INTO farm_db.garden
VALUES (1, 'Ламповый сад', 'Понивиль, Ферма "Сладкое Яблоко"');
INSERT INTO farm_db.garden
VALUES (2, 'Железный сад', 'Понивиль, Ферма "Сладкое Яблоко"');
INSERT INTO farm_db.garden
VALUES (3, 'Ледяной сад', 'Понивиль, Луг');
INSERT INTO farm_db.garden
VALUES (4, 'Простой сад', 'Понивиль, Парк');
INSERT INTO farm_db.garden
VALUES (5, 'Клёвый сад', 'Понивиль, Парк');
INSERT INTO farm_db.garden
VALUES (6, 'Рубиновый сад', 'Понивиль, Водоём');
INSERT INTO farm_db.garden
VALUES (7, 'Золотой сад', 'Понивиль, Сахарный уголок');
INSERT INTO farm_db.garden
VALUES (8, 'Синий сад', 'Понивиль, Луг');
INSERT INTO farm_db.garden
VALUES (9, 'Зелёный сад', 'Понивиль, Водоём');
INSERT INTO farm_db.garden
VALUES (10, 'Белый сад', 'Понивиль, Сахарный уголок');

INSERT INTO farm_db.item
VALUES(1, 'Деревянная лопата', 'Лопата', 23);
INSERT INTO farm_db.item
VALUES(2, 'Алмазная мотыга', 'Мотыга', 12);
INSERT INTO farm_db.item
VALUES(3, 'Каменная кирка', 'Кирка', 11);
INSERT INTO farm_db.item
VALUES(4, 'Железный меч', 'Меч', 1);
INSERT INTO farm_db.item
VALUES(5, 'Обычные ножницы', 'Ножницы', 2);
INSERT INTO farm_db.item
VALUES(6, 'Новая зажигалка', 'Зажигалка', 1);
INSERT INTO farm_db.item
VALUES(7, '12 литровое', 'Ведро', 10);
INSERT INTO farm_db.item
VALUES(8, 'Аламазные сапоги', 'Сапоги', 32);
INSERT INTO farm_db.item
VALUES(9, 'Золотая шапка', 'Шапка', 10);

INSERT INTO farm_db.supplier
VALUES (1, 'Надежный, как швейцарские часы', 'ИП Пупкин', 'Понивиль, Стремянная улица');
INSERT INTO farm_db.supplier
VALUES (2, 'Новая компания', 'ООО оамв', 'Понивиль, Сахарный уголок');
INSERT INTO farm_db.supplier
VALUES (3, 'Правители Севера', 'ИП Старк', 'Понивиль, Часовая башня');
INSERT INTO farm_db.supplier
VALUES (4, 'Правитель Западных земель', 'ИП Ланнистер', 'Понивиль, Водоём');
INSERT INTO farm_db.supplier
VALUES (5, 'Правящая династия', 'ООО Таргариены', 'Понивиль, Ратуша');

INSERT INTO farm_db.building
VALUES (1, 'Жилой дом', 'Понивиль, Луг');
INSERT INTO farm_db.building
VALUES (2, 'Гараж', 'Понивиль, Ратуша');
INSERT INTO farm_db.building
VALUES (3, 'Жилой дом', 'Понивиль, Сахарная улица');
INSERT INTO farm_db.building
VALUES (4, 'Жилой дом', 'Понивиль, Луг');
INSERT INTO farm_db.building
VALUES (5, 'Гараж', 'Понивиль, Водоём');
