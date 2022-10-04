CREATE DATABASE smarthome;
USE smarthome;

-- Creating Tables 
CREATE TABLE Floor 
(floor_id INT PRIMARY KEY);

CREATE TABLE Room
(room_id INT PRIMARY KEY,
room_name VARCHAR (50),
room_location INT,
CONSTRAINT located_on FOREIGN KEY (room_location) REFERENCES Floor (floor_id)
  ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Closet
(closet_id INT PRIMARY KEY,
room_id INT,
CONSTRAINT Installed_in FOREIGN KEY (room_id) REFERENCES Room (room_id)
  ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Person
(person_id INT PRIMARY KEY,
person_name VARCHAR (50),
person_age INT,
person_sex VARCHAR (50),
person_dob DATE,
person_phone TEXT);


CREATE TABLE Appliance
(appliance_id INT PRIMARY KEY,
appliance_type VARCHAR (50),
appliance_brand VARCHAR (50), 
room_id INT,
CONSTRAINT Found_in FOREIGN KEY (room_id) REFERENCES Room (room_id)
  ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Electronic
(electronic_id INT PRIMARY KEY,
electronic_name VARCHAR (50),
electronic_owner INT, 
electronic_location INT,
CONSTRAINT Operated_by FOREIGN KEY (electronic_owner) REFERENCES Person (person_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT Situated_in FOREIGN KEY (electronic_location) REFERENCES Room (room_id)
  ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Accessory 
(accessory_id INT PRIMARY KEY,
accessory_type VARCHAR (50),
accessory_color VARCHAR (50),
accessory_owner INT,
accessory_brand VARCHAR (50),
accessory_location INT,
CONSTRAINT Used_by FOREIGN KEY (accessory_owner) REFERENCES Person (person_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT Placed_in FOREIGN KEY (accessory_location) REFERENCES Room (room_id)
  ON UPDATE CASCADE ON DELETE CASCADE);
drop TABLE Pharmaceutical;
CREATE TABLE Pharmaceutical
(pharmaceutical_id INT PRIMARY KEY,
pharmaceutical_type VARCHAR (50),
pharmaceutical_brand VARCHAR (50),
pharmaceutical_owner INT,
expiration_date DATE,
prescription VARCHAR(5),
pharmaceutical_location INT,
CONSTRAINT Prescribed_to FOREIGN KEY (pharmaceutical_owner) REFERENCES Person (person_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT Locked_in FOREIGN KEY (pharmaceutical_location) REFERENCES Room (room_id)
  ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE shoe
(shoe_id INT PRIMARY KEY,
shoe_size FLOAT,
shoe_color VARCHAR (50),
shoe_owner INT,
shoe_brand VARCHAR (50),
shoe_location INT,
CONSTRAINT Owned_by FOREIGN KEY (shoe_owner) REFERENCES Person (person_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT Stacked_in FOREIGN KEY (shoe_location) REFERENCES Closet (closet_id)
  ON UPDATE CASCADE ON DELETE CASCADE);
  

CREATE TABLE Clothing
(clothing_id INT PRIMARY KEY,
clothing_type VARCHAR (50),
clothing_owner INT,
clothing_size VARCHAR (3),
clothing_brand VARCHAR (50),
clothing_location INT,
CONSTRAINT Worn_by FOREIGN KEY (clothing_owner) REFERENCES Person (person_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT Hanging_in FOREIGN KEY (clothing_location) REFERENCES Closet (closet_id)
  ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Self_Care_Item
(selfcare_id INT PRIMARY KEY,
selfcare_type VARCHAR (50),
selfcare_brand VARCHAR (50),
selfcare_location INT,
selfcare_owner INT,
CONSTRAINT Organized_in FOREIGN KEY (selfcare_location) REFERENCES Room (room_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT Utilized_by FOREIGN KEY (selfcare_owner) REFERENCES Person (person_id)
  ON UPDATE CASCADE ON DELETE CASCADE);


