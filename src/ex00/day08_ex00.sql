-- Simple transactions
-- Session #1
BEGIN transaction;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Session #2
BEGIN transaction;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Session #1
COMMIT;
-- Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
