CREATE TABLE UserAddresses (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    address_line VARCHAR(255) NOT NULL,
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),
    
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
