select * from customer limit 20

--total revenue generated male vs female customers
select gender, sum(purchase_amount) as revenue from customer group by gender
--which customers used discount but still spent more than avg purchase_amount
select customer_id, purchase_amount from customer 
where 
discount_applied = 'Yes' and 
purchase_amount>=(select avg(purchase_amount) from customer)
--top 5 products have highest revuiew