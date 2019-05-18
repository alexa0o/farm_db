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
