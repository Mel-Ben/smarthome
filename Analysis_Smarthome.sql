-- Analyzing the Data

USE smarthome;

-- How many electronics does each member of the family have? 

SELECT COUNT(electronic_id) AS Total_Electronics, person_name
FROM Electronic
JOIN Person
ON Person.person_id = electronic.electronic_owner
GROUP BY electronic_owner
ORDER BY Total_Electronics DESC;


SELECT Total_Electronics, person_name FROM
(
SELECT COUNT(electronic_id) AS Total_Electronics, electronic_owner
FROM Electronic
GROUP BY electronic_owner
ORDER BY Total_Electronics DESC
) as nnn JOIN person
ON Person.person_id = nnn.electronic_owner; 


-- What appliances are located in the Kitchen?
SELECT Appliance.appliance_type -- Room.room_name --
FROM Appliance
JOIN Room ON Room.room_id = Appliance.room_id
WHERE room_name = "Kitchen";

-- What Pharmaceuticals in the house require a prescripton, include type and name?
SELECT pharmaceutical_type, pharmaceutical_brand
FROM Pharmaceutical
WHERE prescription = "Yes";

-- Find all Pharmaceuticals that expire before March 15, 2023?
SELECT *
FROM Pharmaceutical
WHERE expiration_date BETWEEN current_date() AND '2023-03-15';

-- You can also find the same results using the query below --

SELECT *
FROM Pharmaceutical
WHERE expiration_date < '2023-03-15';

-- What kind of medicine is in the house for pain reliever and what is the locations?
SELECT pharmaceutical_brand, pharmaceutical_type, Room.room_name
FROM Pharmaceutical
JOIN Room ON room.room_id = Pharmaceutical.pharmaceutical_location
WHERE pharmaceutical_type = "Pain Reliever";
/* 
Add Floor
*/

-- What are the names of people in the home that take medicine for Anxiety?
SELECT pharmaceutical.pharmaceutical_type, person.person_name
From Pharmaceutical
JOIN Person ON pharmaceutical.pharmaceutical_owner=person.person_id
where pharmaceutical_type = "Anxiety";

/* 
Add age, gender
*/

-- What items of clothing does Person 2 own and what brands?
SELECT clothing_type, clothing_brand
From Clothing
WHERE clothing_owner = 2
ORDER BY clothing_brand;

-- What items are in closet 4?  

SELECT Closet_id AS Master_Closet, Shoe.shoe_brand, Clothing.clothing_type
FROM Closet
JOIN Shoe
ON Shoe.shoe_location = Closet.closet_id
JOIN Clothing
ON Clothing.clothing_location = Closet.closet_id
WHERE closet_id = 4;

-- How many accessories does each person own?

SELECT COUNT(accessory_id) AS Total_Accessory, person_name
FROM Accessory JOIN Person
ON person.person_id = Accessory.accessory_owner
GROUP BY (accessory_owner);

-- What is the most popular brand among the accessories?
SELECT accessory_brand FROM
(SELECT accessory_brand, COUNT(accessory_brand) AS Total_Accessories
FROM Accessory
GROUP BY accessory_brand
ORDER BY Total_Accessories DESC 
LIMIT 1) AS most_brand;

-- What accessories (including type, color, brand) does Person 3 have in the home and where are they located?
SELECT Accessory.accessory_type, Accessory.accessory_color, Accessory.accessory_brand, Room.room_name
FROM Accessory
JOIN Room
ON Accessory.accessory_location = Room.room_id
WHERE accessory_owner = 3;

-- Who owns Apple Inc. products and what are the products? 
SELECT Electronic.electronic_name, Person.person_name
FROM Electronic
JOIN Person
ON Electronic.electronic_owner = Person.person_id
WHERE electronic_name = "Ipad" OR electronic_name = "Macbook Pro" OR electronic_name = "Apple TV" OR electronic_name = "Earpods"
ORDER BY electronic_owner;

-- What kind of Self Care Items and brands do Person 1 and Person 3 use?
SELECT Self_Care_Item.selfcare_type, Self_Care_Item.selfcare_brand, GROUP_CONCAT(person_name)
FROM Self_Care_Item
JOIN Person
ON Self_Care_Item.selfcare_owner = Person.person_id;


-- What kind of Self Care Items are used by multople people?
SELECT Self_Care_Item.selfcare_type,  GROUP_CONCAT(person_name, ' ') as list1
FROM Person
INNER JOIN Self_Care_Item
ON Self_Care_Item.selfcare_owner = Person.person_id
GROUP BY selfcare_type
HAVING LENGTH(list1) > 7 ;


-- Who wears the largest shoe size?
SELECT Shoe.shoe_size, Person.person_name
FROM Shoe
JOIN Person
ON Shoe.shoe_owner = Person.person_id
ORDER BY shoe_size DESC
LIMIT 1;

SELECT person_id, GROUP_CONCAT(clothing_type) as clothes
FROM Person
JOIN Clothing
ON person.person_id = clothing.clothing_owner
GROUP BY person_id;


