-- NYAY-KAVACH DATABASE SCHEMA (UP POLICE PORTAL)

CREATE TABLE officers (
    officer_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    rank VARCHAR(50),
    badge_number VARCHAR(20) UNIQUE
);

CREATE TABLE crime_records (
    case_id INT PRIMARY KEY AUTO_INCREMENT,
    fir_number VARCHAR(50) UNIQUE NOT NULL,
    section_code VARCHAR(50),
    description TEXT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Pending'
);
