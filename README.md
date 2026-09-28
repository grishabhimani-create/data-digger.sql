# 🔍 Data Digger - MySQL Database Project

## 📌 Project Overview
**Data Digger** is a practical SQL project designed to provide hands-on experience in managing a MySQL database using CRUD operations, clauses, operators, aggregate functions, primary keys, and foreign keys. 

This project simulates an **E-Commerce Store** database to gain deeper insights into SQL query execution, data relationships, and data manipulation.

---

## 🎯 Objectives & Scope
The project focuses on building and managing four core relational tables:
1. **Customers Table** - Stores customer profile information.
2. **Orders Table** - Manages purchase records linked to customers.
3. **Products Table** - Tracks inventory details and product pricing.
4. **OrderDetails Table** - Links products to specific orders, tracking line items.

---

## 🗄️ Database Schema & Fields

### 1. `Customers` Table
- `CustomerID` (Primary Key)
- `Name`
- `Email`
- `Address`

### 2. `Orders` Table
- `OrderID` (Primary Key)
- `CustomerID` (Foreign Key referencing `Customers.CustomerID`)
- `OrderDate`
- `TotalAmount`

### 3. `Products` Table
- `ProductID` (Primary Key)
- `ProductName`
- `Price`
- `Stock`

### 4. `OrderDetails` Table
- `OrderDetailID` (Primary Key)
- `OrderID` (Foreign Key referencing `Orders.OrderID`)
- `ProductID` (Foreign Key referencing `Products.ProductID`)
- `Quantity`
- `SubTotal`

---

## 💻 Queries & Tasks Performed

### 👤 1. Customers Table Operations
- [x] **Insert Data:** Inserted at least 5 sample records into the `Customers` table.
- [x] **Retrieve Data:** Retrieved all customer details.
- [x] **Update Record:** Updated a customer's address.
- [x] **Delete Record:** Deleted a customer record using their `CustomerID`.
- [x] **Filtered Search:** Displayed all customers whose name is `'Alice'`.

### 🛒 2. Orders Table Operations
- [x] **Insert Data:** Inserted at least 5 sample orders into the `Orders` table.
- [x] **Retrieve Customer Orders:** Retrieved all orders made by a specific customer.
- [x] **Update Amount:** Updated an order's total amount.
- [x] **Delete Order:** Deleted an order using its `OrderID`.
- [x] **Date Filter:** Retrieved orders placed in the last 30 days.
- [x] **Aggregate Analysis:** Calculated the highest, lowest, and average order amounts using `MAX()`, `MIN()`, and `AVG()`.

### 📦 3. Products Table Operations
- [x] **Insert Data:** Inserted at least 5 sample products into the `Products` table.
- [x] **Sorted Retrieval:** Retrieved all products sorted by price in descending order (`ORDER BY Price DESC`).
- [x] **Update Price:** Updated the price of a specific product.
- [x] **Inventory Clean-up:** Deleted a product if it was out of stock (`Stock = 0`).
- [x] **Range Filter:** Retrieved products whose price is between ₹500 and ₹2000 (`BETWEEN 500 AND 2000`).
- [x] **Extreme Values:** Found the most expensive and cheapest products using `MAX()` and `MIN()`.

### 📑 4. OrderDetails Table Operations
- [x] **Insert Data:** Inserted at least 5 sample records into the `OrderDetails` table.
- [x] **Specific Order Details:** Retrieved all line items for a specific order.
- [x] **Total Revenue:** Calculated total revenue generated from all orders using `SUM()`.
- [x] **Top Selling Products:** Retrieved the top 3 most ordered products (`LIMIT 3`).
- [x] **Product Sales Count:** Counted how many times a specific product has been sold using `COUNT()`.

---

## 🛠️ How to Run the Project
1. Open MySQL Workbench or your preferred MySQL terminal.
2. Clone this repository:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/DATA-DIGGER.git](https://github.com/YOUR_USERNAME/DATA-DIGGER.git)
