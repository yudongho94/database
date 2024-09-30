-- 1. customers 테이블에서 모든 고객 정보를 조회하세요.
select * from customers;

-- 2. products 테이블에서 모든 제품 목록을 조회하세요. 
SELECT productname, buyprice FROM products;

-- 3. employees 테이블에서 모든 직원의 이름과 직급을 조회하세요.
SELECT firstName, lastName, jobTitle FROM employees;

-- 4. offices 테이블에서 모든 사무실의 위치를 조하세요.
SELECT city, address, phone FROM offices;

-- 5. orders 테이블에서 최근 10개의 주문을 조회하세요.
SELECT * FROM orders ORDER BY orderDate DESC LIMIT 10;

-- 6. orderdetails 테이블에서 특정 주문의 모든 상세 정보를 조회하세요.
SELECT * FROM orderdetails WHERE ordernumber = 1;

-- 7. payments 테이블에서 특정 고객의 모든 지불 정보를 조회하세요.
SELECT * FROM payments WHERE customernumber = 1;

-- 8. productlines 테이블에서 각 제품 라인의 설명을 조회하세요.
SELECT productLine, textDescription FROM productlines;

-- 9. customers 테이블에서 특정 지역의 고객을 조회하세요.
SELECT * FROM customers WHERE city = '부산';

-- 10. products 테이블에서 특정 가격 범위의 제품을 조회하세요.
SELECT * FROM products WHERE buyprice BETWEEN 20 AND 50;