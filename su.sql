use SU

create table Administrators (
Admin_ID varchar (15)primary key,
Administrator_First_Name char(15),
Administrator_Second_Name char(15),
Email varchar(45),
)

SELECT *FROM Administrators
INSERT INTO Administrators
(Admin_ID,Administrator_First_Name,Administrator_Second_Name, Email)
values ('13819850','Michael',' Stewart','mike12stewart@yahoo.com'),
('36895584','Laurent',' Styles','laurent34sty@yahoo.com')

 Create table Manufacturers (
 Manufacturer_ID varchar(10) primary key,
 Manufacturer_Name char(30),
 Admin_ID varchar(15) foreign key References Administrators (Admin_ID),
 Date_of_Manufacture date,
 )
 SELECT *FROM Manufacturers
 INSERT INTO Manufacturers
 (Manufacturer_ID,Manufacturer_Name,Admin_ID,Date_of_Manufacture)
 values( 'F135D','Toyota','13819850','11-03-2019'),
 ('6738D','Jeep Inc.','13819850','10-03-2018'),
 ('2938HG','Stellantis','36895584','12-10-2020'),
 ('328RW','Tesla Inc.','13819850','05-05-2020'),
 ('1934GU','Subaru Corporation','36895584','09-04-2019'),
 ('0457FD','Toyota','36895584','05-04-2019'),
 ('HDGU7','S.P.A','13819850','03-05-2018'),
 ('194HO5','Groupe','13819850','02-10-2020'),
 ('DDHS77','Volvo Cars','36895584','10-10-2017'),
 ('7RG48','Traction','36895584','10-03-2019'),
 ('M8SHF','Daimler AG','36895584','01-03-2021'),
 ('98S4H','BMW','13819850','10-12-2019'),
 ('93DH9','JLR','13819850','09-03-2020'),
 ('0D87F','VW','36895584','10-11-2018'),
 ('92HWH','Tesla Inc.','36895584','10-11-2020'),
 ('4D658','Hyundai Motor Group','36895584','10-12-2018'),
 ('S7E9E0','Ford Motors','13819850','11-04-2019'),
 ('384JFD','Nissan','36895584','04-05-2019'),
 ('389DH','VW','13819850','04-03-2019')



create table uni_car(
Car_ID varchar (10) primary key,
Car_Name varchar (30),
Manufacturer_Name char (25),
Manufacturer_ID varchar (10),
Date_of_Manufacture date,
)
SELECT *FROM uni_car 
INSERT INTO uni_car
(Car_ID, Car_Name, Manufacturer_Name,Manufacturer_ID, Date_of_Manufacture)
values ('KAZ08H', 'Forester','Toyota','F135D', '04-05-2019'),
('KEG7Q','Mark X','Toyota','6738D', '04-05-2020'),
('A7M40','Mercedes E35','Daimler AG','2938HG', '04-05-2018'),
('KMED4','Peugeot','Stellantis','328RW', '04-05-2020'),
('KCD04','VW Beetle','VW','1934GU', '04-05-2020'),
('MSO5Q','Hyundai','Hyundai Motor Group','0457FD','04-05-2017'),
('NQE76','Tesla','Telsa Inc.','HDGU7', '04-05-2019'),
('KNGD5','Audi','VW','194HO5', '04-05-2019'),
('XCVG0','Subaru','Subaru Corporation','DDHS77', '04-05-2018'),
('Z0ORT','Lexus','Toyota','7RG48', '04-05-2018'),
('TSA12','Jeep','Jeep Inc','M8SHF', '04-05-2019'),
('CLG98','Porsche', 'VW','98S4H','11-04-2020'),
('9L64M','Volvo', 'Volvo Cars','93DH9','11-04-2020'),
('NQWE7','Renault','Groupe','0D87F','11-04-2018'),
('A0A8C','Toyota', 'Toyota','92HWH', '11-04-2020'),
('8AAZ4','Seat','VW','4D658','11-04-2019'),
('ZAX42','Land rover','JLR','S7E9E0','11-04-2019'),
('PQSU2', 'Ford', 'Ford Motors','384JFD','11-04-2019'),
('14S42','Nissan','Nissan','389DH','11-04-2018'),
('USDE3','Mini','BMW','F135D','11-04-2020'),
('EURO34','Citroen','Traction','6738D','11-04-2019'),
('RAND43','S.P.A','S.P.A','2938HG','11-04-2019'),
('ADFV3','AB Volvo','Volvo','328RW','11-04-2018'),
('OR0NY','Ferari','S.p.a','1934GU','11-04-2020'),
('QWERTY','Harrier','Toyota','0457FD','11-04-2019'),
('SD34F','Discovery S4','Daimler AG','HDGU7','11-04-2020')

