select * from employee;
SELECT * FROM employee WHERE ename='WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
SELECT * FROM employee WHERE ename LIKE '%D';
SELECT ename FROM employee WHERE ename LIKE '%A%';
SELECT * FROM employee WHERE ename LIKE '_A__';
SELECT * FROM employee WHERE ename LIKE '_A%';

SELECT * FROM employee;
SELECT * FROM employee WHERE commission = NULL;
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;