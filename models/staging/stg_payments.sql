SELECT 
    id as payment_id,
    "orderID" as order_id,
    "paymentMethod" as payment_method,
    "AMOUNT" as order_total,
    "CREATED" as order_date
FROM raw.stripe.payment