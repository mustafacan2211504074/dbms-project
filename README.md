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

### Roles

Stores system roles:

* Admin
* Customer
* Courier
* Vendor

---

### Users

Stores all system users.

Attributes:

* user_id
* email
* password_hash
* full_name
* phone
* role_id

---

### UserAddresses

Stores multiple delivery addresses per user.

Relationship:

Users (1) → (N) UserAddresses

---

## Relationships

Roles (1) → (N) Users
Users (1) → (N) UserAddresses

---

This module provides secure authentication and role management for The Flower Hub system.
