rem
rem
rem Author: Juana Valentina Plaza Azcarate
rem Created at: Aug-31-2024
rem
rem


--Create tables commands--

CREATE TABLE UserAccount(
    id VARCHAR2(12),
    updated_at DATE,
    created_at DATE,
    email VARCHAR2(30),
    password VARCHAR2(12),
    first_name VARCHAR2(30),
    last_name VARCHAR2(30)
);


CREATE TABLE Amenity(
    id VARCHAR2(12),
    updated_at DATE,
    created_at DATE,
    name VARCHAR2(20)
);


CREATE TABLE State(
    id VARCHAR2(12),
    updated_at DATE,
    created_at DATE,
    name VARCHAR2(20)
);


CREATE TABLE City(
    id VARCHAR2(12),
    updated_at DATE,
    created_at DATE,
    state_id VARCHAR2(12),
    name VARCHAR2(12)
);


CREATE TABLE Place(
    id VARCHAR2(12),
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR2(12),
    name VARCHAR2(40),
    city_id VARCHAR2(40),
    description VARCHAR2(255),
    number_rooms INTEGER DEFAULT 0,
    number_bathrooms INTEGER DEFAULT 0,
    max_guest INTEGER DEFAULT 0,
    price_by_night INTEGER DEFAULT 0,
    latitude FLOAT,
    longitude FLOAT
);


CREATE TABLE PlaceAmenity(
    amenity_id VARCHAR2(12),
    place_id VARCHAR2(12)
);


CREATE TABLE Review(
    id VARCHAR2(12),
    updated_at  DATE,
    created_at DATE,
    user_id VARCHAR2(12),
    place_id VARCHAR2(40),
    text VARCHAR2(40)
);


