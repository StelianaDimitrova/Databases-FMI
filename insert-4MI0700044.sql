insert into FN4MI0700044.CUSTOMER (NAME, PHONE_NUMBER)
values  ('Steliana Dimitrova', '0884312345'),
        ('Maria Margaritova', '0888512346'),
        ('Maya Deneva', '0887112347'),
        ('Maria Ilieva', '0877612348'),
        ('Elena Kaptieva', '0898212334'),
        ('Radoslav Radkov', '0882712349'),
        ('Viktor Stoyanov', '0884912345'),
        ('Dimitar Yordanov', '0893312335'),
        ('Teodor Nazarov', '0888812336'),
        ('Stefan Simeonov', '0878812346'),
        ('Nikol Stefanova', '0890412337'),
        ('Ivailo Rashkov', '0885012347'),
        ('Rumiana Dimitrova', '0887712348');

insert into FN4MI0700044.APPLIANCE (NAME, MODEL, APPLIANCE_ID, APPLIANCE_CATEGORY, MANUFACTURER, YEAR_OF_MANUFACTURE, CUSTOMER_PHONE_NUMBER)
values  ('KitchenAid Artisan Stand Mixer', 'KSM150PS', 10, 'Mixer', 'KitchenAid', 2005, '0888512346'),
        ('Frigidaire Microwave Oven', 'FGMO226NUD', 20, 'Oven', 'Frigidaire', 2019, '0884312345'),
        ('Philips Norelco Electric Shaver', '7500', 300, 'Electric Shaver', 'Philips', 2017, '0882712349'),
        ('LG Portable Air Conditioner', 'LP0817WSR', 40, 'Air Conditioner', 'LG', 2017, '0884912345'),
        ('KitchenAid Dual Convection Countertop Toaster Oven', 'KCO255BM', 50, 'Oven', 'KitchenAid', 2020, '0887712348'),
        ('Samsung Family Hub Refrigerator', 'RF28R7551SG', 250, 'Refrigerator', 'Samsung', 2019, '0898212334'),
        ('Electrolux Front Load Washer', 'EFLS627UTT', 70, 'Washing Machine', 'Electrolux', 2017, '0885012347'),
        ('LG French Door Refrigerator', 'LFXS28566D', 260, 'Refrigerator', 'LG', 2018, '0888812336'),
        ('Lenovo Yoga Laptop', 'C930', 270, 'Laptop', 'Lenovo', 2018, '0893312335'),
        ('Bosch 800 Series Dishwasher', 'SHXM88Z75N', 100, 'Dishwasher', 'Bosch', 2019, '0878812346'),
        ('Frigidaire Dishwasher', 'FFCD2418US', 110, 'Dishwasher', 'Frigidaire', 2019, '0887712348'),
        ('Vitamix Blender', '5200', 120, 'Blender', 'Vitamix', 2007, '0887112347'),
        ('Hamilton Beach Electric Kettle', '40880', 130, 'Electric Kettle', 'Hamilton Beach', 2012, '0877612348'),
        ('Vitamix Professional Blender', 'Series 750', 280, 'Blender', 'Vitamix', 2016, '0885012347'),
        ('Shark IQ Robot Vacuum', 'R101AE', 150, 'Vacuum', 'Shark', 2021, '0890412337'),
        ('Toshiba Microwave Oven', 'EM131A5C-SS', 160, 'Oven', 'Toshiba', 2018, '0893312335'),
        ('Samsung Smart TV', 'UN55NU8000FXZA', 290, 'TV', 'Samsung', 2018, '0890412337');

insert into FN4MI0700044.TECHNICIAN (NAME, EGN, TECHNICIAN_ID, TECHNICIAN_CATEGORY)
values  ('Vanian Karnolski', '0223456789', 1, 'Mixer'),
        ('Antonio Stefanov', '0223456788', 2, 'Oven'),
        ('Dmitry Bodurov', '0412345678', 3, 'Electric Shaver'),
        ('Preslav Marinov', '0234567891', 4, 'Air Conditioner'),
        ('Borislav Georgiev', '0193293938', 5, 'Refrigerator'),
        ('Alek Maximov', '0299348933', 6, 'Washing Machine'),
        ('Miroslav Dimitrov', '6792019202', 7, 'Laptop'),
        ('Dimitar Dimitrov', '6592392921', 8, 'Dishwasher'),
        ('Aleksandar Dimitrov', '8912020121', 9, 'Blender'),
        ('Plamen Cholakov', '7256729139', 10, 'Electric Kettle'),
        ('Anton Troshanov', '0283741901', 11, 'Vacuum'),
        ('Dosi Kolev', '0103284292', 12, 'TV');

