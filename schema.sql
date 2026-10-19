CREATE DATABASE safiri_kenya;
USE safiri_kenya;
CREATE TABLE companies (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), county VARCHAR(50), phone VARCHAR(20), commission_rate DECIMAL(4,2) DEFAULT 10, status VARCHAR(20) DEFAULT 'active');
CREATE TABLE routes (id INT AUTO_INCREMENT PRIMARY KEY, company_id INT, from_town VARCHAR(100), to_town VARCHAR(100), price DECIMAL(10,2), duration VARCHAR(20));
CREATE TABLE bookings (id INT AUTO_INCREMENT PRIMARY KEY, booking_code VARCHAR(20) UNIQUE, passenger_name VARCHAR(100), passenger_phone VARCHAR(20), seat_no VARCHAR(10), amount DECIMAL(10,2), commission_amount DECIMAL(10,2), company_amount DECIMAL(10,2), payment_status VARCHAR(20) DEFAULT 'paid', created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
INSERT INTO companies VALUES (1,'West Kenya Shuttle','Kakamega','0712000000',10,'active');
INSERT INTO routes VALUES (1,1,'Kakamega','Nairobi',1500,'7hrs'), (2,1,'Mumias','Nairobi',1700,'8hrs'), (3,1,'Kakamega','Kisumu',400,'1.5hrs');
