-- =====================================
-- Indexes for the Airbnb Database
-- =====================================

-- User table: email is often used for login lookups
CREATE INDEX idx_users_email ON users(email);

-- Booking table: foreign keys used frequently in JOINs
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Property table: location and pricepernight used in searches and filters
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(pricepernight);

-- Reviews table: property_id is used to calculate average ratings
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- =====================================
-- Performance Measurements
-- Run queries with EXPLAIN ANALYZE to compare before/after indexes
-- =====================================

-- Query 1: Lookup user by email
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'alice@example.com';

-- Query 2: Join bookings with users
EXPLAIN ANALYZE
SELECT u.first_name, u.last_name, b.start_date, b.end_date
FROM users u
JOIN bookings b ON u.user_id = b.user_id;

-- Query 3: Filter properties by location
EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Paris';

-- Query 4: Calculate average rating per property
EXPLAIN ANALYZE
SELECT property_id, AVG(rating)
FROM reviews
GROUP BY property_id;
