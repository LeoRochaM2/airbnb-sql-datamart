SET SQL_SAFE_UPDATES = 0;

DELETE FROM location;
INSERT INTO location ( location_name, street, house_number, postal_code, city, state_province, country_name)
VALUES
		('Westminster', 'Abbey Road', '123', 'SW1A0', 'London', 'Greater London', 'United Kingdom'),
		('Neukölln', 'Karl-Marx-Strasse', '456', '10115', 'Berlin', 'Berlin', 'Germany'),
		('Chueca', 'Calle Fuencarral', '789', '28001', 'Madrid', 'Community of Madrid', 'Spain'),
		('Bairro Alto', 'Rua da Rosa', '101', '10001', 'Lisbon', 'Lisbon', 'Portugal'),
		('Montmartre', 'Rue des Abbesses', '202', '75001', 'Paris', 'Île-de-France', 'France'),
		('Trastevere', 'Via della Lungara', '303', '00100', 'Rome', 'Lazio', 'Italy'),
		('Innere Stadt', 'Graben', '404', '10100', 'Vienna', 'Vienna', 'Austria'),
		('Old Town', 'Kramgasse', '505', '30000', 'Bern', 'Bern', 'Switzerland'),
		('Ixelles', 'Avenue Louise', '606', '10000', 'Brussels', 'Brussels', 'Belgium'),
		('Grund', 'Rue Munster', '707', 'L1000', 'Luxembourg City', 'Luxembourg', 'Luxembourg' ),
		('Jordaan', 'Prinsengracht', '808', '1000B', 'Amsterdam', 'North Holland', 'Netherlands'),
		('Nørrebro', 'Elmegade', '909', '10000', 'Copenhagen', 'Capital Region', 'Denmark'),
		('Grünerløkka', 'Thorvald Meyers Gate', '10010', '0101', 'Oslo', 'Oslo', 'Norway'),
		('Södermalm', 'Hornsgatan', '1111', '10000', 'Stockholm', 'Stockholm', 'Sweden'),
		('Kallio', 'Helsinginkatu', '1212', '00100', 'Helsinki', 'Uusimaa', 'Finland'),
		('Laugardalur', 'Sundlaugarvegur', '13130', '101', 'Reykjavik', 'Capital Region', 'Iceland'),
		('Valletta Waterfront', 'Old Bakery Street', '14014', 'VLT', 'Valletta', 'South Eastern Region', 'Malta'),
		('Praga', 'Targowa', '1515', '10001', 'Warsaw', 'Masovian Voivodeship', 'Poland'),
		('Monte Carlo', 'Avenue des Spélugues', '16216', '98000', 'Monaco', 'Monaco', 'Monaco'),
		('Plaka', 'Kydathineon', '1717', 'GR100', 'Athens', 'Attica', 'Greece');
 
DELETE FROM airbnb_user; 
INSERT INTO airbnb_user (first_name, last_name, user_password, date_of_creation, birthdate, gender, image_url)
VALUES
		('John', 'Smith', 'password123', '2022-02-01', '1990-05-15', 'Male', NULL),
		('Emma', 'Jones', 'securepass', '2022-02-02', '1985-09-22', 'Female', NULL),
		('Luca', 'Müller', 'myp@ssw0rd', '2022-02-03', '1988-12-10', 'Male', NULL),
		('Isabella', 'Silva', 'airbnb2022', '2022-02-04', '1992-03-07', 'Female', NULL),
		('Antoine', 'Martin', 'traveler', '2022-02-05', '1987-06-18', 'Male', NULL),
		('Sophie', 'Dupont', 'pass1234', '2022-02-06', '1983-11-25', 'Female', NULL),
		('Mario', 'Rossi', 'letsgo!', '2022-02-07', '1989-08-14', 'Male', NULL),
		('Luis', 'González', 'vacation21', '2022-02-08', '1995-01-29', 'Male', NULL),
		('Elena', 'Fernández', 'sunshine', '2022-02-09', '1993-04-03', 'Female', NULL),
		('Tom', 'Johnson', 'explore12', '2022-02-10', '1986-07-12', 'Male', NULL),
		('Sophia', 'Van den Berg', 'enjoyinglife', '2022-02-11', '1991-02-20', 'Female', NULL),
		('Matteo', 'Conti', 'italiano', '2022-02-12', '1994-05-28', 'Male', NULL),
		('Carmen', 'Rodriguez', 'seaside21', '2022-02-13', '1984-10-08', 'Female', NULL),
		('Martin', 'Schmidt', 'mountainlover', '2022-02-14', '1980-12-15', 'Male', NULL),
		('Emily', 'White', 'beachbum', '2022-02-15', '1996-03-22', 'Female', NULL),
		('Andreas', 'Weber', 'germany22', '2022-02-16', '1982-06-30', 'Male', NULL),
		('Ana', 'Costa', 'sunnydays', '2022-02-17', '1981-09-07', 'Female', NULL),
		('Giulia', 'Ricci', 'bellaitalia', '2022-02-18', '1997-02-14', 'Female', NULL),
		('Hans', 'Van der Meer', 'dutchwindmills', '2022-02-19', '1986-04-18', 'Male', NULL),
		('Marta', 'Santos', 'oceanbreeze', '2022-02-20', '1989-07-26', 'Female', NULL),
		('Frederik', 'Jørgensen', 'hygge123', '2022-02-21', '1990-10-31', 'Male', NULL),
		('Alicia', 'Lopez', 'spanishflair', '2022-02-22', '1994-02-08', 'Female', NULL),
		('Andrea', 'Ferrari', 'fastcars', '2022-02-23', '1983-05-16', 'Male', NULL),
		('Eva', 'Hernández', 'siestatime', '2022-02-24', '1991-08-23', 'Female', NULL),
		('Ricardo', 'Molina', 'surfsup', '2022-02-25', '1987-11-29', 'Male', NULL),
		('Katarzyna', 'Nowak', 'poland2022', '2022-02-26', '1995-04-06', 'Female', NULL),
		('Giovanni', 'Moretti', 'ciao2022', '2022-02-27', '1984-07-14', 'Male', NULL),
		('Maria', 'Silveira', 'portugal22', '2022-02-28', '1993-10-19', 'Female', NULL),
		('Jan', 'Schulz', 'germanadventures', '2022-03-01', '1988-01-25', 'Male', NULL),
		('Sophie', 'Lefèvre', 'parisianlife', '2022-03-02', '1994-05-03', 'Female', NULL),
		('Luigi', 'Bernini', 'vespalover', '2022-03-03', '1981-08-09', 'Male', NULL),
		('Elena', 'Sánchez', 'sunnysevilla', '2022-03-04', '1986-11-15', 'Female', NULL),
		('David', 'Brown', 'uktraveler', '2022-03-05', '1992-02-21', 'Male', NULL),
		('Claudia', 'Rossi', 'dolcevita', '2022-03-06', '1987-05-29', 'Female', NULL),
		('Niklas', 'Andersen', 'danishcharm', '2022-03-07', '1990-09-03', 'Male', NULL),
		('Lucía', 'Fuentes', 'barcelonabeauty', '2022-03-08', '1983-12-10', 'Female', NULL),
		('Sebastian', 'Koch', 'bavariancharm', '2022-03-09', '1989-03-17', 'Male', NULL),
		('Céline', 'Dubois', 'frenchcharm', '2022-03-10', '1995-06-23', 'Female', NULL),
		('Marco', 'Ferrara', 'pizzalover', '2022-03-11', '1980-09-30', 'Male', NULL),
		('Anaïs', 'Lemoine', 'rivieralife', '2022-03-12', '1996-01-05', 'Female', NULL);     




UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-psd/3d-illustration-person-with-sunglasses_27470334.htm#query=user%20profile&position=7&from_
view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 1;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-vector/businessman-character-avatar-isolated_6769264.htm#query=user%20profile&position=9&from_
view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 2;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/people-avatars-with-young-people-s-faces-concept-colored-flat-vector-
illustration-isolated_68189451.htm#query=user%20profile&position=6&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-
12757facdba4' 
	WHERE user_id = 3;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-psd/3d-icon-social-media-app_36190320.htm#query=user%20profile&position=1&from_
view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 4;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-photo/smiling-man_5402018.htm#query=user%20profile&position=16&from_
view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 5;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-vector/illustration-user-avatar-icon_2606573.htm#query=user%20profile&position=29&from_
view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 6;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-photo/portrait-hapy-young-smart-man-glasses-white-wall_15181130.htm#query=
user%20profile&position=33&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 7;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-photo/pleasant-looking-caucasian-female-with-long-hair-wearing-yellow-casual-shirt-having-good-mood-
looking-happily-camera_10113938.htm#query=user%20profile&position=57&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-
12757facdba4' 
	WHERE user_id = 8;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-photo/handsome-happy-bearded-man_6447727.htm#query=user%20profile&position=54&from
_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 9;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-photo/portrait-man-laughing_12478216.htm#query=user%20profile&position=47&from
_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 10;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/anonymous-user-circle-icon-vector-illustration-flat-style-with-long-shadow
_19871451.htm#query=user%20profile&position=55&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 12;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/user-interface-icon-cartoon-style-illustration_35671362.htm#query=
user%20profile&position=46&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 13;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-photo/user-profile-front-side_41949677.htm#query=user%20profile&position=51&from
_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 14;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-photo/neon-icon-women-security-guard-black-background-3d-rendering-illustration
_27349214.htm#query=user%20profile&position=39&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 15;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/avatar-user-icon-vector_30596072.htm#page=2&query=
user%20profile&position=22&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 16;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/girl-cv-icon-cartoon-vector-work-candidate-man-agreement_
70938621.htm#page=2&query=user%20profile&position=29&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 17;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/avatar-icon003_35347833.htm#page=2&query=
user%20profile&position=34&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 18;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-vector/minimalist-geometric-judith-s-tiktok-profile-picture_
137381672.htm#page=2&query=user%20profile&position=37&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 19;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-vector/influencer-flat-illustration_129898670.htm#page=
2&query=user%20profile&position=40&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 20;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/premium-photo/icon-with-girl-blue-background-3d-rendering_23319514.
htm#page=2&query=user%20profile&position=33&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 11;
UPDATE airbnb_user SET image_url = 
'https://www.freepik.com/free-psd/3d-illustration-person-with-sunglasses_
27470334.htm#query=user%20profile&position=7&from_view=keyword&track=ais&uuid=5a1812b5-3509-4b27-8cf5-12757facdba4' 
	WHERE user_id = 21;


DELETE FROM user_contact;
INSERT INTO user_contact (user_id, email, phone)
VALUES
		(1, 'john.smith@example.com', '+44 20 1234 5678'),(2, 'emma.jones@example.com', '+49 30 9876 5432'),
		(3, 'luca.muller@example.com', '+49 30 8765 4321'),(4, 'isabella.silva@example.com', '+351 91 234 5678'),
		(5, 'antoine.martin@example.com', '+33 1 2345 6789'),(6, 'sophie.dupont@example.com', '+33 1 9876 5432'),
		(7, 'mario.rossi@example.com', '+39 06 1234 5678'),(8, 'luis.gonzalez@example.com', '+34 91 1234 5678'),
		(9, 'elena.fernandez@example.com', '+34 91 8765 4321'),(10, 'tom.johnson@example.com', '+44 20 1234 5678'),
		(11, 'sophia.vandenberg@example.com', '+31 20 1234 5678'),(12, 'matteo.conti@example.com', '+39 06 1234 5678'),
		(13, 'carmen.rodriguez@example.com', '+34 91 1234 5678'),(14, 'martin.schmidt@example.com', '+43 1 2345 6789'),
		(15, 'emily.white@example.com', '+44 20 1234 5678'),(16, 'andreas.weber@example.com', '+43 1 9876 5432'),
		(17, 'ana.costa@example.com', '+34 91 1234 5678'),(18, 'giulia.ricci@example.com', '+351 91 234 5678'),
		(19, 'hans.vandermeer@example.com', '+31 20 1234 5678'),(20, 'marta.santos@example.com', '+351 21 123 4567'),
		(21, 'frederik.jorgensen@example.com', '+45 12 345 6789'),(22, 'alicia.lopez@example.com', '+34 91 8765 4321'),
		(23, 'andrea.ferrari@example.com', '+39 06 1234 5678'),(24, 'eva.hernandez@example.com', '+34 91 1234 5678'),
		(25, 'ricardo.molina@example.com', '+34 91 8765 4321'),(26, 'katarzyna.nowak@example.com', '+48 22 123 4567'),
		(27, 'giovanni.moretti@example.com', '+39 06 1234 5678'),(28, 'maria.silveira@example.com', '+351 91 234 5678'),
		(29, 'jan.schulz@example.com', '+49 30 9876 5432'),(30, 'sophie.lefevre@example.com', '+33 1 2345 6789'),
		(31, 'luigi.bernini@example.com', '+39 06 1234 5678'),(32, 'elena.sanchez@example.com', '+34 91 1234 5678'),
		(33, 'david.brown@example.com', '+44 20 1234 5678'),(34, 'claudia.rossi@example.com', '+39 06 1234 5678'),
		(35, 'niklas.andersen@example.com', '+45 12 345 6789'),(36, 'lucia.fuentes@example.com', '+34 91 8765 4321'),
		(37, 'sebastian.koch@example.com', '+49 89 1234 5678'),(38, 'celine.dubois@example.com', '+33 1 2345 6789'),
		(39, 'marco.ferrara@example.com', '+39 06 1234 5678'),(40, 'anais.lemoine@example.com', '+33 1 9876 5432'); 

