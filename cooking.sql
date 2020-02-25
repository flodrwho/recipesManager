CREATE DATABASE Cooking;

-- identity is how to make it auto increment itself
CREATE TABLE Recepies (RID int NOT NULL identity primary key, RName VARCHAR(40) not null, RDescription VARCHAR(255), RType VARCHAR(15), RMain Varchar(15), RPrepTime time not null, RCookTime time not null, RServingSize int, RSteps Varchar(255) not null);

CREATE TABLE Ingredients (IID int NOT NULL identity primary key, IName VARCHAR(40) not null, IAltNames VARCHAR(100), IEssential bit, IStored Varchar(15), ICalories float, IFat float, IProtein float, ICarbs float);

CREATE TABLE RecepiesIngredients (RIID int NOT NULL identity primary key, RID int not null, foreign key (RID) references Recepies(RID), IID int not null, foreign key (IID) references Ingredients(IID), IAmount float, IMeasurement Varchar(20));

--ingredients for fritatta
INSERT INTO Ingredients VALUES('butter', null, 1, 'fridge', 717, 81, 0.8, 0.1);
INSERT INTO Ingredients VALUES('egg', null, 1, 'fridge', null, null, null, null);
INSERT INTO Ingredients VALUES('cream', null, 0, 'fridge',  null, null, null, null);
INSERT INTO Ingredients VALUES('tasty cheese', null, 0, 'fridge',  null, null, null, null);
INSERT INTO Ingredients VALUES('potato', null, 0, 'pantry',  null, null, null, null);
INSERT INTO Ingredients VALUES('brocolli', null, 0, 'fridge',  null, null, null, null);
INSERT INTO Ingredients VALUES('capcicum', null, 0, 'fridge',  null, null, null, null);

-- time data type hh:mm:ss within single quote marks
INSERT INTO Recepies VALUES('fritata', null, 'main', 'egg', '0:20:0', '0:10:0', 6, 'fritata.txt');

INSERT INTO Recepies VALUES(1,1, 50, 'grams');
INSERT INTO Recepies VALUES(1,2, 4, null);
INSERT INTO Recepies VALUES(1,3, 4, 'Tbsp');
INSERT INTO Recepies VALUES(1,4, 0.25, 'cups');
INSERT INTO Recepies VALUES(1,5, 3, null);
INSERT INTO Recepies VALUES(1,6, 2, 'cups');
INSERT INTO Recepies VALUES(1,7, 0.5, null);
