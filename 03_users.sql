.mode csv
.import users.csv users
.headers on
.tables
-- 30이상
-- SELECT * FROM users WHERE age>=30;

-- 이름만
-- SELECT last_name,age FROM users WHERE age>=30 and last_name='김';

-- 전체 갯수
-- SELECT COUNT(*) FROM users;
-- DROP TABLE users;

-- 조건 갯수
-- SELECT COUNT(age) FROM users WHERE age>=30 and last_name='김';
-- DROP TABLE users;

-- 30살 이상의 평균나이
-- SELECT AVG(age) FROM users WHERE age>=30;
-- DROP TABLE users;

-- 계좌 잔액이 가장 높은 사람과 액수?
-- SELECT first_name, MAX(balance) FROM users;
-- DROP TABLE users;

-- 30살 이상에서 계좌 평균 잔액?
-- SELECT AVG(balance) FROM users WHERE age>=30;
-- DROP TABLE users;

-- .schema users;
-- DROP TABLE users;

-- 20대인 사람 수 2_ 는 _에 한 문자가 있어야함. 2% 는 %에 문자가 있어도 되고 없어도 된다.
-- SELECT COUNT(*) FROM users WHERE age LIKE '2_';
-- DROP TABLE users;

-- 지역번호가 02 인 사람 수?
-- SELECT COUNT(*) FROM users WHERE phone LIKE '02-%';
-- DROP TABLE users;

-- 준으로 끝나는 이름 사람수?
-- SELECT COUNT(*) FROM users WHERE first_name LIKE '%준';
-- DROP TABLE users;

-- 중간번호 5114
-- SELECT COUNT(*) FROM users WHERE phone LIKE '%-5114-%';
-- DROP TABLE users;

-- 나이 오름차순 상위 10개
-- SELECT age FROM users ORDER BY age ASC LIMIT 10;
-- DROP TABLE users;

-- 나이순, 성 순으로 오름차순 정렬하여 상위 10개
-- SELECT age,last_name FROM users
-- ORDER BY age, last_name LIMIT 10;
-- DROP TABLE users;

-- 계좌잔액순 내림차순, 성과 이름 10개
-- SELECT last_name,first_name FROM users ORDER BY balance DESC LIMIT 10;
-- DROP TABLE users;