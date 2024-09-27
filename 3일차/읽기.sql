-- frontend 직책을 가진 직원 중에서 연봉이 90000원 이하인 직원의 이름과 연봉을 조회하세요.
select name, salary from employees where position = 'Frontend' and salary <= 90000;
