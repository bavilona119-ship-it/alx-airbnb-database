# Query Optimization Report

## 1. Initial Query

The first query retrieved **all details** of bookings, users, properties, and payments.

```sql
SELECT b.booking_id, b.start_date, b.end_date, b.total_price,
       u.user_id, u.first_name, u.last_name, u.email,
       p.property_id, p.name, p.location,
       pay.payment_id, pay.amount, pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
