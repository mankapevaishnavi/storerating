CREATE DATABASE IF NOT EXIST rating_app;
USE rating_app;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(60) NOT NULL,
    adress VARCHAR(400),
    role ENUM('admin','user','owner') DEFAULT'user'
);

CRETAT TABLE stores (
    id INT AUTO_INCREMENT PRIMERY KEY,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(255),
    adress VARCHAR(400),
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES user(id)
;)

CREATE TABLE rating (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    store_id INT,
    rating TINYINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCESusers(id),
    FOREIGN KEY (store_id) REFERENCES stores(id)
);