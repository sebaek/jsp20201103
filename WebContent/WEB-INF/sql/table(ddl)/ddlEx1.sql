-- table 만들기
-- CREATE TABLE

CREATE TABLE table1 (
 col1 NUMBER(3, 1), -- 수 3의 길이고 소수밑 1
 col2 VARCHAR2(6),  -- 가변길이 문자열 6bytes까지
 col3 CHAR(4),      -- 고정길이 문자열 4bytes
 col4 DATE          -- 날짜시간
);
SELECT * FROM table1;
DESC table1;
SELECT * FROM department;

-- DATA TYPE (책 17쪽)
-- 수, 문자열, 날짜시간
-- 수
-- NUMBER
-- NUMBER(값)
--   ex)값이 3이면 1000이상 표시 못함
-- NUMBER(값1, 값2)
--   ex)값1은 총길이, 값2는 소수점밑의 길이
--      NUMBER(3, 2) : 10이상 표시 못함

-- 문자열
-- VARCHAR2(값) : 가변 길이
-- 값: byte수 
-- CHAR(값) : 고정 길이
-- 값: byte수


-- 날짜시간
-- DATE
