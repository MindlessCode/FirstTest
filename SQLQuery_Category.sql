/*
Create table Category

(
CategoryID int primary key identity (1,1),
CategoryName nvarchar(50),
TotalBudget smallmoney,

);

Insert Category (CategoryName, TotalBudget) values ('Online Shopping', 50.00);
Insert Category (CategoryName, TotalBudget) values ('VGames', 25.00);
Insert Category (CategoryName, TotalBudget) values ('Home', 1.00);
Insert Category (CategoryName, TotalBudget) values ('Grocery', 100.00);
Insert Category (CategoryName, TotalBudget) values ('Personal', 50.00);
Insert Category (CategoryName, TotalBudget) values ('Bills', 120.00);
Insert Category (CategoryName, TotalBudget) values ('Computer Accessories', 50.00);
*/
USE Budget_2019;
SELECT * 
FROM Category