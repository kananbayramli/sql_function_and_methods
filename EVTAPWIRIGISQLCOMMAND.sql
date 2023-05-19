--EV TAPSHIRIGI

--1.
SELECT FirstName FROM Employees
WHERE LEFT(FirstName, 2) LIKE 'LA%' AND LEFT(FirstName, 2) LIKE 'LN%' AND LEFT(FirstName, 2) LIKE 'AA%'
OR LEFT(FirstName, 2) LIKE 'AN';

--2.
UPDATE Employees SET FirstName = 'Ken_max' where EmployeeID = 1;
SELECT FIRSTNAME FROM Employees WHERE FIRSTNAME LIKE '%/_%' escape '/'; 

--3.
SELECT TOP 10 percent * FROM Customers
WHERE CustomerID LIKE '_A_T%';

--4.
SELECT TOP 10 percent * FROM Customers
WHERE CustomerID NOT LIKE '_A%' OR CustomerID NOT LIKE '_T%';

--5
SELECT TOP 10 percent * FROM Customers
WHERE CustomerID NOT LIKE '[A-I]%';

--6
SELECT TOP 10 percent * FROM Customers
WHERE CustomerID LIKE '%[^T]';



--7
ALTER FUNCTION dbo.ufnCalculateAge
( @birthdate DATE, @isage INT)
RETURNS VARCHAR(50) AS BEGIN
	DECLARE @currentDate DATE = GETDATE();
	DECLARE @isbirthdate DATE = DATEADD(YEAR, @isage, @birthdate);

	IF (YEAR(@currentDate) <= YEAR(@isbirthdate) )
	BEGIN
    IF (DATEDIFF(DAY ,@currentDate ,@isbirthdate) <= 31)
    RETURN 'İl ve ay ödüyür';

    ELSE IF (DATEDIFF(YEAR, @currentDate,@isbirthdate) = 0)
    RETURN 'İl ödüyür';

    ELSE
    RETURN 'Ay gün ve il ödəmir';

	END

RETURN 'Ay gün ve il ödüyür';
END;

