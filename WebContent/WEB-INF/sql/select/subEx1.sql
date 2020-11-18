SELECT manager FROM employee 
WHERE eno = 7499;

SELECT ename FROM employee
WHERE eno = 7698;

SELECT ename FROM employee
WHERE eno = (SELECT manager 
             FROM employee 
             WHERE eno = 7499);
             
             
             
             
             
             