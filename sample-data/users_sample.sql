INSERT INTO Roles (role_name) VALUES
('Admin'),
('Customer'),
('Courier');


INSERT INTO Users (email, password_hash, full_name, phone, role_id) VALUES
('admin@flavorfleet.com', 'hashedpassword1', 'System Admin', '5551112233', 1),
('customer1@mail.com', 'hashedpassword2', 'Mustafa Can', '5552223344', 2),
('courier1@mail.com', 'hashedpassword3', 'Melih Uzun', '5553334455', 3);
