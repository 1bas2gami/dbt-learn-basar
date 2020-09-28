with orders as (
  select * from {{ref('stg_orders')}}
),
customers as (
  select * from {{ref('stg_customers')}}
),
payments as (
  select * from {{ref('stg_payments')}}
),
final as (
select 
    c.customer_id, c.first_name, c.Last_name,
    o.order_id, o.order_date, o.status,
    p.payment_id, p.payment_method, p.payment_amt, p.payment_status
from     
    orders O
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
LEFT JOIN payments p
    ON o.order_id = p.order_id
)
select * from final

    
