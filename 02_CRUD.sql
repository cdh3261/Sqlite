-- 예제
-- classmates라는 테이블을 생성한다.
CREATE TABLE classmates (
    -- int랑 intager는 같은 취급 받음..
    name TEXT,
    age INT,
    address TEXT
);

-- CREATE
INSERT INTO classmates(name,age,address)
VALUES('오창희',11,'광주');

-- data확인
-- SELECT * FROM classmates;

-- create
INSERT INTO classmates(name,address)
VALUES('오창희','광주');


INSERT INTO classmates(name,age,address)
VALUES('홍길동','30','서울');

SELECT rowid,* FROM classmates;

DROP TABLE classmates;
.tables
CREATE TABLE classmates(
    id INT PRIMARY KEY,
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO classmates(id,name,age,address)
VALUES(1,'동호',27,'부산');
SELECT * FROM classmates;

DROP TABLE classmates;
.tables
CREATE TABLE classmates(
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO classmates(name,age,address)
VALUES('동호',27,'부산'),('명한',26,'목포'),('호연',27,'분당');

SELECT rowid, name FROM classmates LIMIT 1;

-- OFFSET 2 => 앞에서 2개를 제외한 3번째정보 (LIMIT1) 1개를 가져옴
SELECT rowid,name FROM classmates LIMIT 1 OFFSET 2;

-- 주소를 찾는다
SELECT * FROM classmates WHERE address='목포';

SELECT * FROM classmates;
-- 중복제거
SELECT DISTINCT age FROM classmates;

-- delete
DELETE FROM classmates WHERE rowid =3;
INSERT INTO classmates VALUES('승규',27,'고흥');
SELECT rowid,* FROM classmates;

--UPDATE
UPDATE classmates
SET name='승재', address='제주도'
WHERE rowid=3;
SELECT * FROM classmates;


DROP TABLE classmates;