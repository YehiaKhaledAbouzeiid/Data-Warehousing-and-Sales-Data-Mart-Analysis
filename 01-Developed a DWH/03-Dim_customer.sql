use EO_AdventureWorksDW2019
go

-- dropping the foreign keys, for data integrity
if exists
	(select * from sys.foreign_keys
	where name = 'fk_fact_sales_dim_customer'
	and parent_object_id=object_id('fact_sales'))
alter table fact_sales
drop constraint fk_fact_sales_dim_customer


-- Drop and create the table

if exists (select * from sys.objects 
			where name='dim_customer')
drop table dim_customer
go

create table dim_customer(
	customer_key int not null identity(1,1), --surrogate key to track the history of the customer
	customer_id int not null, --alternate key
	customer_name nvarchar(150),
	address1 nvarchar(100),
	address2 nvarchar(100),
	city nvarchar(30),
	phone nvarchar(25),
-- birth date date,
-- martial_status char(10),
-- gender char(1),
-- yearly_income money,
-- education varchar(50),
	

	--Metadata
	source_system_code tinyint not null,

	-- SCD
	start_date datetime not null DEFAULT (getdate()),
	end_date datetime,
	is_current tinyint not null DEFAULT (1),

	constraint pk_dim_customer
	primary key clustered (customer_key)

)
;


-- create foreign key

if exists
	(select * from sys.tables where name = 'fact_sales' and type ='u')
alter table fact_sales
	add constraint fk_fact_sales_dim_customer
	foreign key (customer_key)
	references dim_customer(customer_key)
;

-- Instert unkown record
set identity_insert dim_customer on

insert into dim_customer (customer_key, customer_id, customer_name, address1, address2, city,phone,
source_system_code,start_date,end_date,is_current)
values (0,0,'Unknown','Unknown','Unknown','Unknown','Unknown',0,'1900-01-01',null,1)

set identity_insert dim_customer off



-- create indexes
if exists (
	select * from sys.indexes
	where name = 'dim_customer_customer_id'
	and object_id=object_id('dim_customer'))
drop index dim_customer.dim_customer_customer_id
go
;

create index dim_customer_customer_id
	on dim_customer(customer_id)
;

if exists (
	select * from sys.indexes
	where name = 'dim_customer_city'
	and object_id=object_id('dim_customer'))
drop index dim_customer.dim_customer_city
go

create index dim_customer_customer_category
	on dim_customer(city)
;
