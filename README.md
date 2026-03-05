# Order Engine & Transaction Module

This module handles the core transactional logic of the FlavorFleet system.

---

## Responsibilities

- Order creation
- Cart checkout process
- Order status tracking
- Order history storage

---

## Core Tables

Orders

Stores order information.

Attributes include:

- id
- customer_id
- restaurant_id
- courier_id
- total_price
- status
- order_date

---

OrderDetails

Bridge table connecting Orders and Products.

This table resolves the **Many-to-Many relationship** between:

Orders ↔ Products

---

## Database Relationships

Customer → One-to-Many → Orders  
Orders → Many-to-Many → Products

---

This module acts as the **transaction engine of the platform**.
