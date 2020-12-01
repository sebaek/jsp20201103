SELECT *
FROM employee
WHERE
ename='SMITH'
;
SELECT ename, dno
FROM employee
WHERE dno='20'
;
SELECT dno 
FROM employee
WHERE 
ename = 'SCOTT';

SELECT ename, dno
FROM employee
WHERE dno=(
            SELECT dno 
            FROM employee
            WHERE 
            ename = 'SCOTT'
);

SELECT ename, job, salary
FROM employee
WHERE
salary = (SELECT MIN(salary)
          FROM employee);
SELECT dno, min(salary)
FROM employee
GROUP BY dno
HAVING min(salary) > (SELECT MIN(salary)
                        FROM employee
                        WHERE dno=30);

SELECT MIN(salary)
FROM employee
WHERE dno=30;


