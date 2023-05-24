select * from dbo.gsquareproject;

--TOP 10 CUSTOMERS WITH NUMBER OF PRODUCTS ORDERD BY THEM
select  TOP 10 sum(Product_Quantity) AS product_orderby1,Customer_Name from dbo.gsquareproject group by Customer_Name order by product_orderby1 desc;


--TOTAL NUMBER OF PRODUCTS SOLD
select sum(Product_Quantity) as Total_Products_Sold from dbo.gsquareproject;


--TOTAL NUMBER OF CUSTOMERS
select count(distinct(Customer_Mobile)) as Total_Customers from dbo.gsquareproject ;

--how many cities and state we have delivered our product
select count(distinct(Address_City)) as CITY_APPROACHED , count(distinct(Address_State)) as STATE_APPROACHED, count(distinct(Address_pincode)) as PINCODE_COVERED 
from dbo.gsquareproject;

--CITIES WE HAVE COVERED
select distinct(Address_City) as CITY_APPROACHED from dbo.gsquareproject;

--STATES WE HAVE COVERED (NO ORDER FROM BIHAR)
select distinct(Address_State) as STATE_APPROACHED from dbo.gsquareproject;

--ORDER QUANTITY FROM EVERY STATE
select count(product_quantity) as order_quantity,Address_state from dbo.gsquareproject  group by Address_State  order by order_quantity desc ;

--COURIER SERVICES USED
select distinct(courier_company) as delivery_partners, count(courier_company) as order_delivered from dbo.gsquareproject
group by Courier_Company order by order_delivered desc;

--SUPPLIERS DETAILS
select distinct(Pickup_Address_Name) as SUPPLIERS,count(Pickup_Address_Name) as ORDER_SUPPLIED from dbo.gsquareproject 
group by Pickup_Address_Name order by ORDER_SUPPLIED DESC;

--NUMBER OF PREPIAD AND CASH ON DELIVERY ORDERS
select distinct(Payment_Method) as Payment_Mode , count(Payment_Method) as Number_Of_Payments from dbo.gsquareproject 
group by Payment_Method order by Number_Of_Payments DESC;

--TOTAL SALE FROM JULY TO SEPTEMBER
select sum(Product_Price) as TOTAL_SALES from dbo.gsquareproject; 