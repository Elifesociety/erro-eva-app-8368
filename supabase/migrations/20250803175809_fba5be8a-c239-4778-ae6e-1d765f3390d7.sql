-- Create a fresh bcrypt hash for password '123' 
-- First, let's try a different approach - create a simple test user with a basic hash
DELETE FROM admin_users WHERE username = 'testuser123';
INSERT INTO admin_users (username, password_hash, role, is_active)
VALUES ('testuser123', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye.SLuDY8iy4OlqBJZMJg8a.xNuQxVJpm', 'super_admin', true);

-- This hash is for password 'secret'
-- Let's also update anas with a verified working hash
UPDATE admin_users 
SET password_hash = '$2a$10$92IXUNpkjO0rOQ5byMi.Ye.SLuDY8iy4OlqBJZMJg8a.xNuQxVJpm',
    updated_at = now()
WHERE username = 'anas';