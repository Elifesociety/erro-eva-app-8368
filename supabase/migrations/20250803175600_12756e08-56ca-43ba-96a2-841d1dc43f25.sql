-- Update password for existing super admin user 'anas' to '123'
-- Using bcrypt hash for password '123' with salt rounds 10
UPDATE admin_users 
SET password_hash = '$2a$10$N9qo8uLOickgx2ZMRZoMye.Fq4j766St8/gbHWKgqnBqvU1TuNKtC', 
    updated_at = now()
WHERE username = 'anas';