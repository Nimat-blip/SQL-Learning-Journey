-- 1 All column from the rendora table
select* from task.rendora;

-- 2 Select only the CustomerID, ItemPurchased, and PurchaseAmount(USD). 
select CustomerID, ItemPurchased, PurchaseAmount 
	from task.rendora;

-- 3 Retrieve all purchases with a PurchaseAmount greater than 60.
select ItemPurchased, PurchaseAmount
	from task.rendora where PurchaseAmount > 60;

-- 4 Retrieve all records where the Category is either 'Clothing' or 'Footwear'.
select* from task.rendora
	where Category = "Clothing"  OR  "Footwear";

-- 5 Retrieve all records where the Color is 'Gray' and the Size is 'M'.
select* from task.rendora
	where Color = "Gray" AND Size = "M";

-- 6 Retrieve records where the PurchaseAmount is between 30 and 70. 
select* from task.rendora
	where PurchaseAmount between 30 AND 70;

--  7 Get all purchases made in the Spring or Summer seasons.
select ItemPurchased, Season from task.rendora
	where Season = "Spring" OR "Summer";
    
-- 8 Find all purchases where the PaymentMethod is not 'Cash'. 
select ItemPurchased, PaymentMethod from task.rendora
	where PaymentMethod <> "Cash";
	
-- 9 Retrieve all female customers who bought items in the 'Clothing' category. 
select CustomerID, Gender, Category from task.rendora
	where Gender = "Female" AND Category = "Clothing";

-- 10 Retrieve all customers who used a promo code and got a discount greater than 0.
select CustomerID, PromoCodeUsed, DiscountValue
	from task.rendora where PromoCodeUsed = "Yes" AND DiscountValue > 0;
    
-- 11 List all purchases sorted by PurchaseAmount in descending order. 
select ItemPurchased, PurchaseAmount
from task.rendora order by PurchaseAmount DESC;

-- 12 List the top 3 most expensive purchases.
select ItemPurchased, Category, PurchaseAmount
	from task.rendora order by PurchaseAmount DESC
		limit 3;
        
-- 13 Show the 2 least expensive purchases. 
select ItemPurchased, Category, PurchaseAmount
	from task.rendora order by PurchaseAmount
		limit 2;

-- 14 Display 5 records skipping the first 3 (use OFFSET). 
select ItemPurchased, Category, PurchaseAmount
	from task.rendora order by PurchaseAmount DESC
		limit 5 offset 3;

-- 15 Retrieve the first 5 customers who used 'Express' shipping. 
select CustomerID, ShippingType
from task.rendora where ShippingType like "Ex%";

