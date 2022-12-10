# Data-Warehousing-and-Business-Intelligence-Project - Sales - Data Mart & Sales Analysis

## Project Overview
*	1-Developed a data warehouse, pipelining data from diverse sources such as CSV, and SQL Server using SQL Server Integration Services (SSIS).
*	2-Designed star schema dimensional model on the data warehouse, loading facts and dimensions (Data Modeling).
*	3-Implemented OLE DB Source, Data Conversion, Slowly Changing Dimensions and Derived Column.
*	4-Built Visual dashboards and improved Sales report for sales managers using PowerBI.

## The Business Request 
*The Business request for this project was an executive sales report for sales managers. 
Based on the proposition made by the business, 
the following user stories were defined to fulfill delivery 
and ensure that acceptance criteria were maintained throughout the project.*

## Business Demand Overview:
* 	Reporter: Steven – Sales Manager
* 	Value of Change: Visual dashboards and improved Sales reporting or follow-up or sales force
* 	Necessary Systems: Power BI, CRM System
* 	Other Relevant Info: Budgets have been delivered in Excel for 2021

## User Stories:
![Capture] (usercase)

## Data Sources
### AdventureWorks2019 (OLTP) from Microsoft https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms

  - Customer
  - Product
  - SalesTerritory
  - SalesOrderHeader  
  - SalesOrderDetail
  - Person
  - ProductModel
  - ProductModelProductDescriptionCulture
  - ProductDescription
  - Production
  - ProductSubcategory

### EO_AdventureWorksDW2019 (DWH)

  - dim_customer
  - dim_date  
  - dim_territory
  - dim_product 
  - lookup_country
  - meta_control_table
  - fact_sales  
