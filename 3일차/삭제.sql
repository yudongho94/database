-- 민혁 사원의 데이터를 삭제하세요

delete from employees where name = '민혁';

-- 모든 직원을 position 별로 그룹화하여 각 직책의 평균 연봉을 계산하세요.

select position, avg(salary) as average_salary from employees group by position;

-- employees 테이블을 삭제하세요.

drop table employees;