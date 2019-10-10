-- 데이터베이스 생성
.database

-- csv파일을 읽어오기
.mode csv
.import hellodb.csv examples

-- 예쁘게 보기
.headers on
.mode column

--테이블 조회 sql문법이라 ; 을 붙인다
SELECT * FROM examples;

DROP TABLE exples;