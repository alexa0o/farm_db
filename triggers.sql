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

