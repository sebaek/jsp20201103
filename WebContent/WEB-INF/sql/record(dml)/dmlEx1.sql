-- 데이터(record, row) 추가
-- INSERT INTO tname (col1, col2) VALUES (val1, val2);
-- 책 (227쪽)
CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

DESC dept_copy;
INSERT INTO dept_copy -- (dno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept_copy (dno, dname, loc)
VALUES (20, 'DALLAS', 'RESEARCH');

INSERT INTO dept_copy (dname, dno, loc)
VALUES ('DALLAS', 20, 'RESEARCH');

SELECT * FROM dept_copy;

COMMIT;

