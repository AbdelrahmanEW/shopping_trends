-- Customer Behavior Analysis
-- This SQL script analyzes customer behavior based on various attributes such as age
SELECT
    review_rating,
    count(*) AS review_count,
    ROUND(avg(purchase_amount_usd), 2) AS avg_spending_score
FROM shopping_trends
GROUP BY review_rating
ORDER BY avg_spending_score DESC
LIMIT 20;

-- Customers with ratings 5.0 and 4.9 have the highest average spending ($64.35 and $63.89), indicating a strong link between satisfaction and spending.

-- Surprisingly, rating 2.5 also shows high average spending ($62.29), suggesting high spenders may still leave poor reviews if expectations aren't met.

-- Most ratings between 3.0 and 4.4 show gradual decline in spending as ratings drop.

-- ✅ Recommendation:
-- Focus on retaining high-spending customers by improving their experience and satisfaction.

-- Investigate low ratings with high spending to uncover and resolve pain points.


-------------------------------------------------------------------------------------------------------
-- This SQL query segments customers based on their purchase history to identify loyalty levels and spending patterns.

SELECT 
    CASE 
        WHEN previous_purchases < 5 THEN 'New'
        WHEN previous_purchases BETWEEN 5 AND 10 THEN 'Beginner'
        WHEN previous_purchases BETWEEN 11 AND 20 THEN 'Regular'
        WHEN previous_purchases BETWEEN 21 AND 30 THEN 'Engaged'
        WHEN previous_purchases BETWEEN 31 AND 40 THEN 'Loyal'
        WHEN previous_purchases BETWEEN 41 AND 50 THEN 'Very Loyal'
        ELSE 'Champion'
    END AS customer_segment,

    COUNT(*) AS customer_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase
FROM shopping_trends
GROUP BY customer_segment;

/*
 The Beginner segment has the highest average purchase ($61.44), followed by Very Loyal customers ($60.90).

Segments like Loyal, Regular, and Engaged have the largest customer counts, but lower average spending (~$59).

New customers show solid average spending ($59.65), indicating strong initial interest.

✅ Recommendation:
Nurture Beginners — they spend the most and have potential to become loyal.

Encourage higher spending among active segments (Loyal, Regular, Engaged) via tailored offers.

Don't underestimate New customers — convert them into long-term buyers with early engagement strategies.
*/
--------------------------------------------------------------------------------------------------------


SELECT 
    subscription_status,
    COUNT(*) AS customer_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase,
    ROUND(AVG(review_rating), 2) AS avg_rating
FROM shopping_trends
GROUP BY subscription_status;


/*
    Both subscribed and non-subscribed customers spend almost the same and give similar ratings,
     suggesting that subscription has minimal impact on spending or satisfaction.   
*/