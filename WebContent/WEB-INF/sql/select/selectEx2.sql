select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= '2000';
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';
--SELECT * FROM employee WHERE hiredate = '81/02/20';

SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary > 2000 AND dno <> 30;



