import mysql.connector
from mysql.connector import Error

try:
    print("Connecting...")
    connection = mysql.connector.connect(
        host='127.0.0.1',
        user='root',
        password='@Mtrhfreighty2021#',
        port=3306,
        auth_plugin='mysql_native_password'
    )
    if connection.is_connected():
        print("Connection successful!")
except Error as e:
    print(f"Error: {e}")
finally:
    if 'connection' in locals() and connection.is_connected():
        connection.close()
        print("Connection closed.")
