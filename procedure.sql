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
