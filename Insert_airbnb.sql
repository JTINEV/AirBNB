
--Insert data into userAccount table--

INSERT INTO UserAccount (id, updated_at, created_at, email, password, first_name, last_name)
VALUES ('1', SYSDATE, SYSDATE, 'jaen.doe@example.com', 'password123', 'Jane', 'Doe');

--Insert data into Amenity table--

INSERT INTO Amenity (id, updated_at, created_at, name)
VALUES ('1', SYSDATE, SYSDATE, 'WiFi');

--Insert data into State table--

INSERT INTO State (id, updated_at, created_at, name)
VALUES ('1', SYSDATE, SYSDATE, 'California');

--Insert data into City table--

INSERT INTO City (id, updated_at, created_at, name, state_id)
VALUES ('1', SYSDATE, SYSDATE, 'Los Angeles', '1');

--Insert data into Place table--

INSERT INTO Place (id, updated_at, created_at, user_id, name, city_id, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude)
VALUES ('1', SYSDATE, SYSDATE, '1', 'Beautiful Apartment', '1', 'A lovely place to stay.', 3, 2, 4, 120, 34.0522, -118.2437);

--Insert data into PlaceAmenity table--
INSERT INTO PlaceAmenity (place_id, amenity_id)
VALUES ('1', '1');


--Insert data into Review table--

INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text)
VALUES ('1', SYSDATE, SYSDATE, '1', '1', 'Amazing place');


--Query tables and info--

SELECT * FROM UserAccount;

SELECT * FROM Amenity;

SELECT * FROM State;

SELECT * FROM City;

SELECT * FROM Place;

SELECT * FROM PlaceAmenity;

SELECT * FROM Review;


