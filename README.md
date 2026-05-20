# User Management & Authentication Module

### The Flower Hub Database Project

This module is responsible for managing users and authentication for The Flower Hub system.

---

## Responsibilities

* User registration
* Role-based access control (RBAC)
* Authentication data storage
* Multiple user addresses

---

## Tables Implemented

### Role

Stores system roles:

* role_id
* role_name

---

### Users

Stores all system users.

Attributes:

* user_id
* email
* password_hash
* full_name
* phone

---

### UserAddresses

Stores multiple delivery addresses per user.

* address_id
* user_id
* location




## Relationships

* User (N) → (1) Roles
* UserAddresses (0..N) → (1) User

---

This module provides secure authentication and role management for The Flower Hub system.
