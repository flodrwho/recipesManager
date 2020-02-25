CREATE DATABASE Cooking;

-- identity is how to make it auto increment itself
CREATE TABLE Recepies (RID int NOT NULL identity primary key, RName VARCHAR(40) not null, RDescription VARCHAR(255), RType VARCHAR(15), RMain Varchar(15), RPrepTime time not null, RCookTime time not null, RServingSize int, RSteps Varchar(255) not null);

CREATE TABLE Ingredients (IID int NOT NULL identity primary key, IName VARCHAR(40) not null, IAltNames VARCHAR(100), IEssential bit, IStored Varchar(15), ICalories int, IFat int, IProtein int, ICarbs int);


