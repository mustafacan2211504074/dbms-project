# Shop & Catalog Management Module

### The Flower Hub Database Project

This module manages vendor shops and catalog structure for The Flower Hub system.

---

## Responsibilities

* Shop onboarding
* Shop profile management
* Category hierarchy
* Opening hours management

---

## Tables Implemented

### Shops

Stores vendor shop information.

Attributes:

* shop_id
* name
* address
* rating
* owner_id
* is_active

---

### Categories

Defines product categories:

* Flowers
* Bouquets
* Gifts
* Special Occasions

---

### OpeningHours

Stores shop operating hours.

---

## Relationships

Shops (1) → (N) Products
Shops (1) → (N) OpeningHours

---

This module manages vendors and catalog structure in The Flower Hub system.
