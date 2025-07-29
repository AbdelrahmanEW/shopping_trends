
-- This SQL query analyzes buying patterns by counting the number of purchases and calculating the average price for each item in different categories.
SELECT 
    category,
    item_purchased,
    COUNT(*) AS purchase_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_price
FROM shopping_trends
GROUP BY category, item_purchased
ORDER BY purchase_count DESC
LIMIT 10;

-- Top-selling items are Pants, Jewelry, and Blouse, each with 171 purchases.

-- Clothing dominates the top 10, indicating it's the most popular category.

-- Dresses and Shirts are among the highest-priced items, averaging over $61.

-- Accessories like Jewelry, Sunglasses, and Belts also appear frequently, showing broad customer interest.

-- ✅ Recommendation:
-- Prioritize stocking and promoting essential clothing items like pants and blouses, while highlighting premium items like dresses. Also, use accessories to increase cart value and attract variety-seeking shoppers.

------------------------------------------------------------------------------------------

-- This SQL query analyzes seasonal buying patterns by counting the number of purchases and calculating the average price for each category in different seasons.
SELECT 
    season,
    category,
    COUNT(*) AS purchase_count, 
    ROUND(AVG(purchase_amount_usd), 2) AS avg_price
FROM shopping_trends
GROUP BY season, category
ORDER BY season, avg_price DESC
LIMIT 10;

-- 🟢 Insights by Season & Category (in English):
-- In Fall, Footwear has the highest average price ($63.71), followed by Clothing and Accessories (both around $61).

-- In Spring, Clothing leads in both purchase count (454) and average price ($61.00), followed by Footwear and Accessories.

-- In Summer, Accessories top the list with an average price of $60.99, slightly higher than Footwear.

-- ✅ Recommendation:
-- Focus marketing on Footwear during Fall and Clothing during Spring to maximize revenue from high-value items.

-- Summer promotions can highlight Accessories, which show strong pricing performance.

------------------------------------------------------------------------------------------

-- This SQL query analyzes the impact of discounts and promotions on customer purchases by counting transactions and calculating average purchase amounts.
-- It also checks the effect of discounts and promo codes on high-value purchases.

SELECT 
    discount_applied,
    promo_code_used,
    COUNT(*) AS transaction_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase,
    ROUND(SUM(purchase_amount_usd), 2) AS total_revenue
FROM shopping_trends
GROUP BY discount_applied, promo_code_used
ORDER BY total_revenue DESC;

-- 🔍 Insight (in English):
-- Transactions without discounts or promo codes generate the highest revenue ($133,670) and highest average purchase ($60.13).

-- Transactions with both discount and promo code generate lower revenue ($99,411) and lower average purchase ($59.28).

-- ✅ Recommendation:
-- Promotional offers may boost transaction count but tend to reduce both revenue and average spend.

-- Use discounts strategically to avoid sacrificing profit margins.

-------------------------------------------------------
