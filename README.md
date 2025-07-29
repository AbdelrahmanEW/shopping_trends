# 🛒 Customer Purchase Behavior Analysis

This project analyzes customer purchase behavior using data tools like **Excel**, **PostgreSQL**, **Power BI**, and **Jupyter Notebook**. The goal is to uncover actionable insights that help improve marketing strategies, boost customer loyalty, and increase revenue.

---

## 📦 Dataset Overview

The dataset contains customer-level purchase data with the following key fields:
- `previous_purchases`
- `frequency_of_purchases`
- `subscription_status`
- `preferred_payment_method`
- `promo_code_used`
- `discount_applied`
- `purchase_amount_usd`
- `payment_method`
- `shipping_type`
- `review_rating`

---

## 🔧 Tools Used

| Tool        | Purpose                             |
|-------------|-------------------------------------|
| **Excel**   | Initial cleaning & quick insights   |
| **PostgreSQL** | Querying and segmenting data     |
| **Power BI**| Visualizations and dashboards       |
| **Jupyter** | Exploratory data analysis with Python|

---
## 🧠 SQL-Based Insights & Recommendations

### 👤 Customer Demographics

- **Top Spenders:** Young Adult Females spend the most ($61.98 avg).
- **Females generally spend more** than males across most age groups.
- **Teens** (both genders) have small representation but high individual spending.
- **Middle-aged Males** are the largest group but have lower average spending.

✅ **Recommendation:**  
- Target **Young Adult Males** and **Middle-aged Males** to increase total revenue.
- Leverage **high-value Teens** with curated offers or loyalty onboarding.

---

### 🌍 Insights by Location

- **Montana** ranks first in total purchase value ($5,784), even though it’s not the most populous.
- **Illinois** and **California** follow in total spending.
- Locations like **Idaho, North Dakota, Vermont** show high average spend per customer.

✅ **Recommendation:**  
Focus marketing in **high-performing but less-populated** states — high revenue per customer makes them valuable targets.

---

### 📅 Insights by Season & Product Category

- **Fall:** Footwear leads in average price ($63.71).
- **Spring:** Clothing dominates in both volume (454) and avg price ($61).
- **Summer:** Accessories have the highest avg price ($60.99).

✅ **Recommendation:**  
- Focus on **Footwear** promotions in Fall.  
- **Clothing** in Spring.  
- Highlight **Accessories** during Summer sales.

---

### 💸 Discounts & Promotions Impact

- Purchases **without discounts/promo codes** have the **highest average value** ($60.13).
- Discounts lower the **revenue and average spend** ($59.28 with both).

✅ **Recommendation:**  
Use **promotions strategically** — overuse can reduce profitability.

---

### 🧩 Customer Segments

- **Beginner customers** have the highest average spend ($61.44).
- **Very Loyal** follow with $60.90.
- **New customers** also show strong spending ($59.65).

✅ **Recommendation:**  
- Nurture **Beginners** — they’re high-value and have growth potential.  
- Create offers to **boost spending** from Loyal and Engaged segments.  
- **Convert New customers** early into long-term loyal buyers.

---

## 📌 Summary

- Prioritize **high-spending segments** (Young Adult Females, Beginners, Teens).
- Optimize promotions — **less is more** for revenue.
- Personalize strategies by **season**, **segment**, and **location**.


## 📊 Key Insights

### 🎯 Promotions & Discounts
- Customers **not using promo codes or discounts** spend more ($60.13) than those who do ($59.27).

### 💳 Payment Methods
- **Debit Card users** have the highest average purchase ($60.91), while **Venmo** users spend the least ($58.95).
- Most-used payment methods: **PayPal**, **Credit Card**, and **Cash**.

### 🧾 Subscription
- **Non-subscribers** spend more ($59.87) than subscribers ($59.49).

### 🚚 Shipping & Reviews
- **Express Shipping** customers tend to spend more than **Standard**.
- Higher **review ratings** are slightly associated with higher spending.

---

## ✅ Recommendations

- Avoid unnecessary discounting to preserve average purchase value.
- Promote **Debit Card** as a preferred payment method.
- Support popular methods like **PayPal** and **Credit Card** for ease of use.
- Reevaluate the subscription offering — it's not currently increasing spending.
- Promote **express shipping** for high-value customers.
- Encourage customers to leave reviews for better behavioral tracking.

---

## 📁 Project Structure

- 🔍 **SQL Queries** → Check them out here: [`shopping_trends_sql`](/shopping_trends_sql/)
- 📊 **Excel Analysis** → Explore the Excel dashboards and pivots: [`shopping trends excel`](/shopping%20ternds%20excel/)
- 📈 **Jupyter Notebooks** → Python-powered insights using pandas and matplotlib: [`shopping trends jupyter`](/shopping%20trends%20jupyter/)
- 📉 **Power BI Dashboards** → Interactive visualizations and analysis: [`shopping trends power bi`](/shopping%20trends%20power%20bi/)
- 🧱 **SQL Data Load Scripts** → Scripts to load data into SQL: [`sql_load`](/sql_load/)
- 📄 **Dataset** → Main dataset used for analysis: [`shopping_trends.csv`](/shopping_trends.csv)
