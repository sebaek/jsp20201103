-- table �����
-- CREATE TABLE

CREATE TABLE table1 (
 col1 NUMBER(3, 1), -- �� 3�� ���̰� �Ҽ��� 1
 col2 VARCHAR2(6),  -- �������� ���ڿ� 6bytes����
 col3 CHAR(4),      -- �������� ���ڿ� 4bytes
 col4 DATE          -- ��¥�ð�
);
SELECT * FROM table1;
DESC table1;
SELECT * FROM department;

-- DATA TYPE (å 17��)
-- ��, ���ڿ�, ��¥�ð�
-- ��
-- NUMBER
-- NUMBER(��)
--   ex)���� 3�̸� 1000�̻� ǥ�� ����
-- NUMBER(��1, ��2)
--   ex)��1�� �ѱ���, ��2�� �Ҽ������� ����
--      NUMBER(3, 2) : 10�̻� ǥ�� ����

-- ���ڿ�
-- VARCHAR2(��) : ���� ����
-- ��: byte�� 
-- CHAR(��) : ���� ����
-- ��: byte��


-- ��¥�ð�
-- DATE
