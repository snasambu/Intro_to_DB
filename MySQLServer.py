# File: MySQLServer.py

import mysql.connector
from mysql.connector import Error

try:
    # 1. Connect to MySQL server (without specifying a database yet)
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='your_password_here'  # <-- replace with your MySQL root password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        # 2. Create the database if it does not exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully! - MySQLServer.py:18")

except Error as e:
    print("Error while connecting to MySQL - MySQLServer.py:21", e)

finally:
    # 3. Close the cursor and connection
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
        print("MySQL connection is closed - MySQLServer.py:29")
