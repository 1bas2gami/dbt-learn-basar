select 
    ID as payment_id
    , ORDERID as order_id
    , PAYMENTMETHOD as payment_method
    , status as payment_status
    , (amount/100) as payment_amt
    from raw.stripe.payment
