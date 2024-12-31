-- Write your PostgreSQL query statement below
select name as Customers
from customers
where customers.id not in (
    select customers.id
    from customers
    inner join orders
    on customers.id=orders.customerid
);
