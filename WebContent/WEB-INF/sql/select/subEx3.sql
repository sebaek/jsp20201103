/*
 1. 사원번호가 7788인 사원과
 담당 업무가 같은 사원을 표시 (사원이름과 담당 업무)하시오.
 */
SELECT
    ename,
    job
FROM
    employee
WHERE
    job = (
        SELECT
            job
        FROM
            employee
        WHERE
            eno = 7788
    );
    
    
    
/*
2. 사원번호가 7499인 사원보다 급여가 많은 사원을 표시
(사원이름과 담당업무)하시오.
*/
SELECT
    ename,
    job
FROM
    employee
WHERE
    salary > (
        SELECT
            salary
        FROM
            employee
        WHERE
            eno = 7499
    );

/*
3.최소급여를 받는 사원의 이름, 담당 업무및 급여를
표시하시오(그룹함수 사용).
*/
SELECT
    ename,
    job,
    salary
FROM
    employee
WHERE
    salary = (
        SELECT
            MIN(salary)
        FROM
            employee
    );
    
    
/*
4.평균 급여가 가장 적은 사원의 담당 업무를 찾아 
직급과 평균 급여를 표시하시오
*/
SELECT
    job,
    round(AVG(salary), 1)
FROM
    employee
GROUP BY
    job
HAVING
    round(AVG(salary), 1) = (
        SELECT
            MIN(round(AVG(salary), 1))
        FROM
            employee
        GROUP BY
            job
    );
    
    
    
/*

5.각 부서의 최소 급여를 받는 사원의
이름, 급여, 부서번호를 표시하시오
*/

SELECT
    ename,
    salary,
    dno
FROM
    employee
WHERE
    salary IN (
        SELECT
            MIN(salary)
        FROM
            employee
        GROUP BY
            dno
    );