create table Car_Purchaser (
Car_Buyer_Reg_no int primary key,
Car_Buyer_Name char(15),
Car_ID varchar(10) foreign key References uni_car(Car_ID),
Email varchar(15), 
Date_of_Buying date,
)
Alter table Car_Purchaser
Alter Column Email varchar (25)

Alter table Car_Purchaser 
Alter Column Car_Buyer_Name char (25)

SELECT *FROM Car_Purchaser
INSERT INTO Car_Purchaser
(Car_Buyer_Reg_no ,Car_Buyer_Name,Car_ID,Email,Date_of_Buying)
values ('345295','Stuargat Liam','USDE3','stuargat2@gmail.com','09-09-2018'),
 ('657359','Kelvin Paul','OR0NY','stuargat2@gmail.com','12-11-2020'),
 ('453459','Daniel Gichana','USDE3','stuargat2@gmail.com','01-03-20019'),
 ('009457','Zac Otieno ','USDE3','stuargat2@gmail.com','05-09-2019'),
 ('780675','Alex Mobisa ','14S42','stuargat2@gmail.com','07-03-2018'),
 ('987453','Liam Paynne','8AAZ4','payneliam2@gmail.com','07-07-2020'),
 ('156296','Joel Mageto','A0A8C','mageto34joel@yahoo.com','11-11-2019'),
 ('673022','Rusell Wilson','A0A8C','russwilson@gmail.com','10-10-2018'),
 ('752927','Sebastian Wilson','Z0ORT','sebwislson67@gmail.com','10-11-2020')

 create table Spare_Parts (
Spare_Part_ID int primary key,
Spare_Part_Name char(15),
Manufacturer_ID varchar(10) foreign key References Manufacturers (Manufacturer_ID),
Manufacturer_Name char(20),
Status varchar(15),
Date_of_Manufacturer date,
)
SELECT *FROM Spare_Parts
 INSERT INTO Spare_Parts
 (Spare_Part_ID,Spare_Part_Name,Manufacturer_ID,Manufacturer_Name,Status,Date_of_Manufacturer)
 values('657','Bonnet','F135D','Groupe', 'In stock', '12-04-2016'),
 ('459','Cowl Screen','6738D','Tesla Inc','Out stock','11-05-2019'),
 ('073','Grille','2938HG','Toyota','Out of stock','07-11-2017'),
 ('834','Pillar','328RW','Stellantis','In stock','08-09-2019'),
 ('036','Rocker','1934GU','Jeep Inc.','In stock','10-11-2020'),
 ('250','Spoiler','0457FD','S.P.A','In stock','11-07-2009'),
 ('739','Head Lamps','HDGU7','Daimler AG','In Stock','11-09-2019')

 create table Spare_Part_Purchaser (
Spare_Part_Buyer_ID varchar(15) primary key,
Spare_Part_Buyer_Name char(15),
Spare_Part_Name char (15),
Spare_Part_ID int foreign key References Spare_Parts(Spare_Part_ID),
 Email varchar (15),
)
ALTER Table Spare_Part_Purchaser
ALTER Column Email varchar (25)

