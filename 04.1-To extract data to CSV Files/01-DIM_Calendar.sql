-- Cleansed Dim_Date Table -- 
SELECT [date_key]AS DateKey
      ,[full_date] AS Date
      ,[calendar_year] AS Year 
      ,[calendar_quarter] AS Quarter
      ,[calendar_month_num] AS MonthNo
      ,[calendar_month_name] AS Month
	  ,LEFT([calendar_month_name], 3) AS MonthShort
  FROM 
  [EO_AdventureWorksDW2019].[dbo].[dim_date]
  WHERE calendar_year >= 2019;