import  mysql.connector
mydb = mysql.connector.connect(host="LocalHost", user = "root",password = "Dnc0003@",database = "inventory_Management")
cur=mydb.cursor()
m = 'insert into manufacture(manufacture_id,product_name,colour,no_of_items_req,defective_items)values(%s,%s,%s,%s,%s)'
a = [(101,'notebooks','white',5,0),(102,'wooden tables','brown',7,0),(103,'wooden chair','black',8,0),(104,'dress','blue',8,1),(105,'dress','orange',8,1),(106,'toys','yellow',6,0),(107,'toys','red',6,0)]

g = 'insert into goods(good_id,manufacture_date,product_name,company)values(%s,%s,%s,%s)'
b = [(201,"2023-04-01","wooden Table",'SS export'),(202,'2023-04-03','wooden chair','ABC'),(203,'2023-04-05','notebooks','BCD'),(204,'2023-04-10','dress','CDE')]

p = 'insert into purchase(purchase_id,product_name,colour,purchase_date,no_of_items,store,purchase_amt)values(%s,%s,%s,%s,%s,%s,%s)' 
c = [(501,'dress','blue','2023-04-23',20,'mycare',20000),(502,"toys",'yellow','2023-04-26',20,'mykids',25000),(503,"dress",'blue','2023-04-26',10,'mykids',15000),(504,"wooden table",'brown','2023-04-30',10,'mycare',30000),(505,"wooden chair",'black','2023-04-25',5,'myoro',15000),(506,"dress",'orange','2023-04-29',20,'mykids',20000),(507,"notebooks",'white','2023-04-26',15,'mykids',15000)]

s = 'insert into sales(product_name,colour,no_of_items_forsale,sales_amt,profit,purchase_amt,store)values(%s,%s,%s,%s,%s,%s,%s)'
d = [('dress','blue',20,40000,20000,20000,'mycare'),('toys','yellow',20,50000,25000,25000,'mykids'),('wooden table','brown',10,60000,30000,30000,'mycare'),('wooden chair','black',5,30000,15000,15000,'myoro'),('notebooks','white',15,30000,15000,15000,'mykids')]

cur.executemany(m,a)
mydb.commit()

cur.executemany(g,b)
mydb.commit()

cur.executemany(p,c)
mydb.commit()

cur.executemany(s,d)


mydb.commit()