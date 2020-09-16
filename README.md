## SQL Server Exercise 

### Stored Procedures

In this exercise you have to write SQL statements to Create, Alter & Drop Stored Procedures

1. Write an SQL statement to create a stored procedure with name `prcGetAllCustomers` to display all records from `Customer` table.
2. Write an SQL statement to create a parameterized stored procedure with name `prcGetCustomer` which should take `CustomerID` as parameter and displays the respective record based on that `CustomerID`.
3. Write an SQL statement to create a parameterized stored procedure with name `prcAddCustomer` which should take `CustomerID`, `CustomerName`, `Email`, `Age`, `Phone` as parameters and insert the record in `Customer` table.
4. Write an SQL statement to alter the procedure `prcGetCustomer` to change its functionality. Instead of taking parameter `CustomerID` it should take `CustomerName` and display the respective record based on that `CustomerName`.
5. Write an SQL statement to create a parameterized stored procedure with `prcAddOrUpdateCustomer` which should take `CustomerID`, `CustomerName`, `Email`, `Age`, `Phone` as parameters. If the record with same `CustomerID` already exists it should update the data otherwise it should insert a new record.
6. Write an SQL statement to delete procedure `prGetAllCustomers`.