insert into FN4MI0700044.REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
values  (10, 1, '2022-06-25', 57.00),
        (20, 2, '2022-08-15', 180.99),
        (300, 3, '2023-05-01', 35.00),
        (40, 4, '2023-02-20', 300.00),
        (50, 2, '2023-01-04', 125.50),
        (250, 5, '2022-11-30', 230.15),
        (70, 6, '2021-05-23', 120.00),
        (260, 5, '2022-12-26', 70.00),
        (270, 7, '2023-11-03', 200.00),
        (100, 8, '2022-05-06', 30.90),
        (110, 8, '2022-01-13', 85.00),
        (120, 9, '2021-05-08', 48.00),
        (130, 10, '2022-03-16', 60.50),
        (280, 9, '2022-02-07', 12.00),
        (150, 11, '2022-07-24', 82.00),
        (160, 2, '2023-04-21', 50.00),
        (290, 12, '2022-04-28', 250.00);

--new
insert into FN4MI0700044.CUSTOMER (NAME, PHONE_NUMBER)
values
    ('Georgi Petrov', '0891122334'),
    ('Anna Ivanova', '0872233445'),
    ('Stoyan Dimitrov', '0883344556'),
    ('Elena Petrova', '0894455667'),
    ('Ivan Todorov', '0875566778'),
    ('Petar Angelov', '0886677889'),
    ('Silvia Georgieva', '0897788990'),
    ('Todor Ivanov', '0878899001'),
    ('Elitsa Dimitrova', '0889000112'),
    ('Martin Georgiev', '0890111223'),
    ('Yana Stoyanova', '0871222334'),
    ('Dimitar Petrov', '0882333445'),
    ('Kristina Ivanova', '0893444556'),
    ('Nikolay Dimitrov', '0874555667'),
    ('Emilia Petrova', '0885666778'),
    ('Kamen Todorov', '0896777889'),
    ('Mariya Angelova', '0877888990'),
    ('Ivaylo Georgiev', '0888999001'),
    ('Rumyana Ivanova', '0899000112'),
    ('Iliya Dimitrov', '0870111223'),
    ('Gergana Stoyanova', '0881222334'),
    ('Stanimir Petrov', '0892333445'),
    ('Simona Ivanova', '0873444556'),
    ('Kaloyan Dimitrov', '0884555667'),
    ('Gergana Petrova', '0895666778'),
    ('Tihomir Ivanov', '0876777889'),
    ('Diana Angelova', '0887888990'),
    ('Viktor Georgiev', '0898999001');

