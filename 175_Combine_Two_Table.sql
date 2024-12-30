-- Write your PostgreSQL query statement below
select firstName, lastName, city, state from person left outer join address  on person.personid = address.personid;