-- Lost Update for Repeatable Read
-- for Session #1
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- for Session #2
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- for Session #1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- for Session #2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- for Session #1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';

-- for Session #2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';

-- for Session #1
COMMIT;

-- for Session #2
COMMIT;

-- for Session #1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- for Session #2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
