# Feedback & Promotion Module

### The Flower Hub Database Project

This module manages reviews, coupons, and payments.

---

## Responsibilities

* Customer reviews
* Rating system
* Coupon validation
* Payment logs

---

## Tables Implemented

### Reviews

Attributes:

* review_id
* order_id
* customer_id
* rating
* comment
* created_at

---

### Coupons

Attributes:

* code
* discount_percent
* expiry_date

---

### Payments

Attributes:

* transaction_id
* payment_method
* status

---

## Relationships

Orders (1) → (N) Reviews

---

This module handles feedback and promotion logic.
