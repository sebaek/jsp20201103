/*
 1. �����ȣ�� 7788�� �����
 ��� ������ ���� ����� ǥ�� (����̸��� ��� ����)�Ͻÿ�.
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
2. �����ȣ�� 7499�� ������� �޿��� ���� ����� ǥ��
(����̸��� ������)�Ͻÿ�.
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
3.�ּұ޿��� �޴� ����� �̸�, ��� ������ �޿���
ǥ���Ͻÿ�(�׷��Լ� ���).
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
4.��� �޿��� ���� ���� ����� ��� ������ ã�� 
���ް� ��� �޿��� ǥ���Ͻÿ�
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

5.�� �μ��� �ּ� �޿��� �޴� �����
�̸�, �޿�, �μ���ȣ�� ǥ���Ͻÿ�
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