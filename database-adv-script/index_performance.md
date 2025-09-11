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