Alter Table Spare_Part_Purchaser
Alter Column Spare_Part_Name char (25);

SELECT *FROM Spare_Part_Purchaser
INSERT INTO Spare_Part_Purchaser
(Spare_Part_Buyer_ID,Spare_Part_Buyer_Name,Spare_Part_ID,Spare_Part_Name,Email)
values ('345TF','Karen William','657','Bonnet','willkaren2@gmail.com'),
('223AS','Payne Sunny','073','Grille','payne34sun@gmail.com'),
('09MJ8','Sandra Moige','036','Rocker','sanny56@gmail.com'),
('675JJ','Daniel Paul','250','Spoiler','danny76@gmail.com'),
('54CW3','Paul Stewart','834','Pillar','paul12stwa@gmail.com'),
('07BK6','Annie Gacharia','073','Griller','annie13@gmail.com'),
('975F','Geff Ongoro','073','Griller','geffongoro23@gmail.com')


create table Sales_and_Marketing(
Agent_ID int primary key,
Agent_Name char(15),
Gender char(5),
 Admin_ID varchar(15) foreign key References Administrators (Admin_ID),
Agent_Email varchar(15),
)
Alter Table Sales_and_Marketing
Alter Column Agent_Email varchar (25)

SELECT *FROM Sales_and_Marketing
INSERT INTO Sales_and_Marketing
(Agent_ID,Agent_Name,Gender,Admin_ID,Agent_Email)
values
('7874','Purity Mosomi','F','13819850','mosomi12@yahoo.com'),
('2347','Benson Michomi','M','13819850','ben34m@gmail.com'),
('2538','Bina Kwamboka','F','36895584','mosomi12@yahoo.com'),
('6839','Sandra Mobisa','F','36895584','mobisa34@gmail.com'),
('9597','Euniter Nyaboke','F','36895584','eunyaboke12@yahoo.com'),
('7845','Wilson Prince','M','36895584','wilson12seb@gmail.com')


/* Queries */

/*Details of Advertising agents*/
SELECT *
FROM Sales_and_Marketing order by Gender;

/* List all administrator details from the Administrators  table order by Fisrt Name ascending*/
SELECT *
FROM Administrators order by Administrator_First_Name ;

/*List ID of all sold the cars*/
SELECT Car_ID
FROM Car_Purchaser;

/*list details on spare parts with manufactureer ID 13b75f*/
SELECT *
FROM Spare_Parts
WHERE Manufacturer_ID='328RW';

/*Combine Manufacturers ID with Admin ID to one table*/

 SELECT  Manufacturers.Manufacturer_ID, Administrators.Admin_ID
 FROM Manufacturers
 CROSS JOIN Administrators
 Select Manufacturers.Manufacturer_ID, Administrators.Admin_ID
 FROM Manufacturers, Administrators;



/* Fetch names of Sales and Maekerting agents associated most with Admin  with ID 36895584*/
SELECT Agent_Name
FROM Sales_and_Marketing
WHERE Admin_ID ='36895584';

/*Display products manufactured by the  manufacturer with ID F135D*/
SELECT Car_Name
FROM uni_car
WHERE Manufacturer_ID = 'F135D'
UNION
SELECT Spare_Part_Name
FROM Spare_Parts
WHERE Manufacturer_ID='F135D';

/*What Spare parts were manufactured from 11-07-2017*/
SELECT Date_of_Manufacturer
FROM Spare_Parts
WHERE Date_of_Manufacturer>'11-07-2017'

 /* Fetch car IDs of cars manuufactured by toyota*/
SELECT Car_ID
From uni_car
WHERE Manufacturer_Name= 'Toyota';

/*  List of cars bought after 05-09-2019*/
SELECT Date_of_Buying
From Car_Purchaser
WHERE Date_of_Buying >'05-08-2019';
