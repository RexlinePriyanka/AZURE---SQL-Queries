create table Table_1(ID int,Name varchar(50));
create table T_1(ID int,Name varchar(50));
create table T_2(ID int,Name varchar(50));
create table T_3(ID int,Name varchar(50),city varchar(50));
create table Customer(ID int,Name varchar(50));
create table Employee(ID int,Name varchar(50),city varchar(50));
create table Employee_Resigned(ID int);

select * from T_1
select * from T_2
select * from T_3
select * from Table_3
select * from Table_4
select * from Employee;
select * from Employee_Resigned;

insert into Employee values (1,'AAA','Chennai'),(2,'PPP','Nellai'),(3,'God','World'),(4,'BBB','Plano'),(5,'CCC','Madurai'),(6,'DDD','Texas')
insert into Employee_Resigned values (1),(2);
insert into Customer values (1,'Anitha'),(2,'Priyanka'),(3,'God')
insert into Table_2 values (1,'AAA'),(2,'PPP'),(3,'GGG')
insert into Table_3 values (8,'AAA','Chennai'),(9,'PPP','Nellai'),(10,'God','World')
insert into Table_3 values (11,'Mathan',null)
insert into T_1 values (1,'Anitha'),(2,'Priyanka'),(3,'God')
insert into T_2 values (1,'AAA'),(2,'PPP'),(3,'GGG'),(3,'God')

alter table Table_3 alter column city varchar(50);


select * from T_1
union all
select * from T_2



select * from T_2
intersect
select * from T_2

create procedure sp_delete_file
as
begin
truncate table [dbo].[T_2]
end

exec sp_delete_file


Create procedure sp_delete_Emp @id int as
begin
delete from Employee where ID=@id
end

exec sp_delete_Emp @id=1

create procedure Date_Proc as
update Table_2 set Date_Copied=getdate() 

exec Date_Proc

select * into T_3 from T_1 where 1=2
select * from T_1
select * from T_2
select * from T_3

select * from Customer
select * from Employee

create table Product(ID int,Name varchar(50));
select * from Product;


create table emp(emp_id int,name nvarchar(128),salary nvarchar(128),address nvarchar(128),loc nvarchar(128),email nvarchar(128))
select * from emp

drop table emp
select * from dbo.emp
t2-t1
create table T_2(ID int,Name varchar(50));



create table T_1(ID int,Name varchar(50),city varchar(50));
create table T_2(ID int,Name varchar(50));

insert into T_1 values (1,'AAA','Chennai'),(2,'PPP','Nellai'),(3,'God','World')

select * from T_1
select * from T_2

truncate table T_2

create table source(ID int,Name varchar(50));
create table dest(ID int,Name varchar(50));

insert into source values (1,'AAA'),(2,'PPP'),(3,'GGG'),(9,'Friend')
insert into dest values(1,'Anitha'),(2,'Priya'),(4,'GGG')

select * from source
select * from dest
select * from T_1
select * from T_2
drop table T_1

truncate table T_2
create table T_1(ID int,Name varchar(50));

create table DiagnosisTable(Diagnosis_ID varchar(10),Diagnosis varchar(20))
create table InsuranceTable(Insurance_ID varchar(10),Insurance_Provider varchar(10))

select * from DiagnosisTable
select * from InsuranceTable

drop table InsuranceTable



create table sales(
product_id int,
product_type nvarchar(128),
sales_price int,
salestime datetime
)
 
 
insert into sales values (1, 'tv', 30000,'2025-05-01 00:04:07.001')
insert into sales values (1, 'cooler', 50000,'2025-05-01 00:04:07.001')
insert into sales values (1, 'hdtv', 18000,'2025-05-01 00:04:07.001')
insert into sales values (2, 'stv', 30000,'2025-05-02 00:04:07.001')
insert into sales values (2, 'tab', 30000,'2025-05-02 00:04:07.001')
insert into sales values (2, 'basic mobile', 30000,'2025-05-02 00:04:07.001')
insert into sales values (3, 'smart mobile', 30000,'2025-05-03 00:04:07.001')
insert into sales values (3, 'desktop', 30000,'2025-05-03 00:04:07.001')
insert into sales values (3, 'laptop', 30000,'2025-05-03 00:04:07.001')
insert into sales values (4, 'tv', 30000,'2025-05-04 00:04:07.001')
insert into sales values (5, 'tv', 30000,'2025-05-05 00:04:07.001')

 
select * from sales
where salestime between '2025-05-01 00:00:00.00' and '2025-05-02 00:00:00.00'
 
create procedure str_sales
@startdate varchar(128),
@enddate varchar(128)
as begin
select * from sales
where salestime between @startdate and @enddate end
 
exec dbo.str_sales '2025-05-01T00:00:00.00' ,'2025-05-02T00:05:00.00'
 
select * from sales

select * from customer

create table customer(customerid int, customername nvarchar(128), customeraddress nvarchar(128), customerphone int, customertype nvarchar(128),customerssno nvarchar(128))

create table customer1(customerid nvarchar(128), customername nvarchar(128), customeraddress nvarchar(128), customerphone nvarchar(128), customertype nvarchar(128),customerssno nvarchar(128))

select * from customer1
truncate table customer

delete from customer where customername is Null


create table SalesInfo(Salesperson varchar(20),Region varchar(20),Sales varchar(20))

select * from SalesInfo

insurance.csv--->Insurance_Table
diagnosis.csv--->Diagnosis_Table

(insurance.csv,.csv,_Table)



Failure happened on 'Sink' side. ErrorCode=SqlColumnNameNotExist,
Type=Microsoft.DataTransfer.Common.Shared.HybridDeliveryException,Message=Column 'Insurance_ID' does not exist in the target table 
[dbo].[diagnosisTable]'.,
Source=Microsoft.DataTransfer.Connectors.MSSQL,'