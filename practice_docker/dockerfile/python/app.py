import pymysql 

conn = pymysql.connect(host='mysql', port=3000, user='root', password='password', db='developer', charset='utf8') 
cursor = conn.cursor() 

sql = "SELECT * FROM user where department = %s" 

cursor.execute(sql, ("AI")) 
res = cursor.fetchall() 

for data in res: 
        print(data) 

conn.commit() 
conn.close()
