CREATE TABLE shopping_trends (
    Customer_ID INT,
    Age FLOAT,
    category_age VARCHAR(50),
    Gender VARCHAR(10),
    Item_Purchased VARCHAR(100),
    Category VARCHAR(50),
    Purchase_Amount_USD NUMERIC(10, 2),
    Location VARCHAR(100),
    Size VARCHAR(10),
    Color VARCHAR(30),
    Season VARCHAR(20),
    Review_Rating NUMERIC(2, 1),
    Subscription_Status VARCHAR(10),
    Payment_Method VARCHAR(50),
    Shipping_Type VARCHAR(50),
    Discount_Applied BOOLEAN,
    Promo_Code_Used BOOLEAN,
    Previous_Purchases INT,
    Preferred_Payment_Method VARCHAR(50),
    Frequency_of_Purchases INT
);

ALTER TABLE shopping_trends
ALTER COLUMN Frequency_of_Purchases TYPE VARCHAR(20);


ALTER TABLE shopping_trends OWNER to postgres;