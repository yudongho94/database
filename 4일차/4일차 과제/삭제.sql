-- 1. customers 테이블에서 특정 고객을 삭제하세요.
DELETE FROM customers WHERE customernumber = 1;

-- 2. products 테이블에서 특정 제품을 삭제하세요.
DELETE FROM products WHERE productcode = 1;

-- 3. employees 테이블에서 특정 직원을 삭제하세요.
DELETE FROM employees WHERE employeenumber = 1;

-- 4. offices 테이블에서 특정 사무실을 삭제하세요.
DELETE FROM offices WHERE officecode = 1;

-- 5. orders 테이블에서 특정 주문을 삭제하세요.
DELETE FROM orders WHERE ordernumber = 1;

-- 6. orderdetails 테이블에서 특정 주문 상세를 삭제하세요.
DELETE FROM orderdetails WHERE ordernumber = 1;
-- 7. payments 테이블에서 특정 지불 내역을 삭제하세요.
DELETE FROM payments WHERE customernumber = 1;

-- 8. productlines 테이블에서 특정 제품 라인을 삭제하세요.
DELETE FROM productlines WHERE productLine = 'Classic Cars';

-- 9. customers 테이블에서 특정 지역의 모든 고객을 삭제하세요.
DELETE FROM customers WHERE city = 'San Francisco';

-- 10. products 테이블에서 특정 카테고리의 모든 제품을 삭제하세요.
DELETE FROM products WHERE productLine = 'Classic Cars';