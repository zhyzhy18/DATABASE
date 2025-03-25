create database studentportal;

use studentportal;
create table student (
	student_id int primary key not null unique,
	first_name varchar(50) not null,
	middle_name varchar(50),
	last_name varchar(50) not null,
	birthdate date not null,
	gender ENUM('male', 'female', 'other') not null,
	email varchar(50) not null unique,
	mobile_number varchar(11) not null unique,
	street_address varchar(255) not null,
	city varchar(20) not null,
	state varchar(20) not null,
	zip_code varchar(7) not null,
	course varchar(10) not null,
	year_level int not null,
	password varchar(255) not null
);


insert into student (student_id, first_name, middle_name, last_name, birthdate, gender, email, mobile_number, street_address, city, state, zip_code, course, year_level, password)
values (20251234, "john", "doe", "bong", "2024-12-12", "male", "myname@example.com", "0912345779", "Peke Street", "Malabon", "Manila", "1234", "BSIS", 4, "Qwerty12345");

select * from student;