-- Additional rows for APPLIANCE table
insert into FN4MI0700044.APPLIANCE (NAME, MODEL, APPLIANCE_CATEGORY, MANUFACTURER, YEAR_OF_MANUFACTURE, CUSTOMER_PHONE_NUMBER)
values
    ('Breville Smart Oven', 'BOV800XL', 'Oven', 'Breville', 2015, '0878899001'),
    ('Sony Noise Cancelling Headphones', 'WH-1000XM4', 'Headphones', 'Sony', 2020, '0888999001'),
    ('Dyson V11 Cordless Vacuum', 'V11', 'Vacuum', 'Dyson', 2021, '0890111223'),
    ('Apple iPhone 13', '13', 'Smartphone', 'Apple', 2021, '0892333445'),
    ('Sony Bravia 4K OLED TV', 'A8H', 'TV', 'Sony', 2020, '0873444556'),
    ('JBL Flip 5 Portable Speaker', 'Flip 5', 'Speaker', 'JBL', 2019, '0884555667'),
    ('Microsoft Surface Pro 7', 'Pro 7', 'Tablet', 'Microsoft', 2019, '0895666778'),
    ('GoPro Hero 9 Black', 'Hero 9', 'Action Camera', 'GoPro', 2020, '0876777889'),
    ('Bose QuietComfort Earbuds', 'QuietComfort', 'Earbuds', 'Bose', 2020, '0887888990'),
    ('Nikon D850 DSLR Camera', 'D850', 'Camera', 'Nikon', 2017, '0899000112'),
    ('Dell XPS 13 Laptop', 'XPS 13', 'Laptop', 'Dell', 2021, '0870111223'),
    ('Sony Playstation 5', 'PS5', 'Gaming Console', 'Sony', 2020, '0881222334'),
    ('Logitech MX Master 3 Mouse', 'MX Master 3', 'Mouse', 'Logitech', 2019, '0892333445'),
    ('Samsung Galaxy Tab S7', 'Tab S7', 'Tablet', 'Samsung', 2020, '0873444556'),
    ('Fitbit Charge 4', 'Charge 4', 'Fitness Tracker', 'Fitbit', 2020, '0884555667'),
    ('LG CX OLED 4K TV', 'CX', 'TV', 'LG', 2020, '0895666778'),
    ('Canon EOS R5 Mirrorless Camera', 'EOS R5', 'Camera', 'Canon', 2020, '0876777889'),
    ('Apple AirPods Pro', 'AirPods Pro', 'Earbuds', 'Apple', 2019, '0887888990'),
    ('HP Spectre x360 Laptop', 'Spectre x360', 'Laptop', 'HP', 2021, '0899000112'),
    ('Nintendo Switch', 'Switch', 'Gaming Console', 'Nintendo', 2017, '0870111223'),
    ('Beats Solo Pro Headphones', 'Solo Pro', 'Headphones', 'Beats', 2019, '0881222334'),
    ('Garmin Fenix 6X Pro', 'Fenix 6X Pro', 'Smartwatch', 'Garmin', 2020, '0892333445'),
    ('Sony WH-CH710N Headphones', 'WH-CH710N', 'Headphones', 'Sony', 2020, '0873444556'),
    ('Microsoft Xbox Series X', 'Xbox Series X', 'Gaming Console', 'Microsoft', 2020, '0884555667'),
    ('Ring Video Doorbell Pro', 'Video Doorbell Pro', 'Smart Home', 'Ring', 2019, '0895666778'),
    ('Sonos Beam Soundbar', 'Beam', 'Soundbar', 'Sonos', 2018, '0876777889'),
    ('Google Nest Hub Max', 'Nest Hub Max', 'Smart Home', 'Google', 2019, '0887888990');

INSERT INTO FN4MI0700044.APPLIANCE (NAME, MODEL, APPLIANCE_CATEGORY, MANUFACTURER, YEAR_OF_MANUFACTURE, CUSTOMER_PHONE_NUMBER)
VALUES
    ('Samsung Galaxy S21', 'S21', 'Smartphone', 'Samsung', 2021, '0890111223'),
    ('iPhone 13 Pro', '13 Pro', 'Smartphone', 'Apple', 2021, '0892333445'),
    ('OnePlus 9', '9', 'Smartphone', 'OnePlus', 2021, '0873444556'),
    ('Google Pixel 6', 'Pixel 6', 'Smartphone', 'Google', 2021, '0884555667'),
    ('Samsung Galaxy A52', 'A52', 'Smartphone', 'Samsung', 2021, '0895666778'),
    ('iPhone 13 Mini', '13 Mini', 'Smartphone', 'Apple', 2021, '0876777889'),
    ('Xiaomi Mi 11', 'Mi 11', 'Smartphone', 'Xiaomi', 2021, '0887888990'),
    ('Samsung Galaxy Z Fold 3', 'Z Fold 3', 'Smartphone', 'Samsung', 2021, '0899000112');

