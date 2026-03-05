# Feedback, Promotions & Payment Module

This module handles customer feedback, promotional systems, and payment tracking.

---

## Responsibilities

- Customer reviews
- Restaurant rating system
- Coupon validation
- Payment transaction logging

---

## Core Tables

Reviews

Stores customer feedback for completed orders.

Attributes include:

- id
- order_id
- customer_id
- rating
- comment
- created_at

---

Coupons

Stores promotional discount codes.

Attributes include:

- code
- discount_percent
- expiry_date

---

Payments

Tracks payment transactions.

Attributes include:

- transaction_id
- payment_method
- payment_status

---

## Database Logic

Stored procedures may be used for:

- Coupon validation
- Discount application
- Payment verification

---

This module improves customer engagement and loyalty within the system.
