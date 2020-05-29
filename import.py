import csv

import cx_Oracle

connection = cx_Oracle.connect(user="vova", password="vova")
filename = "iris.csv"
with open(filename, newline='') as file:
    reader = csv.reader(file)
    next(reader, None)
    for row in reader:
    # id = next(reader)[1]
    # dlinna = next(reader)[1]
    # shirina = next(reader)[1]
    # print(id)
   # id = int(id)
   # null = 0
        id = row[0]
        dlinna = row[3]
        shirina = row[4]
        insert_query = "insert into Petal_import(flower_id, dlinna, shirina,species_id) values (:id, :dlina, :shirina, :aga)"
        cursor_customer = connection.cursor()
        cursor_customer.execute(insert_query, id=int(id), dlina=float(dlinna), shirina=float(shirina), aga = 0 )
        cursor_customer.close()
        connection.commit()


