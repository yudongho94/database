use classicmodels;
-- 1. customer 테이블에 새 고객을 추가하세요.
insert into customers (customernumber, customername, city) values ('1000', 'Dongho', '서울');

-- 2. product 테이블에 새 제품을 추가하세요.
insert into products (productcode, productname, buyprice) values ('S01', 'toy car', '20.00');

-- 3. employees 테이블에 새 직원을 추가하세요.
insert into employees (employeenumber, firstname, lastname) values ('123', 'alice', 'johnson');

-- 4. offices 테이블에 새 사무실을 추가하세요.
insert into offices (officecode, city, phone) values ('8', 'san francisco', '123-456-789');

-- 5. orders 테이블에 새 주문을 추가하세요.
insert into orders (ordernumber, orderdate) values ('1', '2024-09-30');

-- 6. orderdetails 테이블에 주문 상세 정보를 추가하세요.
insert into orderdetails (ordernumber, productcode, priceeach) values ('10202', 'S24_2022', '36.74');

-- 7. payments 테이블에 지불 정보를 추가하세요.
insert into payments (customernumber, checknumber, amount, paymentdate) values ('496', 'MN89925', '12345.00', '2024-09-30');

-- 8.  productlines 테이블에 제품 라인을 추가하세요.
insert into productlines (productline) values ('toy cars');

-- 9. customers 테이블에 다른 지역의 고객을 추가하세요.
insert into customers (customernumber, customername, city) values ('1001', 'Jane Smith', '부산');

-- 10. products 테이블에 다른 카테고리의 제품을 추가하세요.
insert into products (productcode, productname, buyprice) values ('S02', 'mini car', '21.00');
