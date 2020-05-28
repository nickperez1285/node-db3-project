-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select productname categoryname from product
join category 
on  product.categoryid = category.id 
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

 SELECT o.Id , s.CompanyName from
[order] as o
join [shipper] as s 
on o.shipvia = s.Id
WHERE o.ShippedDate < '2012-08-09' 
LIMIT 429;
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select ProductName , Quantity from 
[OrderDetail]
join [Product]
on OrderDetail.ProductId = Product.Id
where OrderDetail.orderid = 10251
order by Prouct.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select O.ID, C.CompanyName, E.LastName 
from [Order] as O 
join [Customer] as C
on O.CustomerId = C.Id
join [Employee] as E
on O.EmployeeId  = E.Id
Limit 16789