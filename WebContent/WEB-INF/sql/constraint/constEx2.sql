-- KEY 
-- : 각 레코드(row)를 유일하게 구분할 수 있는 컬럼(들)

-- PRIMARY KEY
-- 각 레코드들 유일하게 구분하는 컬럼
-- 유의할 점 : 변하지 않는 값
--   -> 키 컬럼 새로 만들기 추천
--      자동으로 늘어나는 정수
-- : NOT NULL UNIQUE


CREATE TABLE const05 (
    email VARCHAR(30),
    name VARCHAR(30),
    ssn VARCHAR(30),
    address VARCHAR(30),
    birth DATE
);
SELECT * FROM const05;

CREATE TABLE const06 (
    id NUMBER PRIMARY KEY, 
    name VARCHAR2(30)
);
INSERT INTO const06 (id, name)
VALUES (1, 'a');
INSERT INTO const06 (id, name)
VALUES (null, 'b');
INSERT INTO const06 (id, name)
VALUES (1, 'c');
INSERT INTO const06 (id, name)
VALUES (2, 'd');
SELECT * FROM const06;
COMMIT;

