-- DDL(데이터 정의 언어)
-- 구조를 정의
CREATE TABLE classmates(
    id INTEGER PRIMARY KEY,
    name TEXT
);

-- 테이블 목록 조회
.tables

-- 스키마 조회(조회하고 싶은 테이블)
.schema classmates

-- 테이블 삭제
DROP TABLE classmates;
.tables

-- 예제
-- classmates라는 테이블을 생성한다.
CREATE TABLE classmates (
    -- int랑 intager는 같은 취급 받음..
    name TEXT,
    age INT,
    address TEXT
);
-- table출력
.tables
.schema classmates