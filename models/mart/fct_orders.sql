with payments as (
    select * from {{ ref('stg_payments') }}
),
customers as (
    select * from {{ ref('stg_customers') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
),
final as (
    select 
        payments.order_id as order_id,
        orders.customer_id as customer_id,
        payments.order_total as order_total,
        payments.order_date as order_date
    FROM payments
    LEFT JOIN 
        orders using (order_id)
)
SELECT * from final