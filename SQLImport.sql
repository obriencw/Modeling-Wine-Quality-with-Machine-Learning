--drop table red_wine ;

-- Create table with the outcome (quality) and 11 features for red wine
CREATE TABLE red_wine (
     fixed_acidity float ,
	     volatile_acidity float ,
	     citric_acid float ,
	     residual_sugar float ,
	     chlorides float ,
	     free_sulfur_dioxide float ,
	     total_sulfur_dioxide float ,
	     density float ,
	     sulphates float ,
		 alcohol float ,
		 pH float ,
		 quality float
);

-- Import csv file

select * from red_wine ;

-- Add ID column and color column = 'red'
ALTER TABLE red_wine ADD COLUMN ID SERIAL PRIMARY KEY;
ALTER TABLE red_wine ADD color varchar(5) DEFAULT 'red' ;

--drop table white_wine ; 

-- Create table with the outcome (quality) and 11 features for red wine
CREATE TABLE white_wine (
     fixed_acidity float ,
	     volatile_acidity float ,
	     citric_acid float ,
	     residual_sugar float ,
	     chlorides float ,
	     free_sulfur_dioxide float ,
	     total_sulfur_dioxide float ,
	     density float ,
	     sulphates float ,
		 alcohol float ,
		 pH float ,
		 quality float
);

-- Import csv file

select * from white_wine ;

-- Add ID column and color column = 'white'
ALTER TABLE white_wine ADD COLUMN ID SERIAL PRIMARY KEY;
ALTER TABLE white_wine ADD color varchar(5) DEFAULT 'white' ;

-- Update white wine ID so when the tables are merged together the ID's are unique
UPDATE white_wine SET ID = ID+20000 ;

--Create new tables to bring in all wine data
CREATE TABLE all_wines AS (SELECT * FROM red_wine);
INSERT INTO all_wines SELECT * FROM white_wine;