INSERT INTO accommodation (location_id, user_id, acc_type, acc_name, acc_description, price_p_night, service_fee, cleaning_fee )
VALUES
		(1, 1, 'Entire Home', 'Cozy Studio in London', 
        'A comfortable studio apartment in the heart of London, perfect for solo travelers or couples.', 280.00, 15.00, 20.00),
		(2, 2, 'Entire Home', 'Spacious Family Home in Berlin', 
        'A large and welcoming family home with a beautiful garden, ideal for families or groups.', 220.00, 20.00, 25.00),
		(4, 4, 'Entire Home', 'Luxury Villa in Lisbon', 
        'An exquisite villa with panoramic views of Lisbon, featuring a private pool and elegant interiors.', 150.00, 10.00, 15.00),
		(5, 5, 'Room', 'Charming Parisian Flat', 
        'A charming room in the heart of Paris, within walking distance to iconic landmarks.', 300.00, 25.00, 30.00),
		(11, 19, 'Entire Home', 'Canal View in Amsterdam', 
        'Enjoy canal views from this stylish entire apartment in Amsterdam, within walking distance to major attractions.', 
        270.00, 12.00, 18.00),
		(6, 7, 'Room', 'City Center Retreat in Rome', 
        'A comfortable room in a centrally located apartment in Rome with easy access to historic sites and vibrant neighborhoods.', 
        190.00, 18.00, 22.00),
		(3, 8, 'Entire Home', 'Modern Penthouse in Madrid', 
        'A stylish penthouse apartment with panoramic views of Madrid, perfect for urban explorers.', 80.00, 10.00, 15.00),
		(12, 15, 'Room', 'Scandinavian Cottage in Copenhagen', 
        'Experience Scandinavian charm in a cozy room in this cottage in Copenhagen, surrounded by nature.', 175.00, 12.00, 20.00),
		(7, 14, 'Entire Home', 'Classic Elegance in Vienna', 
        'Experience classic elegance in this Vienna apartment, with historic architecture and modern amenities.', 145.00, 8.00, 12.00 ),
		(20, 38, 'Room', 'Mediterranean Retreat in Athens', 
        'Experience a Mediterranean-style retreat in Athens by staying in a comfortable room with a private garden and panoramic views.'
        , 85.00, 20.00, 25.00),
		(13, 21, 'Entire Home', 
        'Modern Apartment in Oslo', 'A sleek and modern apartment located in the heart of Oslo, offering stunning views of the city.', 
        195.00, 15.00, 20.00),
		(8, 37, 'Entire Home', 'Cozy Retreat in Bern', 
        'Escape to this cozy retreat in Bern, surrounded by picturesque landscapes and close to the city center.', 
        330.00, 25.00, 30.00),
		(17, 33, 'Room', 'Historic Charm in Valletta', 
        'Experience the historic charm of Valletta by staying in a comfortable room with traditional Maltese architecture.', 
        65.00, 10.00, 15.00),
		(9, 6, 'Entire Home', 'Elegant Duplex in Brussels', 
        'An elegant duplex apartment in the heart of Brussels, perfect for exploring the city\'s cultural attractions.', 
        80.00, 15.00, 20.00),
		(10, 29, 'Room', 'Luxury Suite in Luxembourg', 
        'Indulge in luxury by staying in a spacious suite in Luxembourg, with top-notch amenities and a central location.', 
        65.00, 12.00, 18.00),
		(14, 35, 'Entire Home', 'Scandinavian Gem in Stockholm', 
        'Discover a Scandinavian gem in Stockholm, with stylish interiors and a prime location.', 290.00, 18.00, 22.00),
		(19, 39, 'Room', 'Monaco Riviera View', 'Enjoy breathtaking views of the Monaco Riviera from this comfortable room, 
        perfect for a romantic getaway.', 555.00, 45.00, 95.00),
		(15, 28, 'Entire Home', 'Cosy Apartment in Helsinki', 
        'Experience the coziness of Helsinki by staying in this well-appointed apartment, close to the city\'s attractions.'
        , 125.00, 15.00, 20.00),
		(16, 10, 'Room', 'Northern Lights Retreat in Reykjavik', 
        'Stay in a comfortable room in Reykjavik, the perfect base for experiencing the magical Northern Lights in Iceland.', 
        160.00, 12.00, 18.00),
		(18, 26, 'Entire Home', 'Warsaw City Center Loft', 
        'Explore Warsaw from this stylish loft in the city center, offering modern amenities and proximity to historical sites.', 
        65.00, 20.00, 25.00);

INSERT INTO acc_dimensions 
	(acc_id, max_guests, n_bedrooms, n_bathrooms, n_beds, size)
	VALUES
		(1, 4, 1, 1, 2, '60 sqm'),(2, 6, 2, 1, 3, '80 sqm'),
		(3, 6, 1, 1, 1, '83 sqm'),(4, 2, 1, 1, 1, '15 sqm'),
		(5, 4, 2, 1, 4, '55 sqm'),(6, 2, 1, 1, 1, '20 sqm'),
		(7, 4, 2, 2, 3, '70 sqm'),(8, 2, 1, 1, 1, '20 sqm'),
		(9, 6, 3, 2, 4, '75 sqm'),(10, 2, 1, 1, 1, '35 sqm'),
		(11, 4, 1, 2, 2,'72 sqm'),(12, 4, 2, 2, 3, '90 sqm'),
		(13, 2, 1, 1, 1, '24 sqm'),(14, 4, 2, 1, 2, '68 sqm'),
		(15, 2, 1, 1, 1, '18 sqm'),(16, 3, 1, 1, 2, '75 sqm'),
		(17, 2, 1, 1, 1, '32 sqm'),(18, 4, 2, 2, 2, '67 sqm'),
		(19, 2, 1, 1, 1, '22 sqm'),(20, 6, 3, 2, 4, '80 sqm');


INSERT INTO booking 
	(user_id, acc_id, check_in_date, check_out_date, n_guests, booking_status, booking_timestamp, total_price)
	VALUES
		(3, 1, '2023-05-15', '2023-05-20', 2, 'Confirmed', '2023-04-10 08:30:00', 1435.00),
		(9, 2, '2023-06-01', '2023-06-05', 5, 'Confirmed', '2023-04-12 12:45:00', 925.00),
		(11, 3, '2023-07-10', '2023-07-15', 6, 'pending', '2023-04-15 09:15:00', 775.00),
		(12, 4, '2023-08-03', '2023-08-10', 2, 'Confirmed', '2023-04-18 15:20:00', 2155.00),
		(13, 5, '2023-09-12', '2023-09-15', 2, 'Confirmed', '2023-04-20 18:45:00', 840.00),
		(16, 6, '2023-10-05', '2023-10-10', 2, 'Confirmed', '2023-04-23 10:30:00', 990.00),
		(17, 7, '2023-11-08', '2023-11-15', 1, 'pending', '2023-04-26 14:15:00', 585.00),
		(18, 8, '2023-12-20', '2023-12-25', 2, 'Confirmed', '2023-04-28 20:00:00', 907.00),
		(20, 9, '2024-01-15', '2024-01-20', 2, 'pending', '2023-05-02 09:45:00', 745.00),
		(22, 10, '2024-02-01', '2024-02-05', 2, 'Confirmed', '2023-05-05 11:30:00', 385.00),
		(23, 11, '2024-03-10', '2024-03-15', 3, 'Confirmed', '2023-05-08 13:20:00', 1010.00),
		(24, 12, '2024-04-03', '2024-04-10', 2, 'Confirmed', '2023-05-11 17:10:00', 2365.00),
		(25, 13, '2024-05-15', '2024-05-20', 1, 'Confirmed', '2023-05-14 21:00:00', 350.00),
		(27, 14, '2024-06-01', '2024-06-05', 2, 'Confirmed', '2023-05-17 08:30:00', 355.00),
		(30, 15, '2024-07-10', '2024-07-15', 2, 'Confirmed', '2023-05-20 10:45:00', 355.00),
		(31, 16, '2024-08-03', '2024-08-10', 3, 'Confirmed', '2023-05-23 14:20:00', 2070.00),
		(32, 17, '2024-09-12', '2024-09-15', 2, 'pending', '2023-05-26 16:30:00', 1805.00),
		(34, 18, '2024-10-05', '2024-10-10', 2, 'Confirmed', '2023-05-29 18:15:00', 660.00),
		(36, 19, '2024-11-08', '2024-11-15', 2, 'pending', '2023-06-01 20:45:00', 1150.00),
		(40, 20, '2024-12-20', '2024-12-25', 2, 'pending', '2023-06-04 23:00:00', 370.00);

DELETE FROM airbnb_host;
INSERT INTO airbnb_host (acc_id, user_id)
   SELECT DISTINCT acc_id, user_id
   FROM accommodation;
   
UPDATE airbnb_host
SET
  host_since = CASE
		WHEN acc_id = 1 THEN '2022-01-15'
		WHEN acc_id = 2 THEN '2021-11-30'
		WHEN acc_id = 3 THEN '2021-02-15'
		WHEN acc_id = 4 THEN '2020-11-30'
		WHEN acc_id = 5 THEN '2019-01-15'
		WHEN acc_id = 6 THEN '2021-11-20'
		WHEN acc_id = 7 THEN '2020-11-15'
		WHEN acc_id = 8 THEN '2021-11-30'
		WHEN acc_id = 9 THEN '2020-01-05'
		WHEN acc_id = 10 THEN '2020-11-30'
		WHEN acc_id = 11 THEN '2021-01-15'
		WHEN acc_id = 12 THEN '2021-11-11'
		WHEN acc_id = 13 THEN '2021-03-15'
		WHEN acc_id = 14 THEN '2021-04-30'
		WHEN acc_id = 15 THEN '2018-06-15'
		WHEN acc_id = 16 THEN '2021-12-30'
		WHEN acc_id = 17 THEN '2019-01-11'
		WHEN acc_id = 18 THEN '2016-11-30'
		WHEN acc_id = 19 THEN '2020-11-15'
		WHEN acc_id = 20 THEN '2021-04-05'
  END,
  host_type = CASE
		WHEN acc_id = 1 THEN 'superhost'
		WHEN acc_id = 2 THEN 'regular'
		WHEN acc_id = 3 THEN 'regular'
		WHEN acc_id = 4 THEN 'superhost'
		WHEN acc_id = 5 THEN 'professional'
		WHEN acc_id = 6 THEN 'superhost'
		WHEN acc_id = 7 THEN 'regular'
		WHEN acc_id = 8 THEN 'professional'
		WHEN acc_id = 9 THEN 'regular'
		WHEN acc_id = 10 THEN 'superhost'
		WHEN acc_id = 11 THEN 'regular'
		WHEN acc_id = 12 THEN 'superhost'
		WHEN acc_id = 13 THEN 'regular'
		WHEN acc_id = 14 THEN 'professional'
		WHEN acc_id = 15 THEN 'regular'
		WHEN acc_id = 16 THEN 'regular'
		WHEN acc_id = 17 THEN 'professional1'
		WHEN acc_id = 18 THEN 'superhost'
		WHEN acc_id = 19 THEN 'regular'
		WHEN acc_id = 20 THEN 'professional'
  END;

DELETE FROM review;
INSERT INTO review (title, rating_stars, review_text, review_timestamp)
VALUES
('Amazing hospitality', '5', 'The host was incredibly friendly and the accommodation exceeded our expectations.', '2023-02-15 10:30:00'),
('Disappointing experience', '2', 'The cleanliness was subpar, and there were issues with the amenities.', '2023-02-16 12:45:00'),
('Highly recommended', '5', 'A wonderful stay with excellent service. Will definitely come back!', '2023-02-17 15:20:00'),
('Could be better', '3', 'The location was good, but improvements are needed in terms of facilities.', '2023-02-18 18:10:00'),
('Excellent service', '5', 'The host was attentive, and the property was well-maintained. A perfect getaway!', '2023-02-19 09:15:00'),
('Not worth the price', '2', 'The accommodation did not justify the high cost, and the service was lacking.', '2023-02-20 14:30:00'),
('Lovely stay', '4', 'Comfortable and cozy accommodation. Minor issues, but overall a pleasant experience.', '2023-02-21 16:45:00'),
('Disorganized host', '2', 'The host seemed disorganized, and check-in/check-out processes were confusing.', '2023-02-22 20:00:00'),
('Absolutely fantastic', '5', 'A memorable experience with outstanding hospitality. Would recommend to everyone!', '2023-02-23 11:45:00'),
('Room for improvement', '3', 'Decent stay, but there are areas that could be improved for a better guest experience.', '2023-02-24 13:30:00'),
('Pleasant surprise', '4', 'The property exceeded our expectations. Clean, well-equipped, and great location.', '2023-02-25 15:45:00'),
('Unpleasant stay', '1', 'Major issues with cleanliness and communication with the host. Not recommended.', '2023-02-26 17:00:00'),
('Home away from home', '5', 'The host made us feel at home. Cozy atmosphere and excellent amenities.', '2023-02-27 09:30:00'),
('Okay experience', '3', 'Average stay with no major issues. Decent accommodation for the price.', '2023-02-28 12:15:00'),
('Superb service', '5', 'The host was accommodating, and the property was exceptional. Highly satisfied!', '2023-03-01 14:45:00'),
('Not recommended', '2', 'Several issues with the accommodation, and the host was unresponsive to concerns.', '2023-03-02 16:30:00'),
('Great value', '4', 'Affordable accommodation with good amenities. A positive experience overall.', '2023-03-03 18:45:00'),
('Below expectations', '2', 'The property did not meet expectations, and the service left much to be desired.', '2023-03-04 21:00:00'),
('Exceptional stay', '5', 'An outstanding experience with top-notch service. Will definitely return in the future.', '2023-03-05 10:00:00'),
('Outstanding guest!', NULL, 'It was a pleasure hosting this guest. They were respectful and left the place in great condition.',
 '2023-02-15 10:30:00'),
('Exceptional guest', NULL, 'Hosting this guest was a delight. They were considerate and followed all house rules.', '2023-02-17 15:20:00'),
('Highly recommended guest', NULL, 'This guest was fantastic. Clean and respectful. Would gladly host them again!', '2023-02-19 09:15:00'),
('Smooth hosting', NULL, 'Hosting this guest was hassle-free. They followed all guidelines, and the stay was pleasant.', '2023-02-27 09:30:00'),
('Excellent guest', NULL, 'It was a pleasure hosting this guest. They were respectful and left the place in great condition.', 
'2023-03-01 14:45:00');

INSERT INTO review (title, rating_stars, review_text, review_timestamp)
VALUES
('Amazing experience', NULL, 'This guest made the stay amazing. Friendly and left the place spotless.', '2023-03-05 12:10:00'),
('Top-notch guest', NULL, 'Hosting this guest was a breeze. They were respectful and easy to communicate with.', '2023-03-10 08:45:00'),
('A+" guest', NULL, 'Exceptional guest! Respectful, communicative, and a pleasure to host.', '2023-03-15 17:20:00'),
('Great communication', NULL, 'This guest communicated well and adhered to all rules. Would welcome them back anytime.', '2023-03-20 14:30:00'),
('Perfect guest', NULL, 'Hosting this guest was a delight. Everything went smoothly, and they were very respectful.', '2023-03-25 11:15:00'),
('Wonderful stay', NULL, 'It was a wonderful experience hosting this guest. They were polite and left the space immaculate.',
 '2023-04-02 13:40:00'),
('Fantastic guest', NULL, 'This guest was fantastic. Considerate, tidy, and a pleasure to host.', '2023-04-07 10:05:00'),
('Great guest', NULL, 'Hosting this guest was a great experience. They followed all instructions and left the place in great shape.',
 '2023-04-12 16:30:00'),
('Highly satisfied', NULL, 'I highly recommend this guest. They were courteous and left the accommodation in perfect condition.',
 '2023-04-17 09:25:00'),
('Impressive guest', NULL, 'This guest left a lasting impression. Polite, respectful, and easy to communicate with.', '2023-04-22 14:15:00'),
('Spectacular stay', NULL, 'Hosting this guest was a spectacular experience. They were clean, quiet, and respectful.', '2023-04-28 11:50:00'),
('Excellent communication', NULL, 'Communication with this guest was excellent. They were punctual and followed all guidelines.', 
'2023-05-03 08:15:00'),
('Superb guest', NULL, 'Superb guest! The stay was smooth, and they left the place in excellent condition.', '2023-05-08 17:40:00'),
('Top-tier guest', NULL, 'This guest is top-tier. Respectful, responsible, and an overall pleasure to host.', '2023-05-13 13:05:00'),
('Outstanding experience', NULL, 'Hosting this guest was an outstanding experience. 
They were considerate and left the space in perfect condition.', '2023-05-18 09:30:00');

INSERT INTO review (title, rating_stars, review_text, review_timestamp)
VALUES
('great guest', NULL, 'It was a pleasure hosting these people. They were friendly and left the place in great condition.',
'2023-03-01 14:49:00');

UPDATE review
SET
    title = 'great time',
    rating_stars = '5',
    review_text = 'It was a pleasure staying in your place. They were very friendly and the accommodation looks great.',
    review_timestamp = '2023-03-01 14:49:00'
WHERE
    review_id = 40;


DELETE FROM review_value;
INSERT INTO review_value 
	(cleanliness, accuracy, check_in, communication, location, general_value)
	VALUES
		(4.5, 5.0, 4.0, 4.8, 4.2, 4.6),(3.2, 2.5, 3.8, 3.0, 3.5, 3.2),
		(5.0, 4.7, 4.9, 5.0, 4.8, 4.9),(2.5, 3.0, 2.0, 2.8, 3.5, 2.6),
		(4.0, 4.2, 4.5, 4.6, 4.0, 4.2),(3.8, 3.5, 3.2, 3.7, 3.0, 3.5),
		(4.7, 4.8, 4.5, 4.9, 4.2, 4.6),(2.0, 2.5, 2.8, 2.2, 2.0, 2.4),
		(4.2, 4.0, 4.8, 4.5, 4.7, 4.4),(3.5, 3.2, 3.7, 3.0, 3.8, 3.4),
		(4.9, 4.7, 4.5, 4.8, 4.6, 4.7),(2.8, 3.0, 2.5, 2.7, 3.0, 2.8),
		(4.3, 4.5, 4.2, 4.6, 4.0, 4.4),(2.0, 2.2, 2.5, 2.0, 2.8, 2.3),
		(4.6, 4.8, 4.5, 4.9, 4.2, 4.7),(3.0, 3.5, 3.8, 3.2, 3.0, 3.4),
		(4.8, 4.7, 4.9, 5.0, 4.5, 4.8),(2.3, 2.0, 2.8, 2.5, 2.2, 2.4),
		(4.4, 4.5, 4.2, 4.6, 4.0, 4.3),(4.9, 4.4, 4.5, 4.1, 4.2, 4.3);

INSERT INTO payment (booking_id, user_id, credit_card_name, payment_timestamp, total_value, payment_status, currency)
VALUES
		(1,3, 'Visa', '2023-04-11 12:30:00', 1435.00, 'Completed', 'EUR'),
		(2,9, 'Mastercard', '2023-04-13 14:20:00', 925.00, 'Pending', 'EUR'),
		(3,11, 'American Express', '2023-04-16 10:15:00', 775.00, 'Completed', 'EUR'),
		(4,12, 'Visa', '2023-04-19 11:30:00', 2155.00, 'Pending', 'EUR'),
		(5,13, 'Mastercard', '2023-04-21 16:45:00', 840.00, 'Completed', 'EUR'),
		(6,16,  'Visa', '2023-04-24 09:30:00', 990.00, 'Pending', 'EUR'),
		(7,17,  'American Express', '2023-04-27 11:45:00', 585.00, 'Completed', 'EUR'),
		(8,18,  'Mastercard', '2023-04-29 14:30:00', 907.00, 'Pending', 'EUR'),
		(9,20,  'Visa', '2023-05-03 10:45:00', 745.00, 'Completed', 'EUR'),
		(10,22,  'American Express', '2023-05-06 12:30:00', 385.00, 'Pending', 'EUR'),
		(11,23, 'Mastercard', '2023-05-12 15:15:00', 1010.00, 'Completed', 'EUR'),
		(12,24, 'Visa', '2023-05-15 09:30:00', 2365.00, 'Pending', 'EUR'),
		(13,25, 'American Express', '2023-05-20 11:45:00', 350.00, 'Completed', 'EUR'),
		(14,27, 'Mastercard', '2023-05-22 14:30:00', 355.00, 'Pending', 'EUR'),
		(15,30, 'Visa', '2023-05-25 16:45:00', 355.00, 'Completed', 'EUR'),
		(16,31, 'American Express', '2023-05-20 10:30:00', 2070.00, 'Pending', 'EUR'),
		(17,32, 'Mastercard', '2023-05-27 12:15:00', 1805.00, 'Completed', 'EUR'),
		(18,34,  'Visa', '2023-05-30 14:30:00', 660.00, 'Pending', 'EUR'),
		(19,36,  'American Express', '2023-06-05 16:45:00', 1150.00, 'Completed', 'EUR'),
		(20,40,  'Mastercard', '2023-06-10 11:30:00', 370.00, 'Pending', 'EUR');

INSERT INTO host_language (language_name)
	VALUES
		('English'),
		('German'),
		('Spanish'),
		('French'),
		('Italian'),
		('Portuguese'),
		('Dutch'),
		('Swedish'),
		('Norwegian'),
		('Greek');
INSERT INTO host_language (language_name)
	VALUES
		('Russian'),
		('Polish'),
		('Czech'),
		('Hungarian'),
		('Romanian'),
		('Danish'),
		('Finnish'),
		('Bulgarian'),
		('Catalan'),
		('Maltese');


INSERT INTO acc_category (category_name)
VALUES
		('Castle'),
		('Beach House'),
		('Ski Chalet'),
		('Urban Apartment'),
		('Mountain Retreat'),
		('Lakefront Cabin'),
		('City Loft'),
		('Countryside Villa'),
		('Treehouse'),
		('Historic Mansion'),
		('Cottage'),
		('Luxury Penthouse'),
		('Desert Oasis'),
		('Tropical Paradise'),
		('Rural Farmhouse'),
		('Modern Condo'),
		('Seaside Bungalow'),
		('Alpine Lodge'),
		('Artistic Studio'),
		('Island Getaway');

INSERT INTO amenity (amenity_name)
VALUES
		('Free Wi-Fi'),
		('Air Conditioning'),
		('Kitchen'),
		('Parking'),
		('Swimming Pool'),
		('Pet-Friendly'),
		('Garden or Patio'),
		('Hot Tub'),
		('Fireplace'),
		('Gym'),
		('Breakfast Included'),
		('Ocean View'),
		('Private Entrance'),
		('Smart TV'),
		('Washer and Dryer'),
		('Elevator'),
		('Game Room'),
		('BBQ Grill'),
		('Beach Access'),
		('Security System');

INSERT INTO region (region_name)
VALUES
		('Europe'),
		('Northern Europe'),
		('Southern Europe'),
		('Western Europe'),
		('Central Europe'),
		('Eastern Europe'),
		('Scandinavia'),
		('Mediterranean'),
		('Baltic States'),
		('Alps Region'),
		('Iberian Peninsula'),
		('Benelux'),
		('Nordic Countries'),
		('British Isles'),
		('Eastern Mediterranean'),
		('Nordic and Baltic'),
		('Western Mediterranean'),
		('Northern Germany'),
		('Southern Germany'),
		('Central Germany');
        
DELETE FROM message;
INSERT INTO message (user_id, host_id, acc_id, msg_text, msg_timestamp)
VALUES
(3, 1, 1, 'Hello, I''m interested in your flat.', '2023-02-15 10:30:00'),
(9, 2, 2, 'Is the apartment available next month?', '2023-02-16 12:45:00'),
(11, 4, 3, 'I love the views from your villa!', '2023-02-17 15:20:00'),
(12, 5, 4, 'Could you provide more details about your penthouse?', '2023-02-18 18:10:00'),
(13, 19, 5, 'Interested in booking your modern apartment.', '2023-02-19 09:00:00'),
(16, 7, 6, 'How far is the room from the city center?', '2023-02-20 14:30:00'),
(17, 8, 7, 'Tell me more about the amenities in your duplex.', '2023-02-21 16:45:00'),
(18, 15, 8, 'Is there a minimum stay required for your apartment?', '2023-02-22 11:20:00'),
(20, 14, 9, 'Can I bring my pet to your family home?', '2023-02-23 08:15:00'),
(22, 38, 10, 'Looking for a quiet retreat, is your place suitable?', '2023-02-24 13:05:00'),
(22, 38, 10, 'Yes, our place is perfect for a quiet retreat. Feel free to book!', '2023-02-24 13:45:00'),
(17, 8, 7, 'The duplex has a fully equipped kitchen and a cozy living room. You''ll love it!', '2023-02-21 17:30:00'),
(20, 14, 9, 'Unfortunately, we do not allow pets in our family home. Apologies for any inconvenience.', '2023-02-23 09:00:00'),
(18, 15, 8, 'There is no minimum stay required for our apartment. You can book for your desired duration.', '2023-02-22 12:00:00'),
(16, 7, 6, 'The room is approximately 15 minutes away from the city center. Its easily accessible!', '2023-02-20 15:10:00'),
(13, 19, 5, 'The modern apartment is available for your desired dates. You can proceed with the booking.', '2023-02-19 10:15:00'),
(11, 4, 3, 'Thank you! We re glad you love the views from our villa. It s a unique experience!', '2023-02-17 15:45:00'),
(9,2, 2, 'Yes, the apartment is available next month. You can check the calendar and make a reservation.', '2023-02-16 13:15:00'),
(3,1, 1, 'Hello! Thank you for your interest in our flat. It s available for booking. Let us know if you have any questions!',
'2023-02-15 11:00:00'),
(12,5, 4, 'Certainly! I ll provide detailed information about the penthouse shortly. Thank you for your patience.', '2023-02-18 19:00:00');
      
INSERT INTO amenity_relation (amenity_id, acc_id)
VALUES
	  (1, 3), (2, 6), (3, 9),
	  (4, 12), (5, 15), (6, 18),
	  (7, 2), (8, 5), (9, 8),
	  (10, 11), (11, 14), (12, 17),
	  (13, 1), (14, 4), (15, 7),
	  (16, 10), (17, 13), (18, 16),
	  (19, 19), (20, 20),
	  (1, 19), (2, 14), (2, 9),
	  (4, 7), (5, 12), (6, 4),
	  (7, 1), (8, 16), (9, 20),
	  (10, 18), (11, 11), (12, 8),
	  (13, 3), (14, 10), (15, 2),
	  (16, 13), (17, 17), (18, 15),
	  (19, 5), (20, 6);


INSERT INTO category_relation (acc_category_id, acc_id)
VALUES
	  (1, 5), (2, 8), (3, 12),
	  (4, 14), (5, 17), (6, 20),
	  (7, 2), (8, 4), (9, 7),
	  (10, 12), (11, 13), (12, 16),
	  (13, 1), (14, 3), (15, 6),
	  (16, 9), (17, 10), (18, 15),
	  (19, 18), (20, 19),
	  (1, 10), (2, 13), (3, 9),
	  (4, 5), (5, 16), (6, 1),
	  (7, 3), (8, 7), (9, 12),
	  (10, 11), (11, 14), (12, 20),
	  (13, 8), (14, 18), (15, 2),
	  (16, 15), (17, 17), (18, 4),
	  (19, 19), (20, 6);
  
INSERT INTO region_relation (region_id, location_id)
VALUES 
		(1, 1), (2, 1), (4, 1), (14, 1),
        (1, 2), (5, 2), (18, 2), 
        (1, 3), (3, 3), (11, 3),
        (1, 4), (3, 4), (11, 4),
        (1, 5), (5, 5),
        (1, 6), (5, 6),
        (1, 7), (6, 7), (10, 7),
        (1, 8), (5, 8), (10, 8),
        (1, 9), (5, 9), (12, 9),
        (1, 10), (5, 10), (12, 10),
        (1, 11), (5, 11), (12, 11),
        (1, 12), (2, 12), (7, 12), (16, 12),
        (1, 13), (2, 13), (7, 13), (16, 13),
        (1, 14), (2, 14), (7, 14), (16, 14),
        (1, 15), (2, 15), (7, 15), (16, 15),
        (1, 16), (2, 16), (7, 16), (16, 16), (13, 16),
        (1, 17), (3, 17), (8, 17), 
        (1, 18), (6, 18), 
        (1, 19), (5, 19), (8, 19),
        (1, 20), (3, 20), (8, 20), (15, 20);
        
INSERT INTO host_language_relation (language_id, user_id)
VALUES
	  (1, 1),(2, 2),(3, 4),(4, 5),(5, 19),(6, 7),(7, 8),(8, 15),(9, 14),(10, 38),(1, 21),(2, 37),  
	  (3, 33),(4, 6),(5, 29),(6, 35),(7, 39),(8, 28),(9, 10),(10, 26),(1, 2),(2, 4),(3, 5),(4, 19),  
	  (5, 33),(6, 6),(7, 29),(8, 7),(9, 8),(10, 15),(1, 14),(2, 38),(3, 21),(4, 37),(5, 1),(6, 2),(7, 19),  
	  (8, 8),(9, 26), (10, 1); 
      
DELETE FROM review_relation; 
INSERT INTO review_relation (review_id, value_id)
VALUES
	(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),(11, 11),(12, 12),(13, 13),
	(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),(19, 19), (40,20);

DELETE FROM acc_review;
INSERT INTO acc_review (booking_id, review_id)
VALUES
	(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),(11, 11),(12, 12),(13, 13),
	(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),(19, 19);

INSERT INTO acc_review (booking_id, review_id)
VALUES
	(20, 40);

DELETE FROM user_review;
INSERT INTO user_review (user_id, acc_id, review_id, review_timestamp)
VALUES
    (3, 1, 20, '2023-01-15 10:30:00'),(9, 2, 21, '2023-02-17 15:20:00'),
    (11, 3, 22, '2023-03-25 09:45:00'),(12, 4, 23, '2023-04-10 14:00:00'),
    (13, 5, 24, '2023-05-01 08:00:00'),(1, 6, 25, '2023-06-15 12:30:00'),
    (2, 7, 26, '2023-07-20 11:15:00'),(16, 8, 27, '2023-08-30 16:45:00'),
    (4, 9, 28, '2023-09-05 13:00:00'),(5, 10, 29, '2023-10-12 10:00:00'),
    (6, 11, 30, '2023-11-03 09:30:00'),(7, 12, 31, '2023-12-10 08:45:00'),
    (8, 13, 32, '2024-01-05 07:00:00'),(17, 14, 33, '2024-02-15 14:30:00'),
    (10, 15, 34, '2024-03-20 15:45:00'),(18, 16, 35, '2024-04-25 11:00:00'),
    (19, 17, 36, '2024-05-10 09:15:00'),(20, 18, 37, '2024-06-15 17:00:00'),
    (14, 19, 38, '2024-07-20 16:15:00'),(15, 20, 39, '2024-08-30 12:00:00');

DELETE FROM wishlist;    
INSERT INTO wishlist (user_id, acc_id)
VALUES
	(40, 1), (2, 3), (3, 5), (4, 7), (5, 9),
	(6, 11), (7, 13), (8, 15), (9, 17), (10, 19),
	(11, 2), (12, 4), (13, 6), (14, 8), (15, 10),
	(16, 12), (17, 14), (18, 16), (19, 18), (20, 20),
	(21, 1), (22, 3), (23, 5), (24, 7), (25, 9);
    
    
DELETE FROM acc_picture;    
INSERT INTO acc_picture ( acc_id, pic_url)
VALUES 
	( 1,'https://www.freepik.com/premium-photo/modern-apartment-buildings-sunny-day-with-blue-sky_75597640.htm#fromView=
    search&page=2&position=6&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7') ,
    (2, 'https://www.freepik.com/premium-ai-image/house-with-red-brick-facade-trees-vector-illustration-flat-
    stylered-house-with-white-facade_80928089.htm#fromView=search&page=1&position=16&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),
    (3, 'https://www.freepik.com/free-photo/stylish-scandinavian-living-room-with-design-mint-sofa-furnitures-mock-up-
    poster-map-plants-eleg_38852655.htm#fromView=search&page=1&position=20&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),
    (4, 'https://www.freepik.com/premium-photo/exterior-view-building_30520435.htm#fromView=search&page=1&position=
    13&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),
    (5, 'https://www.freepik.com/free-photo/luxury-pool-villa-spectacular-contemporary-design-digital-art-real-
    estate-home-house-property-ge_38067205.htm#fromView=search&page=1&position=32&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (6, 'https://www.freepik.com/free-photo/cottage-with-green-trees_909203.htm#fromView=search&page=
    1&position=36&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),
    (7, 'https://www.freepik.com/free-ai-image/photorealistic-wooden-house-with-timber-structure_152575292.
    htm#fromView=search&page=1&position=35&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (8, 'https://www.freepik.com/premium-photo/view-delightful-city-with-high-rise-buildingd_
    20880865.htm#fromView=search&page=1&position=48&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (9, 'https://www.freepik.com/free-photo/vertical-shot-white-building-clear-sky_8281219.htm#fromView=search&page=
    1&position=37&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (10, 'https://www.freepik.com/free-photo/vertical-shot-white-building-clear-sky_8281219.htm#fromView=search&page=1&position=
    37&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (11, 'https://www.freepik.com/premium-photo/3d-visualization-modern-house-bright-colors-house-facade-design-modern-architecture_
    33225368.htm#fromView=search&page=1&position=56&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (12, 'https://www.freepik.com/premium-photo/exterior-image-new-modern-house-with-large-windows-with-garden-rural-area-
    beautiful-sky-generative-ai_40838377.htm#fromView=search&page=1&position=46&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (13, 'https://www.freepik.com/premium-photo/european-suburban-house_9769488.htm#fromView=search&page=1&position=59&uuid=e32c58e6-
    d8c1-4751-81b6-e6a26ada7ec7'), 
    (14, 'https://www.freepik.com/free-psd/modern-farmhouse-meadow-hill-generative-ai_47893786.htm#fromView=search&page=1&position=
    58&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (15, 'https://www.freepik.com/free-photo/3d-rendering-loft-luxury-living-room-with-bookshelf-near-bookshelf_36105151.
    htm#fromView=search&page=1&position=54&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
	(16, 'https://www.freepik.com/premium-ai-image/modern-house-exterior_139785615.htm#fromView=search&page=1&position=47&uuid
    =e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
	(17, 'https://www.freepik.com/free-ai-image/photorealistic-house-with-wooden-architecture-timber-structure_152578949.
    htm#fromView=search&page=1&position=34&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'),  
    (18, 'https://www.freepik.com/premium-ai-image/modern-farmhouse-house-exterior-with-view-countryside-rolling-hills_47305891.
    htm#fromView=search&page=1&position=31&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (19, 'https://www.freepik.com/free-photo/living-room-mid-century-style-with-warm-colors-ai-generative_41369780.htm#fromView=
    search&page=2&position=4&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7'), 
    (20, 'https://www.freepik.com/free-ai-image/modern-house-architectural-design-photography_92123290.htm#fromView=search&page=
    2&position=0&uuid=e32c58e6-d8c1-4751-81b6-e6a26ada7ec7');
    