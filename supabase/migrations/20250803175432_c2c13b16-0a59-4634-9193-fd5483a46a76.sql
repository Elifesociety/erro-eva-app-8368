-- Create new super admin user 'anas' with password '123'
-- Using bcrypt hash for password '123' with salt rounds 10
INSERT INTO admin_users (username, password_hash, role, is_active)
VALUES ('anas', '$2a$10$N9qo8uLOickgx2ZMRZoMye.Fq4j766St8/gbHWKgqnBqvU1TuNKtC', 'super_admin', true);