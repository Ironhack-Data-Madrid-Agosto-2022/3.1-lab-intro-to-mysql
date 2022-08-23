create database ventaCoches; -- Primer paso
use ventaCoches;
-- Segundo paso generar todas las tablas vacías con sus columnas y tipos de datos

create table if not exists Cars( -- VIN, manufacturer, model, year, color
  ID int primary key,
  VIN char(17) not null,
  manufacturer varchar(15),
  model varchar(20),
  year year,
  color varchar(15)
);

create table if not exists Customers( -- ID | Customer ID | Name | Phone | Email | Address | City | State/Province | Country | Postal
  ID int primary key,
  CustomerID int(17) not null,
  Name varchar(30) not null,
  Phone varchar(30) not null,
  Email varchar(30),
  Address varchar(30),
  City varchar(20),
  StateProvince varchar(20),
  Country varchar(20),
  Postal char(5)
);

create table if not exists Salespersons( -- ID | Staff ID | Name | Store |
  ID int primary key,
  StaffID int,
  name varchar(30),
  Store varchar(20)
);

create table if not exists Invoices( --  ID | Invoice Number | Date | Car | Customer | Sales Person |
  ID int primary key,
  InvoiceNumber int not null,
  Date date,
  Car int,
  Customer int,
  SalesPerson int not null
);
