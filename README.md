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

* hour_id
* shop_id
* time_details

---

## Relationships

OpeningHours (N) → (1) Shop

---

This module manages vendors and catalog structure in The Flower Hub system.
