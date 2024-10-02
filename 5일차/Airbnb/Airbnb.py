import pymysql

connection = pymysql.connect(

    host = 'localhost',
    user = 'root',
    password = '1234',
    db = 'airbnb',
    charset = 'utf8mb4',
    cursorclass = pymysql.cursors.DictCursor
)

with connection.cursor() as cursor:
    # 문제 1: 새로운 제품 추가
    sql = 'insert into products (productname, price, stockquantity) values(%s, %s, %s)'
    cursor.execute(sql, ('PythonBook', 10000, 10))

    # 문제 2: 고객 목록 조회
    cursor.execute('select*from Products')
    for book in cursor.fetchall():
        print(book)

    # 문제 3: 제품 재고 업데이트
    sql = 'update Products set stockquantity = stockquantity - %s where productID = %s'
    cursor.execute(sql, (1, 1))
    connection.commit()

    # 문제 4: 고객별 총 주문 금액
    sql = 'select customerID, sum(totalamount) from orders group by customerID'
    cursor.execute(sql)
    datas = cursor.fetchall()
    print(datas)

    # 문제 5: 고객 이메일 업데이트
    sql = 'update customers set email = %s where customerID = %s'
    cursor.execute(sql, ('update@update.com', 1))
    connection.commit()

    # 문제 6: 주문 취소
    sql = 'delete from orders where orderID = %s'
    cursor.execute(sql, (15))
    connection.commit()

    # 문제 7: 특정 제품 검색
    sql = 'select * from Products where productName LIKE  %s'
    cursor.execute(sql, ('%Book%'))
    datas = cursor.fetchall()

    for data in datas:
        print(data['productName'])

    # 문제 8: 특정 고객의 모든 주문 조회
    sql = 'select * from orders where customerID = %s'
    cursor.execute(sql, (1))
    datas = cursor.fetchall()

    for data in datas:
        print(data)

    # 문제 9: 가장 많이 주문한 고객
    sql = """
    select customerID, count(*) as orderCount
    from orders group by customerID
    order by ordercount desc limit 1
    """

    cursor.execute(sql)
    data = cursor.fetchone()
    print(data)
        

cursor.close()