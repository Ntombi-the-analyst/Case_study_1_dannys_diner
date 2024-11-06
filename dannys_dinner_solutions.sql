select * from menu;

-- 1. What is the total amount each customer spent at the restaurant?

SELECT 
A.customer_id,
sum(B.price)
from sales A
inner join menu B
on A.product_id= B.product_id
group by A.customer_id;