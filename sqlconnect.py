from sqlalchemy import create_engine

SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:Mickjagger3@@localhost/salon'

engine2 = create_engine(SQLALCHEMY_DATABASE_URI)
cnxn = engine2.connect()

import pandas as pd


sql = """SELECT concat(firstname, ' ' , lastname) as Cliente, count(*) as Visitas FROM customer c
 left join events e on c.id = e.customer
 GROUP by concat(firstname, ' ' , lastname)
 order by Visitas desc """

df = pd.read_sql(sql, cnxn)

print(df)
