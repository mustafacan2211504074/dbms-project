-- ==========================================
-- 1. ROLES, USERS, AND PROFILE TABLES
-- ==========================================

CREATE TABLE Role (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(100) NOT NULL
);

CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE UserAddress (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    location VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);

-- Many-to-Many relationship table for User and Role (Has)
CREATE TABLE User_Has_Role (
    user_id INT,
    role_id INT,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES Role(role_id) ON DELETE CASCADE
);


-- ==========================================
-- 2. SHOP & CATALOG ARCHITECT TABLES (Leen's Core Focus)
-- ==========================================

-- Shop table (Updated: id changed to shop_id, owner_id removed per the diagram)
CREATE TABLE Shop (
    shop_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    is_active BOOLEAN DEFAULT TRUE
);

-- Category table (Updated: fields renamed to category_id and category_name, self-referencing hierarchy removed)
CREATE TABLE Category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

-- OpeningHours table (Updated: id changed to hour_id, schedules simplified to time_details)
CREATE TABLE OpeningHours (
    hour_id INT PRIMARY KEY AUTO_INCREMENT,
    shop_id INT,
    time_details VARCHAR(255),
    FOREIGN KEY (shop_id) REFERENCES Shop(shop_id) ON DELETE CASCADE
);


-- ==========================================
-- 3. PRODUCTS, INVENTORY, AND COUPONS TABLES
-- ==========================================

CREATE TABLE Coupon (
    coupon_id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(50) UNIQUE NOT NULL,
    discount_percent DECIMAL(5,2) CHECK (discount_percent BETWEEN 0 AND 100),
    expiry_date DATE
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    stock_quantity INT DEFAULT 0,
    category_id INT,
    shop_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id) ON DELETE SET NULL,
    FOREIGN KEY (shop_id) REFERENCES Shop(shop_id) ON DELETE CASCADE
);

CREATE TABLE InventoryLog (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    change_amount INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE
);


-- ==========================================
-- 4. ORDERS AND REVIEWS TABLES
-- ==========================================

CREATE TABLE `Order` (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10,2) NOT NULL,
    customer_id INT,
    courier_id INT,
    shop_id INT,
    coupon_id INT,
    FOREIGN KEY (customer_id) REFERENCES User(user_id),
    FOREIGN KEY (courier_id) REFERENCES User(user_id),
    FOREIGN KEY (shop_id) REFERENCES Shop(shop_id),
    FOREIGN KEY (coupon_id) REFERENCES Coupon(coupon_id) ON DELETE SET NULL
);

CREATE TABLE OrderDetails (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Review (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id) ON DELETE CASCADE
);


-- ==========================================
-- 5. NEW SAMPLE DATA INSERTIONS (DML)
-- ==========================================

-- Insert a test user
INSERT INTO User (email, password_hash, full_name, phone)
VALUES ('leen@example.com', 'secure_hashed_password', 'Leen', '+966500000000');

-- Insert a shop (using the updated schema without owner_id)
INSERT INTO Shop (name, address, rating, is_active)
VALUES ('Rose Garden', 'Istanbul, Turkey', 4.5, TRUE);

-- Insert a product category (using category_name)
INSERT INTO Category (category_name)
VALUES ('Roses');

-- Insert opening hours (using the new time_details text field)
INSERT INTO OpeningHours (shop_id, time_details)
VALUES (1, 'Monday - Friday: 09:00 AM - 06:00 PM');

-- Insert a dummy product linking your newly updated Category and Shop
INSERT INTO Product (name, price, description, stock_quantity, category_id, shop_id)
VALUES ('Red Rose Bouquet', 45.00, 'Fresh red roses bouquet', 20, 1, 1);
