import pandas as pd
import mysql.connector
import os


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

tables_to_delete = [
"transactions"
,"transaction_type"
,"accounts"
,"branches"
,"loans"
,"customers"
,"employers"
,"income"
]

# Loop through the tables 
for table in tables_to_delete:
    cursor = conn.cursor()
    delete_content = f"DROP TABLE IF EXISTS {table}"
    try:
        print(f"running `drop` for {table}...")
        cursor.execute(delete_content)
        conn.commit()  # Commit the changes to the database
        print(f"sucessfully ran `drop` for {table}. \n")               
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()  # Rollback changes if an error occurs
        cursor.close()  # Close the cursor
        conn.close() 

cursor.close()  # Close the cursor
conn.close()    # Close the connection





# use banking;

# DROP TABLE IF EXISTS `transactions`;
# DROP TABLE IF EXISTS `transaction_types`;
# DROP TABLE IF EXISTS `branchs`;
# DROP TABLE IF EXISTS `accounts`;
# DROP TABLE IF EXISTS `loans`;
# DROP TABLE IF EXISTS `customers`;
# DROP TABLE IF EXISTS `employers`;
# DROP TABLE IF EXISTS `income`;


