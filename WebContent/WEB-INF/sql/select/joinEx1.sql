-- 14개행, 8개열
SELECT * FROM employee;
-- 4개행, 3개열
SELECT * FROM department;

SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department 
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department 
WHERE eno = 7369 AND employee.dno = department.dno;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT * FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7369;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7369;

SELECT e.eno, e.ename, e.dno, d.dname 
FROM employee e, department d
WHERE e.dno = d.dno;





