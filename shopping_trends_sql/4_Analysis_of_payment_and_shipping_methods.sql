-- Analysis of Payment and Shipping Methods
SELECT 
    payment_method,
    COUNT(*) AS transaction_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase
FROM shopping_trends
GROUP BY payment_method
ORDER BY transaction_count DESC;

-- Credit Card and Venmo are the most used payment methods and also have the highest average purchases,
-- suggesting customers prefer fast and secure payment methods when spending more.




-- This SQL query analyzes the distribution of shipping methods used by customers and their average ratings.
SELECT 
    shipping_type,
    COUNT(*) AS shipment_count,
    ROUND(AVG(review_rating), 2) AS avg_rating,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase
FROM shopping_trends
GROUP BY shipping_type
ORDER BY avg_rating DESC;

/*
Standard shipping has the highest average review rating (3.82) even though its average purchase amount isn't the highest.

Express and 2-Day Shipping options have relatively high average purchases with decent ratings.

Free Shipping is the most used method (675 shipments) but doesn't have the highest satisfaction.

Store Pickup has the lowest customer rating (3.71), indicating a possible issue in the pickup experience.

✅ Recommendation :
Focus on improving the Free Shipping experience to boost satisfaction, as it’s the most common method.

Highlight and promote Standard Shipping in marketing, as it yields the best customer experience.

Improve Store Pickup by training staff or streamlining the process to enhance customer satisfaction.

Consider offering discounts on Express Shipping to attract customers who value faster delivery and are already somewhat satisfied.
*/