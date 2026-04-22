# Order Engine & Transaction Module

### The Flower Hub Database Project

This module manages order processing and transactions.

---

## Responsibilities

* Order creation
* Checkout flow
* Transaction logic
* Order tracking

---

## Tables Implemented

### Orders

Attributes:

* order_id
* customer_id
* shop_id
* courier_id
* total_price
* status
* order_date

---

### OrderDetails

Bridge table between Orders and Products.

Attributes:

* order_detail_id
* order_id
* product_id
* quantity
* unit_price

---

## Relationships

Users (1) → (N) Orders
Orders (N) ↔ (N) Products

---

This module handles core order processing.
