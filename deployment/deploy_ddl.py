import pandas as pd
import mysql.connector
import os

folder_path = "/Users/kedarkodgire/Desktop/Dev/Banking-System/ddl" 

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


tables_to_create = ["employers.sql", "branches.sql", "income.sql", "customers.sql", "loans.sql", "accounts.sql", "loans.sql", "transactions.sql"]

# Loop through the files in the folder
for filename in tables_to_create:
    if filename.endswith(".sql"):  # You can change the file extension to match your file type
        file_path = os.path.join(folder_path, filename)
        
        # Open the file and read its content
        with open(file_path, 'r') as file:
            cursor = conn.cursor()
            file_content = file.read()
            # print(file_content)
            try:
                print(f"running ddl for {filename}...")
                cursor.execute(file_content)
                conn.commit()  # Commit the changes to the database
                print(f"sucessfully ran ddl for {filename}. \n")               
            except mysql.connector.Error as err:
                print("Error:", err)
                conn.rollback()  # Rollback changes if an error occurs
                cursor.close()  # Close the cursor
                conn.close() 

cursor.close()  # Close the cursor
conn.close()    # Close the connection



