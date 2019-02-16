/*
create database budget_2019;
Create table t_expense
(
Time Date,
CategoryID int,
Description varchar (100),
Price float,
);
Drop table t_expense;
*/

--Expense Table
/*
--JANUARY--

Insert t_expense (time, CategoryID, description, price ) values ('2019-01-02', 2,  'Microsoft 1-Month', 1.13 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-02', 1, 'AMZN MktpCA', 37.91 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-02',7, 'TheSource ', 102.54 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-02',1, 'PayPal MSP', 88.01 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-03',5, 'Adobe ', 31.95 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-03',5, 'Rexall PostOffice', 3.38 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-03', 1,'AMZN MktpCA', 26.92 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-01-04',4, 'Food IslandSUP', 5.09 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-01-07', 1,'PayPal MSP', 18.99 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-08', 1,'PayPal MSP', 5.33 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-01-09', 4,'Sobeys ', 14.61 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-10', 1,'AMZN Prime', 9.03 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-10', 4,'Loblaws ', 21.93 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-11', 4,'Loblaws ', 33.80 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-15', 4,'Loblaws ', 14.12 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-15',1, 'PayPal MSP', 16.99 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-15',1, 'PayPal MSP', 14.99 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-16',7, 'Canada Computer', 67.75 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-18', 4,'Food IslandSUP', 11.96 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-21',6, 'Freedom Mobile', 104.36 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-22',5, 'Rexall PostOffice', 3.83 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-22', 4,'Loblaws ', 9.04 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-22',1, 'PayPal MSP', 29.83 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-23',4, 'Loblaws ', 44.19 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-24', 1,'AMZN MktpCA', 28.89 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-01-24',4, 'Sobeys ', 18.49 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-24',1, 'PayPal MSP', 89.99  );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-25', 1,'AMZN MktpCA', 91.25 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-01-25',2,  'Riot Games', 20.00 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-01-25',3, 'Canadian Tire', 30.50 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-01-28',1, 'Test Store', 59.50 );

--FEBRUARY--

Insert t_expense (time, CategoryID, description, price ) values ('2019-02-02', 1, 'AMZN MktpCA', 1.13 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-02', 1, 'AMZN MktpCA', 37.91 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-02', 1, 'AMZN MktpCA', 102.54 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-02', 1, 'PayPal MSP', 88.01 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-03', 5, 'Adobe ', 31.95 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-03', 5, 'Rexall PostOffice', 3.38 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-03', 1, 'AMZN MktpCA', 26.92 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-02-04', 4, 'Food IslandSUP', 5.09 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-02-07', 1, 'PayPal MSP', 18.99 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-08', 1, 'PayPal MSP', 5.33 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-02-09', 4, 'Sobeys ', 14.61 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-10', 3, 'Costco', 9.03 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-10', 4, 'Loblaws ', 21.93 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-11', 4, 'Loblaws ', 33.80 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-15', 4, 'Loblaws ', 14.12 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-15', 5, 'TheShoeCompany', 16.99 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-15', 4, 'Loblaws', 14.99 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-16', 7, 'Canada Computer', 67.75 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-18', 4, 'Food IslandSUP', 11.96 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-21', 6, 'Freedom Mobile', 104.36 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-22', 5, 'Rexall PostOffice', 3.83 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-22', 4, 'Loblaws ', 9.04 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-22', 1, 'PayPal MSP', 29.83 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-23', 4, 'Loblaws ', 44.19 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-24', 1, 'AMZN MktpCA', 28.89 );
Insert t_expense (time, CategoryID,description, price ) values ('2019-02-24', 4, 'Sobeys ', 18.49 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-24', 1, 'PayPal MSP', 89.99  );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-25', 1, 'AMZN MktpCA', 91.25 );
Insert t_expense (time, CategoryID, description, price ) values ('2019-02-25', 4,  'Loblaws', 20.00 );


*/

USE Budget_2019;
--SPENDOMETER
SELECT 
ISNULL(CAST(Time as VARCHAR(11)), 'Grand Total') as [Transaction Date],
ISNULL(CAST(CategoryID as VARCHAR(11)), 'TODAY TOTAL') as [Category ID],
ISNULL(Description, 'Category Total') as 'Category',
SUM(Price) as Amount
From 
t_expense
Group By Time , CategoryID, Description WITH ROLLUP;

--Categories
Select 
Time,
Expense.CategoryID,
Description,
CASE
WHEN (Description LIKE '%AMZN%' OR Description LIKE '%PayPal%') THEN 'Online Shopping'
WHEN (Description LIKE '%Microsoft%' OR Description LIKE 'Riot%') THEN 'VGames'
WHEN (Description LIKE 'Canadian Tire' OR Description LIKE 'Costco' or Description LIKE '%Shoe%') THEN 'Home'
WHEN (Description LIKE '%Computer%' OR Description LIKE '%TheSource%') THEN 'Computer Accessories'
WHEN (Description LIKE '%Sobeys%' OR Description LIKE '%Loblaws%' OR Description LIKE '%Food%') THEN 'Grocery'
WHEN (Description LIKE '%Freedom%' or Description LIKE '%TEST%') THEN 'Online Shopping'
WHEN (Description LIKE '%Rexal%' or Description LIKE '%Adobe%') THEN  'Personal'
END as Category
From
T_expense as expense
INNER JOIN Category as C
ON Expense.CategoryID = C.CategoryID;


--SELECTION BY MONTH
SELECT *
FROM t_expense
WHERE DATEPART(month, Time) = 2;






	