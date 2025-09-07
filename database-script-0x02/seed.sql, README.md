-- =======================
-- Users
-- =======================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hash_pw1', '+254700111111', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hash_pw2', '+254700222222', 'host'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Nguyen', 'carol@example.com', 'hash_pw3', '+254700333333', 'host'),
('44444444-4444-4444-4444-444444444444', 'David', 'Brown', 'david@example.com', 'hash_pw4', '+254700444444', 'admin');

-- =======================
-- Properties
-- =======================
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Beachfront Villa', 'A luxury villa by the ocean', 'Mombasa, Kenya', 120.00),
('bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '33333333-3333-3333-3333-333333333333', 'City Apartment', 'Modern apartment in the city center', 'Nairobi, Kenya', 75.00),
('cccc3333-cccc-cccc-cccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Cozy cabin with mountain views', 'Mt. Kenya, Kenya', 95.00);

-- =======================
-- Bookings
-- =======================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, status)
VALUES
('dddd1111-dddd-dddd-dddd-dddddddddddd', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-09-10', '2025-09-15', 'confirmed'),
('eeee2222-eeee-eeee-eeee-eeeeeeeeeeee', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', '2025-10-01', '2025-10-05', 'pending');

-- =======================
-- Payments
-- =======================
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('pppp1111-pppp-pppp-pppp-pppppppppppp', 'dddd1111-dddd-dddd-dddd-dddddddddddd', 600.00, 'credit_card');

-- =======================
-- Reviews
-- =======================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('rrrr1111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Beautiful view and very comfortable.'),
('rrrr2222-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 4, 'Great location, but a bit noisy at night.');

-- =======================
-- Messages
-- =======================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('mmmm1111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hello Bob, I am interested in booking your villa.'),
('mmmm2222-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, thank you for your interest! The villa is available.');

