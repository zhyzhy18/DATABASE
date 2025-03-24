CREATE TABLE  students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    birthdate DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mobile_number VARCHAR(15) UNIQUE NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    course VARCHAR(50) NOT NULL,
    year_level INT CHECK (year_level BETWEEN 1 AND 6),
    password VARCHAR(255) NOT NULL
);

INSERT INTO students (student_id, first_name, middle_name, last_name, birthdate, gender, email, mobile_number, street_address, city, state, zip_code, course, year_level, password)
VALUES (1, 'John', 'A.', 'Doe', '2002-05-15', 'Male', 'john.doe@example.com', '09123456789', '123 Street', 'Metro City', 'Metro State', '1000', 'BSIT', 2, 'hashed_password_here');


SELECT 
    gender
FROM
    students;
    
    
    