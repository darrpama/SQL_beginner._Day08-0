-- for Session #1
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- for Session #2
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- for Session #1
SELECT rating from pizzeria WHERE name = 'Pizza Hut';

-- for Session #2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;

-- for Session #1
SELECT rating from pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating from pizzeria WHERE name = 'Pizza Hut';

-- for Session #2
SELECT rating from pizzeria WHERE name = 'Pizza Hut';
