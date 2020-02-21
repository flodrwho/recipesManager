CREATE DATABASE Cooking;

-- identity is how to make it auto increment itself
CREATE TABLE Recepies (RID int NOT NULL identity primary key, RName VARCHAR(40) not null, RDescription VARCHAR(255), RType VARCHAR(15), RMain Varchar(15), RPrepTime time not null, RCookTime time not null, RServingSize int, RSteps Varchar(255) not null);