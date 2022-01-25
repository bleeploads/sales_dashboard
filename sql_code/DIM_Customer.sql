--Cleansed DIM_customers table
SELECT c.CustomerKey AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.firstname AS [FirstName]
      ,c.middlename AS [MiddleName]
      ,c.lastname AS [LastName]
	  , FirstName + ISNULL(' ' + MiddleName, '') + ' ' + LastName AS [FullName]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.datefirstpurchase AS [DateFirstPurchase]
      --,[CommuteDistance]
	  , g.City AS [CustomerCity]
	  , g.EnglishCountryRegionName AS [Country]
	  , g.StateProvinceName AS [State]
	  , g.City AS [City]
	 FROM AdventureWorksDW2019.dbo.DimCustomer c
		LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS g
		ON g.GeographyKey = c.GeographyKey
	 ORDER BY CustomerKey ASC, Country ASC