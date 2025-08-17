CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE IF NOT EXISTS AUTHORS (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS BOOKS (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
);

CREATE TABLE IF NOT EXISTS CUSTOMERS (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS ORDERS (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

CREATE TABLE IF NOT EXISTS ORDER_DETAILS (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);
