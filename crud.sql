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
