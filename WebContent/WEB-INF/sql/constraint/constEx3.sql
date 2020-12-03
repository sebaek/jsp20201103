-- PRIMARY KEY
CREATE TABLE const09 (
    id NUMBER,
    name VARCHAR2(30),
    PRIMARY KEY (id)
);
INSERT INTO const09 (id, name)
VALUES (null, 'a');
INSERT INTO const09 (id, name)
VALUES (1, 'a');
INSERT INTO const09 (id, name)
VALUES (1, 'b');
COMMIT;

-- FOREIGN KEY
CREATE TABLE const10
(
name VARCHAR2(30),
dno NUMBER(2),
FOREIGN KEY (dno) REFERENCES const08_dep
);
INSERT INTO const10
VALUES ('a', 10);
INSERT INTO const10
VALUES ('b', 50);

COMMIT;

