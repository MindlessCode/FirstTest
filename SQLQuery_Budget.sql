/*
--Creates the Main Budget Table for January
Create table Budget_01
(
TransactionID int primary key identity (1,1),
CategoryID int,
PlannedSpending smallmoney,
);


--Foreign Keys
ALTER TABLE Budget_01
ADD FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID); 


--Drop table budget_01

--Insert Data (In Progress)
INSERT Budget_01 (  PlannedSpending, CategoryID)
VALUES (  50.00, 1); 
INSERT Budget_01 (   PlannedSpending, CategoryID)
VALUES (  25.00, 2);
INSERT Budget_01 (   PlannedSpending, CategoryID)
VALUES (  1.00, 3);
INSERT Budget_01 (  PlannedSpending, CategoryID)
VALUES (  100.00, 4);
INSERT Budget_01 (  PlannedSpending,CategoryID)
VALUES (  50.00, 5);
INSERT Budget_01 (  PlannedSpending, CategoryID)
VALUES (  120.00, 6);
INSERT Budget_01 (   PlannedSpending, CategoryID)
VALUES (  50.00, 7);
*/
--ActualSpending Per Category by MONTH=Current + Amount Saved
USE Budget_2019;
SELECT C.CategoryID
, CategoryName
, PlannedSpending --BUDGET
, SUM(
			CASE
				WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())-1   THEN Price
				Else 0
			END	) as ' Budget Last Month'
, SUM(
			CASE
				WHEN Month(Time)= Month(GetDate()) THEN Price
				WHEN Month(Time)= Month(GetDate()) THEN Price
				WHEN Month(Time)= Month(GetDate()) THEN Price
				WHEN Month(Time)= Month(GetDate()) THEN Price
				WHEN Month(Time)= Month(GetDate()) THEN Price
				WHEN Month(Time)= Month(GetDate()) THEN Price
				WHEN Month(Time)= Month(GetDate()) THEN Price
				Else 0
			END	) as 'Current Month'


, CAST( SUM(
			CASE
				WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())   THEN Price
				WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())   THEN Price
				WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())   THEN Price
				WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())   THEN Price
				WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())   THEN Price
				WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())   THEN Price
				WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())   THEN Price
				Else 0
			END) 	
  -SUM(
			CASE
				WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())-1   THEN Price
				Else 0
			END ) as NVARCHAR(10)) as 'Difference'
--SUMMARY
, 'You spent $' +
	--ACTUAL SPENDING
	CAST(
		SUM(
	CASE
		WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())   THEN Price
		WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())   THEN Price
		WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())   THEN Price
		WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())   THEN Price
		WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())   THEN Price
		WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())   THEN Price
		WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())   THEN Price
		Else 0
	END    )
	as NVARCHAR(50))	+ ' on ' + CategoryName + ', which is $'  
	--DIFFERENCE BETWEEN CURRENT AND PREV MONTH
	+ CAST(
		CASE
			WHEN
				SUM(
					CASE
						WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())   THEN Price
						WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())   THEN Price
						WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())   THEN Price
						WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())   THEN Price
						WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())   THEN Price
						WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())   THEN Price
						WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())   THEN Price
						Else 0
					END) 	
			   -SUM(
					CASE
						WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())-1   THEN Price
						WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())-1   THEN Price
						WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())-1   THEN Price
						WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())-1   THEN Price
						WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())-1   THEN Price
						WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())-1   THEN Price
						WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())-1   THEN Price
						Else 0
					END ) > 0 --IF MONEY SPENT CURRENT MONTH IS GREATER THAN MONEY SPENT PREVIOUS MONTH [USE WORDS 'MORE THAN']
			THEN 
				CAST(
					SUM(
						CASE
							WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())   THEN Price
							Else 0
						END) 
				   -SUM(
						CASE
							WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())-1   THEN Price
							Else 0
						END) 
				as nvarchar(50)) + ' more than previous month '
			ELSE  
				CAST(
					(SUM(
						CASE
							WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())   THEN Price
							WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())   THEN Price
							Else 0
						END) 
					-SUM(
						CASE
							WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())-1   THEN Price
							WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())-1   THEN Price
							Else 0
						END))*-1 
				as NVARCHAR(50)) + ' less than previous month ' 
		end
	as nvarchar(50)) + ' at $' + 
	--PREVIOUS MONTH SPENDING
	CAST(
		SUM(
			CASE
				WHEN C.CategoryID=1 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=2 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=3 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=4 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=5 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=6 and Month(Time) = Month(GetDate())-1   THEN Price
				WHEN C.CategoryID=7 and Month(Time) = Month(GetDate())-1   THEN Price
				Else 0
			END
			) 
	as NVARCHAR(50)) as Summary
From
Budget_01 as Budget
INNER JOIN Category C
ON Budget.CategoryID = C.CategoryID
INNER JOIN t_expense Expense
ON Budget.CategoryID = Expense.CategoryID
GROUP BY C.CategoryID, CategoryName, PlannedSpending






