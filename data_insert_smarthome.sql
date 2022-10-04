-- Inserting Data into the tables

INSERT INTO Floor VALUES
(1),
(2),
(3);

INSERT INTO Room VALUES
(1, "Living Room", 2),
(2, "Main Office", 1),
(3, "Secondary Office", 3),
(4, "Bathroom One", 2),
(5, "Master Bathroom", 3),
(6, "Master Bedroom", 3),
(7, "Bedroom One", 2),
(8, "Bedroom Two", 1),
(9, "Family Room", 1),
(10, "Kitchen", 2),
(11, "Dining Room", 2),
(12, "Laundry Room", 1);

INSERT INTO Closet VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 6),
(5, 7),
(6,7),
(7,8),
(8,10);


INSERT INTO Person VALUES
(1, "Person1", 28, "Female", "1994-08-06", "617-991-1111"),
(2, "Person2", 42, "Male", "1980-04-12", "617-991-2222"),
(3, "Person3", 22, "Female", "2000-12-16", "859-654-1212"),
(4, "Person4", 47, "Female", "1975-07-22", "859-654-1333"),
(5, "Person5", 50, "Male", "1972-07-12", "859-654-9999"),
(6, "Person6", 82, "Female", "1940-01-20", "859-654-7788");

INSERT INTO Appliance VALUES
(1, "Microwave", "GE", 10),
(2, "StoveOven", "GE", 10),
(3, "Toaster", "Revolution", 10),
(4, "Air Fryer", "Ninja", 10),
(5, "Espresso Maker", "Nespresso", 10),
(6, "Washer", "LG", 12),
(7, "Blender", "Ninja", 10),
(8, "Vacuum", "Dyson", 12),
(9, "DishWasher", "GE", 10);

INSERT INTO Electronic VALUES
(1, "Macbook Pro", 1, 2),
(2, "Macbook Pro", 2, 3),
(3, "Macbook Pro", 3, 8),
(4, "Ipad", 1, 2),
(5, "Ipad", 2, 3),
(6, "Ipad", 4, 7),
(7, "Earpods", 1, 9),
(8, "Earpods", 2, 3),
(9, "Earpods", 3, 8),
(10,"Apple TV", 1, 1),
(11, "Apple TV", 1, 9),
(12, "TV", 1, 7),
(13, "TV", 1, 8),
(14, "Playstation", 5, 7),
(15, "XBOX", 3, 8),
(16, "Playstation", 2, 9);

INSERT INTO Accessory VALUES
(1, "Earrings", "Clear", 1, "Kay", 6),
(2, "Ring", "Blue", 1, "Michael Kors", 6),
(3, "Purse", "Brown", 1, "Michael Kors", 6),
(4, "Purse", "Navy", 1, "Kate Spade", 6),
(5, "Belt", "Brown", 2, "Levi's", 6),
(6, "Belt", "Black", 2, "Banana Republic", 6),
(7, "Hat", "Black", 2, "Adidas", 6),
(8, "Bracelet", "Silver", 3, "Kate Spade", 8),
(9, "Earrings", "Blue", 3, "Macys", 8),
(10, "Purse", "Brown", 3, "Kate Spade", 8),
(11, "Purse", "Mint", 4, "Kate Spade", 7),
(12, "Belt", "Brown", 5, "Levi's", 7),
(13, "Purse", "Navy", 6, "Vera Bradley", 9);

INSERT INTO Pharmaceutical VALUES
(1, "Allergy", "Zyrtec", 1, "2023-06-01", "No", 5),
(2, "Pain Reliever", "ibuprofen", 2, "2024-01-01", "No", 5),
(3, "Antibiotics", "Amoxicillin", 2, "2023-02-02", "Yes", 10),
(4, "Antidepressants", "Sertraline", 3, "2023-03-05", "Yes", 8),
(5, "Antidepressants", "Sertraline", 4, "2023-06-05", "Yes", 4),
(6, "Acid Reducer", "Pepcid AC", 5, "2024-05-11", "Yes", 4),
(7, "Pain Reliever", "Tylenol", 4, "2024-10-10", "No", 4),
(8, "Anxiety", "Prozac", 6, "2024-01-20", "Yes", 10);

