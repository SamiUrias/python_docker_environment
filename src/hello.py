import duckdb
print("Hello form python file =D")
cursor = duckdb.connect()
print(cursor.execute('SELECT 42').fetchall())