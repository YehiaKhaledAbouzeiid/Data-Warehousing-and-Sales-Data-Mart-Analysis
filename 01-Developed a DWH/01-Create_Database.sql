use master
go

if db_id('EO_AdventureWorksDW2019') is not null
drop database EO_AdventureWorksDW2019;

create database EO_AdventureWorksDW2019
go