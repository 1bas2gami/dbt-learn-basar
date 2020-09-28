with orders as (
    select * from {{ref('cust_order_pay')}}
)

--select sum(payment_amt) as lifetime_value from orders where  payment_status='success'
--1672

select 
    customer_id
    , first_name
    , last_name
    , count(order_id) as number_of_orders
    , sum(payment_amt) as lifetime_value
from orders 
where 
    payment_status='success'
group by customer_id, first_name, last_name

