
create proc prcGetAllCustomers

as

BEGIN

   select * from Customer

END

Exec prcGetAllCustomers

create proc prcGetCustomer @CustomerID int
as
Begin
select * from Customer where CustomerID = @CustomerID
End

Exec prcGetCustomer 1



--Write an SQL statement to create a parameterized stored procedure with name prcAddCustomer which should take CustomerID,
--CustomerName, Email, Age, Phone as parameters and insert the record in Customer table.

Create proc prcAddCustomer @CustomerID int,@CustomerName varchar(max),@Email varchar(max), @Age int, @Phone nvarchar(max)
as
Begin
insert into Customer values (@CustomerID,@CustomerName,@Email, @Age, @Phone)
END

Exec prcAddCustomer 1,'ABC','ab@email',19,67547895



--Write an SQL statement to alter the procedure prcGetCustomer to change its functionality.
--Instead of taking parameter CustomerID it should take CustomerName and display the respective record based on that CustomerName



Alter proc prcGetCustomer @CustomerName varchar(max)
as 
Begin 
Select* From Customer
where CustomerName = @CustomerName
End
Exec prcGetCustomer ABC


--Write an SQL statement to create a parameterized stored procedure with prcAddOrUpdateCustomer 
--which should take CustomerID, CustomerName, Email, Age, Phone as parameters.
--If the record with same CustomerID already exists it should update the data otherwise it should insert a new record.

Create proc prcAddOrUpdateCustomer (@CustomerID int, @CustomerName varchar(max),@Email varchar(max), @Age int, @Phone nvarchar(max))

as
if exists (select CustomerID from Customer where CustomerID= @CustomerID)
Begin update Customer
  set 
		CustomerName=@CustomerName, Email=@Email, Age=@Age, Phone=@Phone where CustomerID=@CustomerId
End
else 
Begin
	Insert into Customer Values(@CustomerId,@CustomerName,@Email,@Age,@Phone)
end
Go




Exec prcAddOrUpdateCustomer 2,'shiv','abc@email',19,3868326236







--Write an SQL statement to delete procedure prGetAllCustomers.


DROP PROCEDURE prcGetAllCustomers


--DROP PROCEDURE  prcAddOrUpdateCustomer