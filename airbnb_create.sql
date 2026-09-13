

DROP TABLE IF EXISTS location;
CREATE TABLE location (
	location_id INT AUTO_INCREMENT,
	location_name VARCHAR (255),
	street VARCHAR (255),
	house_number VARCHAR (50),
	postal_code CHAR (5),
	city VARCHAR (255),
	state_province VARCHAR (255),
    country_name VARCHAR (255),
	PRIMARY KEY (location_id)
);

DROP TABLE IF EXISTS airbnb_user;
CREATE TABLE airbnb_user (
	user_id INT AUTO_INCREMENT,
	first_name VARCHAR (255),
	last_name VARCHAR (255),
	user_password VARCHAR (20),
	date_of_creation DATE,
	birthdate DATE,
	gender VARCHAR (50),
	image_url BLOB,
	PRIMARY KEY (user_id)
	);
DROP TABLE IF EXISTS accommodation;
CREATE TABLE accommodation (
	acc_id INT AUTO_INCREMENT,
	location_id INT,
	user_id INT,
	acc_type VARCHAR (50),
	acc_name VARCHAR (255),
	acc_description TEXT,
    price_p_night FLOAT,
	service_fee FLOAT,
	cleaning_fee FLOAT,
	PRIMARY KEY (acc_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id)
);
DROP TABLE IF EXISTS acc_dimensions;
CREATE TABLE acc_dimensions (
	acc_id INT,
	max_guests INT,
	n_bedrooms INT,
	n_bathrooms INT,
	n_beds INT,
	size VARCHAR (255),
	PRIMARY KEY (acc_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id)
);

DROP TABLE IF EXISTS user_contact;
CREATE TABLE user_contact (
	user_id INT,
	email VARCHAR (255),
	phone VARCHAR (255),
	PRIMARY KEY (user_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id)
);
DROP TABLE IF EXISTS booking;
CREATE TABLE booking (
	booking_id INT AUTO_INCREMENT,
	user_id INT,
	acc_id INT,
	check_in_date DATE,
	check_out_date DATE,
	n_nights INT GENERATED ALWAYS AS (DATEDIFF(check_out_date, check_in_date)) STORED,
	n_guests INT,
	booking_status VARCHAR (50),
	booking_timestamp TIMESTAMP,
	total_price FLOAT,
	PRIMARY KEY (booking_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id),
	CHECK (check_in_date < check_out_date)
);

DROP TABLE IF EXISTS airbnb_host;
CREATE TABLE airbnb_host (
	user_id INT,
	acc_id INT,
	host_since DATE,
	host_type VARCHAR (50),
	PRIMARY KEY (user_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id)
);
DROP TABLE IF EXISTS review;
CREATE TABLE review (
	review_id INT AUTO_INCREMENT,
	title VARCHAR (255),
	rating_stars CHAR(1),
	review_text TEXT,
	review_timestamp TIMESTAMP,
	PRIMARY KEY (review_id)
);
DROP TABLE IF EXISTS review_value;
CREATE TABLE review_value (
	value_id INT AUTO_INCREMENT,
	cleanliness DECIMAL(2,1),
	accuracy DECIMAL(2,1),
	check_in DECIMAL(2,1),
	communication DECIMAL(2,1),
	location DECIMAL(2,1),
	general_value DECIMAL(2,1),
	PRIMARY KEY (value_id)
);
DROP TABLE IF EXISTS payment;
CREATE TABLE payment (
	payment_id INT AUTO_INCREMENT,
	booking_id INT,
    user_id INT,
	credit_card_name VARCHAR (255),
	payment_timestamp TIMESTAMP,
	total_value FLOAT,
	payment_status VARCHAR (50),
	currency VARCHAR (50),
	PRIMARY KEY (payment_id),
	FOREIGN KEY (booking_id) REFERENCES booking (booking_id),
    FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id)
);

