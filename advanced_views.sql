CREATE VIEW workers_with_task AS
    SELECT first_nm, middle_nm, last_nm
    FROM (farm_db.worker RIGHT JOIN farm_db.worker_x_task ON worker.worker_id = worker_x_task.worker_id) t INNER JOIN
        farm_db.task ON farm_db.task.task_id = t.task_id
    WHERE end_dttm IS NOT NULL;


CREATE VIEW item_x_supplier_from_sugar_corner AS
    SELECT item_nm, item_cnt, supplier_nm
    FROM farm_db.item LEFT JOIN farm_db.supplier ON farm_db.item.supplier_id = farm_db.supplier.supplier_id
    WHERE farm_db.supplier.address
