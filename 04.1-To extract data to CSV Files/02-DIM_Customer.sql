/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [customer_key] AS CustomerKey
      ,[customer_id]
      ,[customer_name] AS FullName
      ,[address1]
      ,[address2]
      ,[city] AS CustomerCity
      ,[phone]
      ,[source_system_code]
      ,[start_date]
      ,[end_date]
      ,[is_current]
	  ,c.datefirstpurchase AS DateFirstPurchase
  FROM [EO_AdventureWorksDW2019].[dbo].[dim_customer] AS c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[dimgeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  customer_key ASC