DROP TABLE IF EXISTS host_language;
CREATE TABLE host_language (
	language_id INT AUTO_INCREMENT,
	language_name VARCHAR (255),
	PRIMARY KEY (language_id)
);

DROP TABLE IF EXISTS acc_category;
CREATE TABLE acc_category (
	acc_category_id INT AUTO_INCREMENT,
	category_name VARCHAR (255),
	PRIMARY KEY (acc_category_id)
);
DROP TABLE IF EXISTS amenity;
CREATE TABLE amenity (
	amenity_id INT AUTO_INCREMENT,
	amenity_name VARCHAR (255),
	PRIMARY KEY (amenity_id)
);
DROP TABLE IF EXISTS region;
CREATE TABLE region (
	region_id INT AUTO_INCREMENT,
	region_name VARCHAR (255),
	PRIMARY KEY (region_id)
);
DROP TABLE IF EXISTS message;
CREATE TABLE message (
	message_id INT AUTO_INCREMENT,
	user_id INT,
    host_id INT,
	acc_id INT,
	msg_text TEXT,
	msg_timestamp TIMESTAMP,
	PRIMARY KEY (message_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id),
    FOREIGN KEY (host_id) REFERENCES airbnb_host (user_id)
);
DROP TABLE IF EXISTS amenity_relation;
CREATE TABLE amenity_relation (
	amenity_id INT,
	acc_id INT,
	PRIMARY KEY (amenity_id, acc_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id),
	FOREIGN KEY (amenity_id) REFERENCES amenity (amenity_id)
);
DROP TABLE IF EXISTS category_relation;
CREATE TABLE category_relation (
	acc_category_id INT,
	acc_id INT,
	PRIMARY KEY (acc_category_id, acc_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id),
	FOREIGN KEY (acc_category_id) REFERENCES acc_category (acc_category_id)
);
DROP TABLE IF EXISTS region_relation;
	CREATE TABLE region_relation (
	region_id INT,
	location_id INT,
	PRIMARY KEY (region_id, location_id),
	FOREIGN KEY (region_id) REFERENCES region (region_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id)
);
DROP TABLE IF EXISTS host_language_relation;
CREATE TABLE host_language_relation (
	language_id INT,
	user_id INT,
	PRIMARY KEY (language_id, user_id),
	FOREIGN KEY (language_id) REFERENCES host_language (language_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_host (user_id)
);
DROP TABLE IF EXISTS review_relation;
CREATE TABLE review_relation (
	review_id INT,
	value_id INT,
	PRIMARY KEY (review_id, value_id),
	FOREIGN KEY (review_id) REFERENCES review (review_id),
	FOREIGN KEY (value_id) REFERENCES review_value (value_id)
);
DROP TABLE IF EXISTS acc_review;
CREATE TABLE acc_review (
	booking_id INT,
	review_id INT,
	PRIMARY KEY (booking_id, review_id),
	FOREIGN KEY (booking_id) REFERENCES booking (booking_id),
	FOREIGN KEY (review_id) REFERENCES review (review_id)
);
DROP TABLE IF EXISTS user_review;
CREATE TABLE user_review (
	user_id INT,
	acc_id INT,
	review_id INT,
    review_timestamp TIMESTAMP,
	PRIMARY KEY (acc_id, user_id, review_id, review_timestamp),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id),
	FOREIGN KEY (review_id) REFERENCES review (review_id)
);

DROP TABLE IF EXISTS wishlist;
CREATE TABLE wishlist (
	user_id INT,
	acc_id INT,
	PRIMARY KEY (user_id, acc_id),
	FOREIGN KEY (user_id) REFERENCES airbnb_user (user_id),
	FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id)
);
DROP TABLE IF EXISTS acc_picture;
CREATE TABLE acc_picture (
	pic_id INT AUTO_INCREMENT,
	acc_id INT,
	pic_url BLOB,
	PRIMARY KEY (pic_id),
    FOREIGN KEY (acc_id) REFERENCES accommodation (acc_id)
);
