/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [product_key] AS ProductKey
      ,[product_id] AS ProductId
      ,[product_name] AS ProductName
      ,[product_description] ProductDescription
      ,[product_subcategory] AS ProductSubCategory
      ,[product_category] AS ProductCategory
      ,[color] AS ProductColor
      ,[model_name] AS ProductModelName
      ,[reorder_point] AS ReorderPoint
      ,[standard_cost] AS StandardCost
      ,[source_system_code] AS SourceSystemCode
      ,[start_date] AS StartDate
      ,[end_date] AS EndDate 
      ,[is_current] AS ProductStatus
  FROM [EO_AdventureWorksDW2019].[dbo].[dim_product]