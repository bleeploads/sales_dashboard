-- Cleansed DIM_Products Table
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS ProductName
	  ,ps.EnglishProductSubcategoryName AS Subcategory --joined from SubCategoryTable
	  ,pc.EnglishProductCategoryName AS ProductCategory --joined from Category Table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS ProductColour
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS ProductModelName
      --,[LargePhoto]
      ,p.[EnglishDescription] AS ProductDesc
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL (p.[Status],'Outdated') AS ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
	LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory AS ps
		ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN AdventureWorksDW2019.dbo.DimProductCategory AS PC 
		ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC