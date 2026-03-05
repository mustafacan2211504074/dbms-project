# Restaurant & Catalog Management Module

This module manages restaurant onboarding and menu categorization within the FlavorFleet system.

---

## Responsibilities

- Restaurant profile management
- Food category organization
- Restaurant availability tracking
- Operating hours management

---

## Core Tables

Restaurants

Stores all restaurants registered in the system.

Attributes include:

- id
- name
- address
- rating
- owner_id
- is_active

---

Categories

Defines food categories such as:

- Pizza
- Burgers
- Desserts
- Drinks

---

OpeningHours

Stores restaurant operating schedules.

Example:

- Monday – 09:00 to 22:00
- Tuesday – 09:00 to 22:00

---

## Relationships

Restaurant → One-to-Many → Products  
Restaurant → One-to-Many → OpeningHours

---

This module ensures restaurants can properly organize and manage their menu structures.
