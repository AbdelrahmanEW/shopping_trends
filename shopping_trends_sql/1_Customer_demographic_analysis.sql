
-- This query analyzes the distribution of customers based on their age categories
SELECT
    category_age,
    gender,
    count(*) AS customer_count,
    ROUND(avg(purchase_amount_usd),2) AS avg_spending_score
FROM shopping_trends
GROUP BY category_age , gender
ORDER BY avg_spending_score DESC
LIMIT 20;

-- Key Insights:
-- Top Spenders: Young Adult Females have the highest average spending ($61.98).

-- Females generally spend more than males across most age groups.

-- Teens (both genders) show high spending despite small numbers — indicating high per-customer value.

-- Middle-aged Males are the largest group but have lower average spending.

-- Growth Opportunity: Targeting Young Adult Males and Middle-aged Males could boost overall spending.

-----------------------------------------------------------------

-- Which regions have the highest number of customers and purchase value
-- This query retrieves the top 20 locations with the highest number of customers and their total purchase value
SELECT 
    location ,
    count(*) AS customer_count,
    ROUND(sum(purchase_amount_usd), 2) AS total_purchase_value
    FROM shopping_trends
GROUP BY location
ORDER BY total_purchase_value DESC
LIMIT 20;


-- 📍 Top Insights by Location (English):
-- Montana ranks first in total purchase value ($5,784) despite not having the highest customer count.

-- Illinois and California follow, showing strong spending power per customer.

-- Customer counts across locations are fairly similar (72–96), indicating that buying behavior, not population size, drives revenue.

-- Smaller states like Idaho, North Dakota, and Vermont perform well, suggesting high average spend per customer.

-- ✅ Recommendation:
-- Focus marketing on these high-performing but less populated states — they show strong revenue potential per customer.