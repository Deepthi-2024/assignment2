import  mysql.connector
mydb = mysql.connector.connect(host="LocalHost", user = "root",password = "Dnc0003@",database = "inventory_Management")
cur=mydb.cursor()
a = 'delete manufacture,purchase FROM purchase JOIN manufacture ON manufacture.product_name = purchase.product_name WHERE manufacture.defective_items=1 and purchase.colour=manufacture.colour'
b = 'update manufacture set no_of_items_req = 10 where product_name ="toys" and colour = "red" '
x = 'select no_of_items_req from manufacture m join goods g on m.product_name = g.product_name  where m.product_name ="wooden chair" and manufacture_date < "2023-05-01"'
y = 'select profit from sales inner join goods on sales.product_name = goods.product_name where goods.product_name="wooden table" and store = "mycare" and company="SS export" '
cur.execute(a)
mydb.commit()
cur.execute(b)
mydb.commit()
cur.execute(x)
display = cur.fetchall()
for i in display:
    print(i)
mydb.commit()
cur.execute(y)
display1 = cur.fetchall()
for j in display1:
    print(j)
mydb.commit()