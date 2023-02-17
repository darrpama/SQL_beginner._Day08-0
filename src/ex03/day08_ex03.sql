-- for Session #1
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- for Session #2
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- for Session #1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- for Session #2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;

-- for Session #1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- for Session #2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
