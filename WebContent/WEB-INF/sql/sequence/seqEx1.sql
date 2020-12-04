CREATE TABLE post
(
title VARCHAR2(255),
body VARCHAR2(255)
);
INSERT INTO post (title, body)
VALUES ('abc', 'def');
INSERT INTO post (title, body)
VALUES ('abc', 'def');
SELECT * FROM post;
DELETE post WHERE title='abc';

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

SELECT * FROM post;

INSERT INTO post (id, title, body)
VALUES (1, 'abc', 'def');
INSERT INTO post (id, title, body)
VALUES (2, 'abc', 'def');

DELETE post WHERE id=1;

-- 
SELECT max(id) FROM post; -- 내가

SELECT max(id) FROM post; -- 다른 


INSERT INTO post (id, title, body)
VALUES (3, 'abc', 'def');



COMMIT;


-- SEQUENCE
CREATE SEQUENCE my_seq; -- 1부터 1씩 증가

DELETE post;
COMMIT;

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval , 'abc', 'def');

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval , 'abc', 'def');

SELECT * FROM post;



-- 
CREATE SEQUENCE my_seq2
START WITH 100;

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;

INSERT INTO post (id, title, body)
VALUES (my_seq2.nextval, 'abc', 'def');

INSERT INTO post (id, title, body)
VALUES (my_seq3.nextval, 'abc', 'def');
SELECT * FROM post;


SELECT * FROM user_sequences;

SELECT my_seq2.currval FROM dual;
SELECT my_seq2.nextval FROM dual;

-- 시퀀스 제거

DROP SEQUENCE my_seq;
DROP SEQUENCE my_seq2;

-- 시퀀스 수정
ALTER SEQUENCE my_seq3
INCREMENT BY 1000;
SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;


create table t1;
create sequence s1;

create table t2;
create sequence s2;

-- 자동 증가 컬럼
DROP TABLE t1;
CREATE TABLE t1 (
    id NUMBER GENERATED ALWAYS as IDENTITY(START WITH 1 INCREMENT by 1),
    name VARCHAR2(30)
);
INSERT INTO t1 (name) VALUES ('jane');
INSERT INTO t1 (name) VALUES ('donald');
SELECT * FROM t1;

SELECT * FROM user_sequences;





