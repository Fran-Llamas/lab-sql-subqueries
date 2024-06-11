CREATE TABLE cars (
    VIN VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(40),
    model VARCHAR(40),
    year INT,
    color VARCHAR(20)
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    phone_number VARCHAR(40),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state_province VARCHAR(40),
    country VARCHAR(20),
    zip_postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    store VARCHAR(40)
);

CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    VIN VARCHAR(40),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);