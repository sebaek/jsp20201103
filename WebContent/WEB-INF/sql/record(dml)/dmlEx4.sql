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