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

Order (N) → (0..1) Coupon
Orders (1) ↔ (0..1) Review
Order_Details (N) → (1) Order
Order (N) → (1) User
Order (N) → (1) User
Order (N) → (1) Shop
---

This module handles core order processing.
