import mysql.connector
mydb = mysql.connector.connect(host="LocalHost", user = "root",password = "Dnc0003@")
print(mydb.connection_id)
cur =mydb.cursor()
cur.execute("create database Inventory_Management")