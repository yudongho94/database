-- 1. customers 테이블에서 특정 고객의 주소를 갱신하세요.
UPDATE customers set city = '456 Updated St' WHERE customernumber = 1;

-- 2. products 테이블에서 특정 제품의 가격을 갱신하세요.
UPDATE products SET buyprice = 29.99 WHERE productcode = 1;

-- 3. employees 테이블에서 특정 직원의 직급을 갱신하세요.
UPDATE employees SET jobTitle = 'Manager' WHERE employeenumber = 1;

-- 4. offices 테이블에서 특정 사무실의 전화번호를 갱신하세요.
UPDATE offices SET phone = '123-456-7891' WHERE officecode = 1;

-- 5. orders 테이블에서 특정 주문의 상태를 갱신하세요.
UPDATE orders SET status = 'Shipped' WHERE ordernumber = 1;

-- 6. orderdetails 테이블에서 특정 주문 상세의 수량을 갱신하세요.
UPDATE orderdetails SET quantityOrdered = 3 WHERE ordernumber = 1 AND productcode = 1;

-- 7. payments 테이블에서 특정 지불의 금액을 갱신하세요.
UPDATE payments SET amount = 250.00 WHERE customernumber = 1 AND paymentDate = '2023-01-01';

-- 8. productlines 테이블에서 특정 제품 라인의 설명을 갱신하세요.
UPDATE productlines SET textDescription = 'Updated description' WHERE productLine = 'Classic Cars';

-- 9. customers 테이블에서 특정 고객의 이메일을 갱신하세요.
UPDATE customers SET email = 'john_updated@email.com' WHERE customernumber = 1;

-- 10. products 테이블에서 여러 제품의 가격을 한 번에 갱신하세요.
UPDATE products SET price = price * 1.1;