import pandas as pd
import mysql.connector

# Database connection parameters
host = "127.0.0.1"
user = "root"
password = "Naval007@"
database = "banking"

# Create a connection to the database
conn = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)


cursor = conn.cursor()
print("changing database to banking")
cursor.execute("use banking;")
cursor.close()  # Close the cursor

cursor = conn.cursor()

tables_to_ingest = [
    "employers", 
    "branches",
    "income", 
    "customers", 
    "loans", 
    "accounts", 
    "transaction_type", 
    "transactions"
    ]



for table in tables_to_ingest:
    df = pd.read_csv(f'/Users/kedarkodgire/Desktop/Dev/Banking-System/ingestion/data/{table}.csv')
    # pd.read_csv('transaction_types.csv')
    # print(df)



    table_name = table

    # ========================================================================================================
    # not required since we are creating tables separately

    # # You can use the DataFrame's column names and data types to define the table schema

    # create_table_query = f"CREATE TABLE IF NOT EXISTS {table_name} ("
    # for column in df.columns:
    #     dtype = df[column].dtype
    #     if dtype == 'int64':
    #         create_table_query += f"{column} INT,"
    #     elif dtype == 'float64':
    #         create_table_query += f"{column} FLOAT,"
    #     elif dtype == 'object':
    #         create_table_query += f"{column} VARCHAR(255),"
    # create_table_query = create_table_query[:-1] + ")"
    # cursor.execute(create_table_query)
    # ========================================================================================================

    cursor = conn.cursor()

    insert_query = f"INSERT INTO {table_name} ({', '.join(df.columns)}) VALUES ({', '.join(['%s'] * len(df.columns))})"
    # print(insert_query)
    data_to_insert = [tuple(row) for row in df.values]
    # print(data_to_insert)
    try:
        cursor.executemany(insert_query, data_to_insert)
        print(f"Data inserted successfully into {table_name}")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()  # Rollback changes if an error occurs
    # finally:

conn.commit()  # Commit the changes to the database
cursor.close()  # Close the cursor
conn.close()    # Close the connection