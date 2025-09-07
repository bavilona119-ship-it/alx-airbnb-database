
# Database Normalization – Airbnb Database

## Objective
To ensure the Airbnb database schema follows **Third Normal Form (3NF)** principles, reducing redundancy and ensuring data integrity.

---

## Step 1: First Normal Form (1NF)
- All attributes are atomic.
- No repeating groups or multi-valued attributes.
- ✅ The schema is in 1NF.

---

## Step 2: Second Normal Form (2NF)
- All tables use single-column primary keys (UUIDs).
- No partial dependencies exist.
- ✅ The schema is in 2NF.

---

## Step 3: Third Normal Form (3NF)
- All non-key attributes must depend only on the primary key (no transitive dependencies).

### Findings:
1. **User Table**  
   - `role` as ENUM is acceptable, but for extensibility, a separate `Role` table is recommended.  
   - No transitive dependencies.  
   - ✅ In 3NF.

2. **Property Table**  
   - `location` is stored as a single field. For advanced queries, splitting into an `Address` table is recommended.  
   - ✅ In 3NF.

3. **Booking Table**  
   - `total_price` is a derived attribute (`price_per_night × number_of_nights`).  
   - ⚠️ To achieve 3NF, remove `total_price` from storage and compute it dynamically.  
   - After adjustment: ✅ In 3NF.

4. **Payment Table**  
   - Fully dependent on `payment_id`.  
   - ✅ In 3NF.

5. **Review Table**  
   - Fully dependent on `review_id`.  
   - ✅ In 3NF.

6. **Message Table**  
   - Fully dependent on `message_id`.  
   - ✅ In 3NF.

---

## Final Adjustments
1. Remove **derived attribute** `total_price` from Booking.  
2. Optionally normalize `role` into a separate **Role** table.  
3. Optionally normalize `location` into a structured **Address** table.

---

## Conclusion
After these refinements, the Airbnb database design satisfies **Third Normal Form (3NF)**. This ensures minimal redundancy, avoids anomalies, and maintains flexibility for future scalability.