INSERT INTO shoe VALUES
(1, "8.5", "Tan", 1, "Adidas", 4),
(2, "8.5", "Orange", 1, "Nike", 4),
(3, "8.5", "Brown", 1, "Sorel", 1),
(4, "8.5", "Black", 1, "Michael Kors", 1),
(5, "8.5", "White", 2, "Nike", 4),
(6, "9", "Brown", 2, "JCrew", 1),
(7, "8", "Gray", 2, "Adidas", 4),
(8, "9.5", "Brown", 3, "Vans", 7), 
(9, "8.5", "Red", 2, "Vans", 1),
(10, "9.5", "Blue", 3, "Vans", 1),
(11, "9", "White", 4, "Sketchers", 1),
(12, "9", "Tan", 4, "Hey Dudes", 5),
(13, "10", "White", 5, "New Balance", 1),
(14, "10", "Brown", 5, "Carhartt", 5),
(15, "8", "White", 6, "Adidas", 1),
(16, "8", "Brown", 6, "Dr.Sholls", 1);

INSERT INTO Clothing VALUES
(1, "Dress", 1, "L", "Tommy Hilfiger", 4),
(2, "Jacket", 1, "XL", "The North Face", 4),
(3, "Pants", 1, "L", "Adidas", 4),
(4, "Hoodie", 1, "L", "Adidas", 4),
(5, "Jacket", 1, "L", "JCrew", 1), 
(6, "Hijab", 1, "XL", "ModestGirlz", 1),
(7, "Blazer", 1, "L", "H&M", 4),
(8, "Jacket", 2, "M", "Banana Republic", 1),
(9, "Button Down", 2, "M", "JCrew", 4),
(10, "Sweater", 2, "M", "Barbour", 4),
(11, "TShirt", 2, "M", "Barbour", 4),
(12, "Jacket", 2, "M", "The North Face", 1),
(13, "Blazer", 2, "M", "Banana Republic", 4),
(14, "Dress", 3, "XL", "H&M", 7),
(15, "Dress", 3, "XL", "H&M", 7),
(16, "Dress", 3, "XL", "Old Navy", 7),
(17, "Skirt", 3, "XL", "Target", 7),
(18, "Tshirt", 3, "XL", "Vans", 7),
(19, "Pants", 3, "XL", "Vans", 7),
(20, "Tshirt", 4, "XXL", "Old Navy", 5),
(21, "Tshirt", 4, "XXL", "Old Navy", 5),
(22, "Jeans", 4, "XXL", "Levi's", 5),
(23, "Pants", 4, "XXL", "Khols", 5),
(24, "Tshirt", 5, "XXL", "Target", 5),
(25, "Tshirt", 5, "XXL", "Khols", 5),
(26, "Jeans", 5, "XL", "Levi's", 5),
(27, "Jacket", 5, "XXL", "Carhartt", 1),
(28, "Tshirt", 6, "L", "Crackle Barrel", 7),
(29, "Sweater", 6, "L", "Crackle Barrel", 7),
(30, "Blouse", 6, "L", "Nine West", 7),
(31, "Jacket", 6, "L", "Nine West", 1);

INSERT INTO Self_Care_Item VALUES
(1, "Face Cream", "Neutrogena", 5, 1),
(2, "Face Mask", "Que Bella", 5, 1),
(3, "Retional Serum", "Neutrogena", 5, 1),
(4, "Face Cream", "Neutrogena", 5, 2),
(5, "Shaving Cream", "Gillette", 5, 2),
(6, "Face Cream", "The Ordinary", 4, 3),
(7, "Retional Serum", "The Ordinary", 4, 3),
(8, "Face Cream", "Olay", 4, 4),
(9, "Shaving Cream", "Old Spice", 4, 5),
(10, "Face Cream", "Olay", 4, 6),
(11, "Bath Salts", "Dr. Teals", 4, 6);













