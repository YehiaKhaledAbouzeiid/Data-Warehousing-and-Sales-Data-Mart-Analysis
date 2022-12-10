/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [product_key] AS ProductKey
      ,[customer_key] AS CustomerKey
      ,[territory_key]
      ,[order_date_key] AS OrderDateKey
      ,[sales_order_id]
      ,[line_number]
      ,[quantity]
      ,[unit_price]
      ,[unit_cost]
      ,[tax_amount]
      ,[freight]
      ,[extended_sales]
      ,[extened_cost]
      ,[created_at]
  FROM [EO_AdventureWorksDW2019].[dbo].[fact_sales]
  WHERE 
  LEFT (order_date_key, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only bring two years of date from extraction.
ORDER BY
  OrderDateKey ASC