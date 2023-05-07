import  mysql.connector
mydb = mysql.connector.connect(host="LocalHost", user = "root",password = "Dnc0003@",database = "inventory_Management")
cur=mydb.cursor()

manufacture = 'create table manufacture(manufacture_id integer(10) primary key, product_name varchar(30),colour varchar(20),no_of_items_req integer(10), defective_items integer(10))'

goods = 'create table goods(good_id integer(10) primary key,manufacture_Date Date,product_name varchar(30),company varchar(30))'

purchase ='create table purchase(purchase_id integer(10) primary key, product_name varchar(20),colour varchar(30) ,purchase_date Date, no_of_items integer(10),store varchar(20),purchase_amt integer(10))'

sales ='create table sales(product_name varchar(30),colour varchar(20),no_of_items_forsale integer(10),sales_amt integer(10),profit integer(30),purchase_amt integer(10),store varchar(30))'

cur.execute(manufacture)

cur.execute(goods)

cur.execute(purchase)

cur.execute(sales)