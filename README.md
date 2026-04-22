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

### Products

Attributes:

* product_id
* shop_id
* category_id
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

---

## Relationships

Shops (1) → (N) Products
Products (1) → (N) InventoryLogs

---

This module handles product and inventory logic.
