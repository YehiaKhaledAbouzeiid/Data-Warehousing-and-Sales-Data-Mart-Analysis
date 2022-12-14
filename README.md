# Data-Warehousing-and-Business-Intelligence-Project-Sales-Data-Mart-Analysis

## Basic Information
* Data Mart: A Data Mart is a condensed version of Data Warehouse and is designed for use by a specific department
* Full Load: Full Load in ETL is loading ALL the data from the source to the destination. A target table is truncated before loading everything from the source.
* Incemental Load: A selective method of moving data from one system to another. The incremental load model will attempt to compare the incoming data from the source system with the existing data present in the destination. 

## Project Overview
*	1-Developed a data warehouse, pipelining data from SQL Server using SQL Server Integration Services (SSIS).
*	2-Designed star schema dimensional model on the data warehouse, loading facts and dimensions (Data Modeling).
*	3-Implemented OLE DB Source, Data Conversion, Slowly Changing Dimensions and Derived Column Full load and Incremental load.
*	4-Built Visual dashboards and improved Sales report for sales managers using PowerBI.

## The Business Request 
![04 1-Business Request - Mail from Steven](https://user-images.githubusercontent.com/114536072/206841689-990dec5e-f6c8-4fa4-9426-7d2791fecd0d.png)
* The Business request for this project was an executive sales report for sales managers. 
  Based on the proposition made by the business, 
  the following user stories were defined to fulfill delivery 
  and ensure that acceptance criteria were maintained throughout the project.

## Business Demand Overview:
* 	Reporter: Steven – Sales Manager
* 	Value of Change: Visual dashboards and improved Sales reporting or follow-up or sales force
* 	Necessary Systems: Power BI, CRM System
* 	Other Relevant Info: Budgets have been delivered in Excel for 2021

## User Stories:
* ![04 2-Usercase](https://user-images.githubusercontent.com/114536072/206841719-8338ebed-28ef-4715-9fa1-b854c5b5da0d.png)

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

## Project Steps
##	1- Developing a Data Warehouse

1- <B>Creating the database [EO_AdventureWorksDW2019] by creating the FACT TABLE then creating the DIMENSIONS</B>

2- <B>The FACT TABLE and DIMENSIONS Querries are found on the folder [01-Developed a DWH]</B>

![dim product](https://user-images.githubusercontent.com/114536072/206842168-53207cc8-b028-4d00-b660-3ac41ec23542.png)

##	2- Star Schema (Data Modeling)

![02-Data Modeling Star Schema](https://user-images.githubusercontent.com/114536072/206842240-ebd27f2e-f6c5-44fe-9639-5ea1aadc089d.png)

##	3- Implementing ETL
1- <B>Slowly Changing Dimension (SCD)</B>

![03 1-Slowly Changing Dimension (SCD)](https://user-images.githubusercontent.com/114536072/206842283-ef3e8641-d906-47f3-9611-74156df2712d.png)


2- <B>Full load </B>

![03 2-Full Load](https://user-images.githubusercontent.com/114536072/206842297-3f10a6dd-decf-4369-9f84-e35f76958535.png)

3- <B>Incremental load</B>

![03 3-Incremental Load](https://user-images.githubusercontent.com/114536072/206842315-1e498732-4073-4b10-951d-eb2bfa924782.png)

![03 3 01-Incremental Load](https://user-images.githubusercontent.com/114536072/206842327-cf7261a0-fd54-4a80-b1cb-704f5968b3bc.png)

##	4- Building Visual dashboards

### 1- Data Model

<B>Below is a screenshot of the data model after cleansed and prepared tables were read into Power BI after exporting the DWH into CSV files.</B>

<B>The queries used to extract data into CSV files are in the folder [04.1-To extract data to CSV Files].</B>

<B>This data model also shows how FACT_Budget has been connected to FACT_InternetSales and other necessary DIM tables.</B>

![04 4-Moadel Tables](https://user-images.githubusercontent.com/114536072/206843284-0599903c-c61d-4b6a-be99-b012fe096e17.png)

### 2- Sales Management Dashboard

<B>The finished sales management dashboard with one page works as a dashboard and overview, with two other pages focused on combining tables for necessary details and visualizations to show sales over time, per customer, and per product.</B>

<B>You can check the dashboard and try it out!</B>(https://app.powerbi.com/groups/me/reports/7251820f-0346-4bdc-8d17-ed56e29fbeb5/ReportSection)

<B>You can check my Portfolio and try discover other dashboards!</B>(https://yehiakhaledabouzeid.wordpress.com/)

![04 5-Sales Overview](https://user-images.githubusercontent.com/114536072/206843418-556c0316-c9aa-4613-9713-1abd6f85ac1f.jpg)
