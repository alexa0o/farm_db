SELECT *
FROM pegases
WHERE animal_nm = 'Флаттершай';

SELECT *
FROM starks
WHERE first_nm LIKE '%я';

SELECT *
FROM finished_tasks
WHERE end_dttm <= deadline_dttm;

SELECT COUNT(*)
FROM gardens_in_sugar_corner;

SELECT *
FROM swords
WHERE item_desc = 'Железный меч';

SELECT COUNT(*)
FROM suppliers_from_sugar_corner;

SELECT COUNT(*)
FROM homes;
