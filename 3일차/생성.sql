-- employees 테이블을 생성해주세요
use testdatabase;

create table employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- 직원 데이터를 employees에 추가해주세요

INSERT INTO employees (name, position, salary) VALUES ('혜린', 'PM', 90000);
INSERT INTO employees (name, position, salary) VALUES ('은우', 'Frontend', 80000);
INSERT INTO employees (name, position, salary) VALUES ('가을', 'Backend', 92000);
INSERT INTO employees (name, position, salary) VALUES ('지수', 'Frontend', 78000);
INSERT INTO employees (name, position, salary) VALUES ('민혁', 'Frontend', 96000);
INSERT INTO employees (name, position, salary) VALUES ('하온', 'Backend', 130000);

select * from employees;