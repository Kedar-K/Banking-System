import pandas as pd
import mysql.connector

# Database connection parameters
host = "your_host"
user = "your_username"
password = "your_password"
database = "your_database"

# Create a connection to the database
conn = mysql.connector.connect(
    host='127.0.0.1',
    user='root',
    password='Naval007@',
    database='banking'
)

cursor = conn.cursor()

csv_file = "your_data.csv"  # Replace with the path to your CSV file
df = pd.read_csv('transaction_types.csv')



table_name = "transaction_types"

# # You can use the DataFrame's column names and data types to define the table schema
create_table_query = f"CREATE TABLE IF NOT EXISTS {table_name} ("
for column in df.columns:
    dtype = df[column].dtype
    if dtype == 'int64':
        create_table_query += f"{column} INT,"
    elif dtype == 'float64':
        create_table_query += f"{column} FLOAT,"
    elif dtype == 'object':
        create_table_query += f"{column} VARCHAR(255),"
create_table_query = create_table_query[:-1] + ")"
cursor.execute(create_table_query)


insert_query = f"INSERT INTO {table_name} ({', '.join(df.columns)}) VALUES ({', '.join(['%s'] * len(df.columns))})"
data_to_insert = [tuple(row) for row in df.values]

try:
    cursor.executemany(insert_query, data_to_insert)
    conn.commit()  # Commit the changes to the database
    print("Data inserted successfully")
except mysql.connector.Error as err:
    print("Error:", err)
    conn.rollback()  # Rollback changes if an error occurs
finally:
    cursor.close()  # Close the cursor
    conn.close()    # Close the connection
