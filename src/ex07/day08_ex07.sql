-- for Session 1
BEGIN TRANSACTION;
-- for Session 2
BEGIN TRANSACTION;

-- for Session 1
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Dominos';
-- for Session 2
UPDATE pizzeria SET rating = 2.0 WHERE name = 'Pizza Hut';
-- for Session 1
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Pizza Hut';
-- for Session 2
UPDATE pizzeria SET rating = 2.0 WHERE name = 'Dominos';
-- for Session 1
COMMIT;
-- for Session 2
COMMIT;
