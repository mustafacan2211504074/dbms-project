# Product & Inventory Module

### The Flower Hub Database Project

This module manages products and inventory tracking.

---

## Responsibilities

* Product management
* Price handling
* Stock tracking
* Inventory logging

---

## Tables Implemented

### Product

Attributes:

* product_id
* name
* price
* stock_quantity
* description

---

### ProductExtras

Optional add-ons:

* Gift notes
* Extra wrapping
* Custom messages

---

### InventoryLogs

Tracks stock movements.

* log_id
* product_id
* change_amount
* timestamp

---

## Relationships

* Products (N) → (1) Shops 
* Products (N) → (N) InventoryLogs

---

This module handles product and inventory logic.
