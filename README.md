# IAApp — Inventory Management System (Java + MySQL)

Desktop app built in Java (NetBeans) with MySQL.

## Features
- Employees, Customers, Orders, Reorders
- Inventory tracking (low/out-of-stock), search & view
- Login & Change Password

## Tech
Java (Swing) · MySQL · JDBC  
Build: Ant (NetBeans)

## Database
Database name: `ia`  
Import schema:
```bash
mysql -u root -p ia < db/schema.sql
# Optional demo data:
# mysql -u root -p ia < db/sample-data.sql
