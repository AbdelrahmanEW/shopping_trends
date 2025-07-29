-- Discovering High-Value Customers
SELECT 
    customer_id,
    location,
    gender,
    category_age,
    SUM(purchase_amount_usd) AS total_spent,
    COUNT(*) AS transaction_count
FROM shopping_trends
GROUP BY customer_id, location, gender, category_age
ORDER BY total_spent DESC
LIMIT 20;

/*
 All top-spending customers made only one purchase of exactly $100, indicating high-value single transactions rather than recurring loyal behavior.

There's broad diversity in location, gender, and age, with Middle-aged customers appearing most frequently—suggesting higher spending potential in that age group.

This behavior doesn't point to long-term loyalty, but rather to isolated high-value purchases.

✅ Recommendations :
Target Middle-aged customers with personalized promotions, as they show a strong single-purchase value.

Analyze the products or campaigns that led to these high-value purchases to replicate their success.

Encourage repeat purchases from these high-spenders through loyalty incentives or follow-up messaging.

Use this insight to drive deeper segmentation and behavioral analysis to uncover patterns in high-value transactions.
*/

-- Analyzing High-Value Customers by Purchase Patterns

SELECT 
    color,
    size,
    COUNT(*) AS purchase_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_price
FROM shopping_trends
GROUP BY color, size
ORDER BY purchase_count DESC
LIMIT 10;

/*
    Most purchases were made for size M, indicating it is the most popular size among customers.
Top-selling colors include Violet, Olive, and Silver, showing a clear preference for neutral or darker tones.

✅ Recommendation :
Increase inventory for size M, especially in the top-performing colors like Violet, Olive, and Gray.

Promote these popular colors and sizes through targeted marketing and sales campaigns.

Consider introducing new products in size M with similar or complementary colors (e.g., Lavender or Khaki) to broaden appeal.
*/