insert into FN4MI0700044.TECHNICIAN (NAME, EGN, TECHNICIAN_CATEGORY)
values
    ('Irina Vasileva', '0367890123', 'Mixer'),
    ('Svetoslav Ivanov', '0123456780', 'Oven'),
    ('Veronika Kostova', '0987654321', 'Electric Shaver'),
    ('Ivan Radev', '0478012345', 'Air Conditioner'),
    ('Mihaela Petrova', '0823456789', 'Refrigerator'),
    ('Dimitar Georgiev', '0923456781', 'Washing Machine'),
    ('Radoslav Ivanov', '0912345678', 'Laptop'),
    ('Ekaterina Petrova', '0334567890', 'Dishwasher'),
    ('Stanimir Dimitrov', '0367890124', 'Blender'),
    ('Elena Stoyanova', '0412345679', 'Electric Kettle'),
    ('Ivaylo Ivanov', '0267890123', 'Vacuum'),
    ('Kristina Dimitrova', '0312345678', 'TV'),
    ('Hristo Hristov', '0590123456', 'Mixer'),
    ('Nina Georgieva', '0634567890', 'Oven'),
    ('Antonina Koleva', '0845678901', 'Electric Shaver'),
    ('Boyan Ivanov', '0978901234', 'Air Conditioner'),
    ('Victoria Dimitrova', '0456789012', 'Refrigerator'),
    ('Martin Ivanov', '0712345678', 'Washing Machine');

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (300, 1, '2024-02-10', 60.00),
  (440, 4, '2024-02-11', 70.50),
  (510, 7, '2024-02-12', 110.00),
  (600, 10, '2024-02-13', 85.00),
  (660, 12, '2024-02-14', 95.50);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (160, 3, '2024-02-15', 75.00),
  (570, 6, '2024-02-16', 120.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (490, 9, '2024-02-17', 55.50),
  (430, 11, '2024-02-18', 105.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (420, 141, '2024-02-20', 65.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (130, 171, '2024-02-21', 90.00),
  (290, 172, '2024-02-22', 40.50),
  (150, 173, '2024-02-23', 115.00),
  (460, 174, '2024-02-24', 50.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (470, 176, '2024-02-26', 95.00),
  (530, 177, '2024-02-27', 70.50);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (600, 141, '2024-03-01', 70.00),
  (610, 161, '2024-03-02', 105.00),
  (670, 178, '2024-03-10', 40.00),
  (10, 141, '2024-02-10', 60.00),
  (20, 161, '2024-02-11', 75.50),
  (300, 162, '2024-02-12', 90.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (40, 163, '2024-02-13', 40.00),
  (50, 164, '2024-02-14', 120.00),
  (250, 165, '2024-02-15', 65.00),
  (70, 166, '2024-02-16', 30.00),
  (260, 167, '2024-02-17', 85.50),
  (270, 168, '2024-02-18', 110.00),
  (100, 169, '2024-02-19', 55.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (110, 170, '2024-02-20', 80.00),
  (120, 171, '2024-02-21', 95.00),
  (130, 172, '2024-02-22', 70.00),
  (280, 173, '2024-02-23', 120.50),
  (150, 174, '2024-02-24', 45.00),
  (160, 175, '2024-02-25', 100.00),
  (290, 176, '2024-02-26', 130.00),
  (410, 177, '2024-02-27', 60.00),
  (420, 178, '2024-02-28', 25.50);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (650, 141, '2024-03-10', 40.00),
  (660, 178, '2024-03-11', 45.50),
  (670, 162, '2024-03-12', 70.00),
  (680, 163, '2024-03-13', 35.00),
  (690, 164, '2024-03-14', 110.00),
  (700, 165, '2024-03-15', 75.50),
  (710, 166, '2024-03-16', 90.00),
  (720, 167, '2024-03-17', 40.00),
  (730, 168, '2024-03-18', 120.00),
  (740, 169, '2024-03-19', 55.90),
  (750, 170, '2024-03-20', 80.00);

INSERT INTO REPAIR (APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE)
VALUES
  (500, 141, '2024-03-21', 65.00),
  (510, 172, '2024-03-22', 75.50),
  (520, 173, '2024-03-23', 90.00),
  (530, 174, '2024-03-24', 40.00),
  (540, 175, '2024-03-25', 120.00),
  (550, 176, '2024-03-26', 65.00),
  (560, 177, '2024-03-27', 30.00),
  (570, 178, '2024-03-28', 85.50),
  (580, 1, '2024-03-29', 110.00),
  (590, 2, '2024-03-30', 55.00),
  (600, 3, '2024-03-31', 80.00),
  (610, 4, '2024-04-01', 95.00),
  (620, 5, '2024-04-02', 70.00),
  (630, 6, '2024-04-03', 120.50),
  (640, 7, '2024-04-04', 45.00),
  (650, 8, '2024-04-05', 100.00);

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '02' THEN '72' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '01' THEN '81' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '09' THEN '59' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '08' THEN '86' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '07' THEN '97' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '06' THEN '00' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '05' THEN '68' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE TECHNICIAN
SET EGN = CASE
    WHEN LEFT(EGN, 2) = '04' THEN '75' || RIGHT(EGN, LENGTH(EGN) - 2)
    ELSE EGN
END;

UPDATE REPAIR
SET DATE =
  CASE
    WHEN MONTH(DATE) IN (2, 3) AND YEAR(DATE) = 2024 THEN DATE - 1 YEAR
    ELSE DATE
  END;
