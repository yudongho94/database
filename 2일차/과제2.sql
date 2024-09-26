과제 1: MySQL 사용자 생성 및 권한 부여

목표: MySQL에서 새로운 사용자를 생성하고, 권한을 부여합니다.

개념 설명:

- MySQL 사용자: 데이터베이스에 접근하고 작업을 수행할 수 있는 계정을 의미합니다.
- 권한 부여: 특정 사용자에게 데이터베이스와 테이블에 대해 작업할 수 있는 권한을 부여합니다.

세부 내용:
1. MySQL에 root 사용자로 로그인:

-mysql -u root -p

2. 새로운 MySQL 사용자 생성:

create database fishbread_database;
use fishbread_database;
create user'fishbread_user1'@'localhost'identified by '1111'

3. 사용자에게 권한 부여:

grant all privileges on *.* to 'fishbread_user1'@'localhost';
flush privileges;

4. 부여된 권한 확인:

how grants for 'fishbread_user1'@'localhost';



과제 2: 데이터베이스와 테이블 생성
목표: 사용자와 주문 정보를 저장할 데이터베이스와 테이블을 생성합니다.

개념 설명:

- 데이터베이스: 데이터를 체계적으로 관리하는 공간입니다.
- 테이블: 데이터베이스 내에서 데이터를 저장하는 구조입니다.

데이터베이스 및 테이블 설계
1. 데이터베이스 생성:

create database fishbread_db;
use fishbread_db;


2. users 테이블 생성:

create table users(
    user_id int primary key auto_increment,
    username varchar(255) not null,
    age int not null,
    email varchar(100) unique
    is_business default false
);

3. orders 테이블 생성:

create table orders(
	order_id int primary key auto_increment,
    user_id int,
    foreign key (user_id) references users(user_id),
    order_date date,
    amount decimal(10,2)
);

4. inventory 테이블 생성:

create table inventory(
	item_id int primary key auto_increment,
    item_name varchar(255) not null,
    quantity int not null
);

5. sales 테이블 생성:

create table sales(
	sale_id int primary key auto_increment,
    order_id int,
    foreign key (order_id) references orders(order_id),
    item_id int,
    foreign key (item_id) references inventory(item_id),
    quantity_sold int not null
);

6. daily_sales 테이블 생성:

create table dayli_sales(
	date date primary key,
    total_sales decimal(10, 2) not null
);