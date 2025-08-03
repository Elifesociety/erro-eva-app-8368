-- Create a new admin user with a simple password for testing
-- We'll use a known good bcrypt hash for password '123'
DELETE FROM admin_users WHERE username = 'admin123';
INSERT INTO admin_users (username, password_hash, role, is_active)
VALUES ('admin123', '$2a$10$UVRyjnFV3qbFQQ8uJMZOzODcQrQv4mBCnrOG78EGpKRQ8Lx/Jn/FG', 'super_admin', true);