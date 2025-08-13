# E-Commerce Database Design

## 📌 Overview

This repository contains **two e-commerce database designs**:

1. **User-Centric** – Focused on users, their orders, payments, and shipping.
2. **Product-Centric** – Focused on product details, suppliers, inventory, and price history.

## 🛠 Tools Used

* **dbdiagram.io** → Used to visually design both database schemas.
* **SQL** → Scripts generated from diagrams.

## 📂 Project Structure

**user-centric/**
• diagram.png
• schema.sql
• README.md

**product-centric/**
• diagram.png
• schema.sql
• README.md

## 🗄 User-Centric Database Tables

1. **Users** – Customer information.
2. **Orders** – Details of each order placed.
3. **Order\_Items** – Products included in each order.
4. **Payments** – Payment transaction records.
5. **Shipments** – Delivery and shipping tracking.
6. **Products** – Product details linked to orders.
7. **Categories** – Classification for products.
8. **Suppliers** – Supplier details.
9. **Inventory** – Stock monitoring.
10. **Price\_History** – Historical price changes.

## 🗄 Product-Centric Database Tables

1. **Categories** – Product classification.
2. **Products** – Product details and specifications.
3. **Suppliers** – Supplier details.
4. **Inventory** – Stock and warehouse locations.
5. **Price\_History** – Price change records.

## 🔗 Relationships

**User-Centric:**

* One **User** → Many **Orders**
* One **Order** → Many **Order\_Items**
* One **Product** → Many **Inventory** records
* One **Category** → Many **Products**
* One **Supplier** → Many **Products**

**Product-Centric:**

* One **Category** → Many **Products**
* One **Supplier** → Many **Products**
* One **Product** → Many **Inventory** records
* One **Product** → Many **Price\_History** entries

## 🎯 Purpose

Portfolio project demonstrating:

* Relational database design from multiple perspectives
* Normalization practices
* Use of foreign keys for relationships
