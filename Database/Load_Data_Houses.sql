Use houseDB;

LOAD DATA LOCAL INFILE '/Users/gordondri/Desktop/Magnolia/Address.csv'
INTO TABLE Address
FIELDS TERMINATED BY ','
	ENCLOSED BY '"' 
LINES TERMINATED BY '\r'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/gordondri/Desktop/Magnolia/Condition.csv'
INTO TABLE HouseCondition
FIELDS TERMINATED BY ','
	ENCLOSED BY '"' 
LINES TERMINATED BY '\r'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/gordondri/Desktop/Magnolia/Grade.csv'
INTO TABLE Grade
FIELDS TERMINATED BY ','
	ENCLOSED BY '"' 
LINES TERMINATED BY '\r'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/gordondri/Desktop/Magnolia/View.csv'
INTO TABLE HouseView
FIELDS TERMINATED BY ','
	ENCLOSED BY '"' 
LINES TERMINATED BY '\r'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/gordondri/Desktop/Magnolia/Waterfront.csv'
INTO TABLE Waterfront
FIELDS TERMINATED BY ','
	ENCLOSED BY '"' 
LINES TERMINATED BY '\r'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/gordondri/Desktop/Magnolia/kc_house_data_3NF.csv'
INTO TABLE KingCountyHouseInformation
FIELDS TERMINATED BY ','
	ENCLOSED BY '"' 
LINES TERMINATED BY '\r'
IGNORE 1 LINES;