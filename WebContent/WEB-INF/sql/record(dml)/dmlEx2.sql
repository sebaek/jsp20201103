-- 
CREATE TABLE data_type_ex1
(
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3, 2)
);
INSERT INTO data_type_ex1 (num1)
VALUES (0);
INSERT INTO data_type_ex1 (num1)
VALUES (0.01);
INSERT INTO data_type_ex1 (num1)
VALUES (99999999999);
INSERT INTO data_type_ex1 (num2)
VALUES (0);
INSERT INTO data_type_ex1 (num2)
VALUES (5.5); -- 반올림
INSERT INTO data_type_ex1 (num2)
VALUES (99);
INSERT INTO data_type_ex1 (num2)
VALUES (100);
INSERT INTO data_type_ex1 (num3)
VALUES (0.01);
INSERT INTO data_type_ex1 (num3)
VALUES (0.015); -- 반올림
INSERT INTO data_type_ex1 (num3)
VALUES (9.015); -- 반올림
INSERT INTO data_type_ex1 (num3)
VALUES (10.015); -- x
COMMIT;
SELECT * FROM data_type_ex1;

-- 문자열
CREATE TABLE data_type_ex2
(
char1 CHAR(3),
vchar2 VARCHAR2(6)
);
INSERT INTO data_type_ex2
(char1) VALUES ('');
INSERT INTO data_type_ex2
(char1) VALUES ('a');
INSERT INTO data_type_ex2
(char1) VALUES ('abc');
INSERT INTO data_type_ex2
(char1) VALUES ('abcd'); -- x

INSERT INTO data_type_ex2
(vchar2) VALUES ('abc');
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdef');
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdefg');

COMMIT;
SELECT * FROM data_type_ex2;



