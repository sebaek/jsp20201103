-- UPDATE
-- 데이터를 변경하는 명령문
-- UPDATE tname SET col1=val1, col2=val2, , , WHERE ,,
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

SELECT * FROM dept_copy;

-- 책 (232쪽)
UPDATE dept_copy
SET dname='HR';

-- 책 (233쪽)
UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno=10;
SELECT * FROM dept_copy;

COMMIT;

UPDATE dept_copy
SET loc=(
        SELECT loc
        FROM dept_copy
        WHERE dno=20
)
WHERE dno=10;
SELECT * FROM dept_copy;

-- 책 234쪽
UPDATE dept_copy
SET dname=(SELECT dname 
            FROM dept_copy
            WHERE dno=30
),
loc=(SELECT loc
     FROM dept_copy
     WHERE dno=30)
WHERE dno=10;
SELECT * FROM dept_copy;

COMMIT;

-- DELETE
-- DELETE FROM tname WHERE 
SELECT * FROM dept_copy;

DELETE dept_copy
WHERE dno=10;

DELETE dept_copy;

COMMIT;



