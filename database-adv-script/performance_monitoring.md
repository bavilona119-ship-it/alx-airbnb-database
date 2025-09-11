# Database Performance Monitoring and Refinement

This report documents how we monitored query performance, identified bottlenecks, and applied schema optimizations to improve efficiency.

---

## 1. Monitoring Queries

We used `EXPLAIN ANALYZE` (PostgreSQL) and `SHOW PROFILE` (MySQL) to monitor execution plans of common queries.

### Example 1: User login by email
```sql
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'alice@example.com';
