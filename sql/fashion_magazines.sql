-- Add your sql here
SELECT customers.customer_name AS Customer, PRINTF("$%.2f",sum(subscriptions.price_per_month * subscriptions.subscription_length)) AS 'Amount Due' 
FROM orders
	JOIN customers ON (orders.customer_id = customers.customer_id) AND orders.order_status = 'unpaid'
    JOIN subscriptions ON (orders.subscription_id = subscriptions.subscription_id) AND subscriptions.description = 'Fashion Magazine'
	GROUP BY Customer;