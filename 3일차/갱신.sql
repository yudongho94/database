-- pm 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요.

SET SQL_SAFE_UPDATES = 0;
update employees set salary = salary * 1.10 where position = 'PM';
select * from employees where position = 'Quality Assurance';

-- 모든 backend 직책을 가진 직원의 연봉을 5% 인상하세요.

update employees set salary = salary * 1.05 where position = 'Backend';