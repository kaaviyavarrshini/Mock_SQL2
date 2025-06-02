# Write your MySQL query statement below
with cte as(
select product_id,min(year) as first_year
from sales
group by product_id)

select s.product_id,c.first_year,s.quantity,s.price
from Sales s
inner join cte c on s.product_id=c.product_id 
where s.product_id=c.product_id and s.year=c.first_year
