# User Management & Authentication Module

This module is responsible for designing and implementing the **user management system** of the FlavorFleet platform.

---

## Responsibilities

- User account management
- Role-based access control (RBAC)
- Authentication data storage
- Managing multiple user addresses

---

## Core Tables

Users

Stores all system users including customers, couriers, and administrators.

Attributes include:

- id
- email
- password_hash
- full_name
- phone
- role_id

---

Roles

Defines system roles and access levels.

Example roles:

- Admin
- Customer
- Courier

---

UserAddresses

Allows users to store multiple delivery addresses.

Relationship:

User → One-to-Many → UserAddresses

---

## Database Concepts Used

- One-to-Many relationships
- Foreign key constraints
- Data validation
- Secure credential storage

---

This module acts as the **entry point of the system**, ensuring secure user identification and role management.
