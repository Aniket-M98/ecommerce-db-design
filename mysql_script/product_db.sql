-- ==============================
-- PRODUCT-CENTRIC DATABASE
-- ==============================

CREATE DATABASE IF NOT EXISTS product_db;
USE product_db;

-- Categories Table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100),
    description TEXT
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150),
    category_id INT,
    supplier_id INT,
    description TEXT,
    brand VARCHAR(100),
    weight DECIMAL(10,2),
    price DECIMAL(10,2),
    dimensions VARCHAR(50),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Suppliers Table
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(150),
    contact_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(10)
);

-- Inventory Table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    warehouse_loc VARCHAR(100),
    stock_quantity INT,
    reorder_level INT,
    last_restock_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Price History Table
CREATE TABLE Price_History (
    price_history_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    old_price DECIMAL(10,2),
    new_price DECIMAL(10,2),
    changed_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);