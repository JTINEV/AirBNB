rem
rem
rem Author: Juana Valentina Plaza Azcarate
rem Created at: Aug-31-2024
rem
rem

--Alter tables commands for PRIMARY KEY CONSTRAINTS--

ALTER TABLE UserAccount
ADD CONSTRAINT pk_us_id PRIMARY KEY (id);

ALTER TABLE Amenity
ADD CONSTRAINT pk_am_id PRIMARY KEY (id);

ALTER TABLE State
ADD CONSTRAINT pk_st_id PRIMARY KEY (id);

ALTER TABLE City
ADD CONSTRAINT pk_city_id PRIMARY KEY (id);

ALTER TABLE Place
ADD CONSTRAINT pk_pl_id PRIMARY KEY (id);

ALTER TABLE Review
ADD CONSTRAINT pk_review_id PRIMARY KEY (id);


--Alter tables commands for FOREIGN KEY CONSTRAINTS--

ALTER TABLE City 
ADD CONSTRAINT fk_state_id FOREIGN KEY (state_id) REFERENCES State(id)
;

ALTER TABLE Place
ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES UserAccount(id)
ADD CONSTRAINT fk_city_id FOREIGN KEY (city_id) REFERENCES City(id)
;

ALTER TABLE PlaceAmenity
ADD CONSTRAINT fk_amenity_id FOREIGN KEY (amenity_id) REFERENCES Amenity(id)
ADD CONSTRAINT fk_place_id FOREIGN KEY (place_id) REFERENCES Place(id)
;

ALTER TABLE Review
ADD CONSTRAINT fk_user_id_us FOREIGN KEY (user_id) REFERENCES UserAccount(id)
ADD CONSTRAINT fk_place_id_pl FOREIGN KEY (place_id) REFERENCES Place(id)
;




