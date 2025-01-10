use Assignment2;


--Q1
Select * from Products;

--Q2
Select name, price from Products;

--Q3
Select * from Products
Where price > 1000;

--Q4
Select * from Products
Where stock_level <= 50;

--Q5
Select * from Products
Order by price Desc;

--Q6
Select * from Products
Where price > 1000 And price < 5000;

--Q7
Select * from Products
Where name like 'P%';

--Q8
Select * from Products
Where name like '%Shoes%';

--Q9 
Select * from Products
Order by name Asc;

--Q10
Select distinct category_id from Products;

--Q11
Select * from Products
Where price >= 3000 And category_id = 2;

--Q12
Select * from Products
Where stock_level >= 10 And stock_level <= 20;

--Q13
Select * from Products
Where name like 'M%' And price > 5000;

--Q14
Select * from Products
Where description like '%embroidered%' And price > 5000;

--Q15
Select * from Products
Order by stock_level Desc;

--Q16
Select * from Products
where name not like 'L%';

--Q17
Select * from Products
Where price > (
Select avg(price) from Products);

--Q18
Select * from Products
Where stock_level < (
Select min(stock_level) from Products);

--Q19
Select * from Products
Where category_id in(1, 3, 4);

--Q20
Select * from Products
Where name like '%Suit';

--Q21
Select count(*) from Products;

--Q22
Select avg(price) from Products;

--Q23
Select max(price) from Products;

--Q24
Select min(stock_level) from Products;

--Q25
Select sum(stock_level) from Products;

--Q26
Select avg(stock_level) from Products;

--Q27
Select category_id, count(*) from Products
Group by category_id;

--Q28
Select sum(price * stock_level) from Products;

--Q29
Select * from Products
Where price = (
Select max(price) from products);

--Q30
Select sum(len(name)) from Products;

--Q31
Select avg(price) from Products
Group by category_id;

--Q32
Select * from Products
Where stock_level = (
Select min(stock_level) from Products);

--Q33
Select count(*) from Products
Where stock_level > 0;

--Q34
Select price * stock_level from Products;

--Q35
Select c.name, count(p.product_id) as total_products from Categories c
join Products p on c.category_id = p.category_id
Group by c.name
Having count(p.product_id) = (
Select max(total_products) from(
Select count(p.product_id) as total_products from Categories c
join Products p on c.category_id = p.category_id
Group by c.name) as max_products);

--Q36
Select max(price)-min(price) from Products;

--Q37
Select * from Products
where stock_level = (
Select max(stock_level) from Products);

--Q38
Select c.name, avg(p.price) as avg_price from Products p
join Categories c on c.category_id = p.category_id
Group by c.name
Having avg(p.price) = (
Select max(avg_price) from(
Select avg(p.price) as avg_price from Products p
join Categories c on c.category_id = p.category_id
Group by c.name) as highest_avg);

--Q39
Select count(*) from Products
Where price > 5000;

--Q40
Select category_id, sum(price * stock_level) from Products
Group by category_id;

--41
Select count(*) from Orders;

--42 idhr ek dafa chec karli
Select avg(order_total) from ( 
Select sum(oi.quantity * p.price) as order_total from Order_Items oi
join Products p on p.product_id = oi.product_id
Group by order_id) as order_totals;

--Q43
Select c.customer_id, c.first_name, c.last_name, count(o.order_id) as total_orders from Customers c
join Orders o on c.customer_id = o.customer_id
Group by c.customer_id, c.first_name, c.last_name
Having count(o.order_id) =(
Select max(total_orders) from(
Select count(o.order_id) as total_orders from Orders o
Where o.customer_id = c.customer_id) as most_orders);

--Q44
Select p.product_id, p.name, count(r.review_id) from Products p
join Reviews r on r.product_id = p.product_id
Group by p.product_id, p.name;

--Q45
Select c.category_id, c.name, sum(oi.quantity * p.price) from Categories c
join Products p on p.category_id = c.category_id
join Order_Items oi on oi.product_id = p.product_id
Group by c.category_id, c.name;


--Q46
Select c.customer_id, c.first_name, c.last_name, avg(p.price) from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name;

--Q47
Select p.product_id, p.name, p.price * (1 - pr.discount_value) from Products p
join Product_Promotions pp on pp.product_id = p.product_id
join Promotions pr on pr.promotion_id = pp.promotion_id And pr.discount_value is not Null
Group by p.product_id, p.name, p.price, pr.discount_value;

--Q48
Select c.customer_id, c.first_name, c.last_name, count(ca.cart_id) from Customers c
join Carts ca on ca.customer_id = c.customer_id
Group by c.customer_id, c.first_name, c.last_name;

--Q49
Select order_id, sum(quantity) from Order_Items
Group by order_id;

--Q50
Select c.customer_id, c.first_name, c.last_name, sum(p.price * oi.quantity) from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name
Having sum(p.price * oi.quantity) = (
Select max(total_spending) from(
Select sum(p.price * oi.quantity) as total_spending from Orders o
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by o.customer_id) as max_speniding);

--Q51
Select c.customer_id, c.first_name, c.last_name, count(r.review_id) from Customers c
join Reviews r on r.customer_id = c.customer_id
Group by c.customer_id, c.first_name, c.last_name;

--Q52
Select c.customer_id, c.first_name, c.last_name, avg(oi.quantity * p.price) from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name;

--Q53
Select c.category_id, c.name, avg(p.price) as avg_price from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name
Having avg(p.price) = (
Select max(avg_price) from (
Select avg(p.price) as avg_price from Products p
join Categories c on c.category_id = p.category_id
Group by c.category_id) as highest_price);

--Q54
Select month(o.order_date) as month, count(o.order_id) from Orders o
Group by month(o.order_date);

--Q55
Select c.customer_id, c.first_name, c.last_name, sum(oi.quantity * p.price) from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name;

--Q56
Select c.category_id, c.name, count(r.review_id) from Categories c
join Products p on p.category_id = c.category_id
join Reviews r on r.product_id = p.product_id
Group by c.category_id, c.name;

--Q57
Select p.product_id, p.name, avg(r.rating) as avg_rating from Products p
join Reviews r on r.product_id = p.product_id
Group by p.product_id, p.name
Having avg(r.rating) =(
Select max(avg_rating) from(
Select avg(r.rating) as avg_rating from Products p
join Reviews r on r.product_id = p.product_id
Group by p.product_id) as highest_rating);

--Q58
Select year(o.order_date) as year, count(o.order_id) from Orders o
Group by year(o.order_date);

--Q59
Select c.customer_id, c.first_name, c.last_name, sum(oi.quantity * p.price) as order_total from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name
Having sum(oi.quantity * p.price) =(
Select max(order_total) from(
Select sum(oi.quantity * p.price) as order_total from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id) as highest_total);

--Q60
Select c.customer_id, c.first_name, c.last_name, sum(oi.quantity * p.price) from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name;

--Q61
Select c.category_id, c.name, count(p.product_id) from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name;

--Q62
Select c.category_id, c.name, avg(p.price) from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name;

--Q63
Select c.category_id, c.name, sum(p.price * p.stock_level) as total_value from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name
Having sum(p.price * p.stock_level) =(
Select max(total_value) from(
Select sum(p.price * p.stock_level) as total_value from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id) as highest_value);

--Q64
Select c.category_id, c.name, avg(p.stock_level) from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name
Having count(p.product_id) > 10;

--Q65
Select c.customer_id, c.first_name, c.last_name, count(o.order_id) from Customers c
join Orders o on o.customer_id = c.customer_id
Group by c.customer_id, c.first_name, c.last_name;

--Q66
Select c.customer_id, c.first_name, c.last_name, avg(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name;

--Q67
--Wrong Query

--Q68
Select c.customer_id, c.first_name, c.last_name, sum(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name
Having sum(oi.quantity * p.price) =(
Select max(order_value) from(
Select sum(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id) as highest_value);

--Q69
Select c.category_id, c.name, avg(p.price) as avg_price from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name
Having avg(p.price) =(
Select max(avg_price) from(
Select avg(p.price) as avg_price from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id) as highest_price);

--Q70
Select p.product_id, p.name, avg(r.rating) as rating from Products p
join Reviews r on r.product_id = p.product_id
Group by p.product_id, p.name
Having avg(r.rating) =(
Select max(rating) from(
Select avg(r.rating) as rating from Products p
join Reviews r on r.product_id = p.product_id
Group by p.product_id) as highest_rating);

--Q71
Select c.customer_id, c.first_name, c.last_name, sum(oi.quantity) from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
Group by c.customer_id, c.first_name, c.last_name;

--Q72
Select c.category_id, c.name, avg(r.rating) from Categories c
join Products p on p.category_id = c.category_id
join Reviews r on r.product_id = p.product_id
Group by c.category_id, c.name;

--Q73
Select c.category_id, c.name, count(p.product_id) as total_products from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name
Having count(p.product_id) =(
Select max(total_products) from(
Select count(p.product_id) as total_products from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id) as highest_total);

--Q74
Select c.customer_id, c.first_name, c.last_name, sum(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name
Having sum(oi.quantity * p.price) =(
Select max(order_value) from(
Select sum(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id) as highest_value);

--Q75
Select p.product_id, p.name, count(oi.order_id) as numbers_of_orders from Products p
join Order_Items oi on oi.product_id = p.product_id
Group by p.product_id, p.name
Having count(oi.order_id) =(
Select max(numbers_of_orders) from(
Select count(oi.order_id) as numbers_of_orders from Products p
join Order_Items oi on oi.product_id = p.product_id
Group by p.product_id) as highest_orders);

--Q76
Select c.category_id, c.name, sum(oi.quantity * p.price) as order_value from Categories c
join Products p on p.category_id = c.category_id
join Order_Items oi on oi.product_id = p.product_id
Group by c.category_id, c.name
Having sum(oi.quantity * p.price) =(
Select max(order_value) from(
Select sum(oi.quantity * p.price) as order_value from Categories c
join Products p on p.category_id = c.category_id
join Order_Items oi on oi.product_id = p.product_id
Group by c.category_id) as highest_value);

--Q77
Select c.customer_id, c.first_name, c.last_name, avg(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id, c.first_name, c.last_name
Having avg(oi.quantity * p.price) =(
Select max(order_value) from(
Select avg(oi.quantity * p.price) as order_value from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
join Products p on p.product_id = oi.product_id
Group by c.customer_id) as highest_value);

--Q78
Select p.product_id, p.name, sum(oi.quantity) as order_quantity from Products p
join Order_Items oi on oi.product_id = p.product_id
Group by p.product_id, p.name
Having sum(oi.quantity) =(
Select max(order_quantity) from(
Select sum(oi.quantity) as order_quantity from Products p
join Order_Items oi on oi.product_id = p.product_id
Group by p.product_id) as most_order);

--Q79
Select c.customer_id, c.first_name, c.last_name, avg(oi.quantity) as avg_quantity from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
Group by c.customer_id, c.first_name, c.last_name
Having avg(oi.quantity) =(
Select max(avg_quantity) from(
Select avg(oi.quantity) as avg_quantity from Customers c
join Orders o on o.customer_id = c.customer_id
join Order_Items oi on oi.order_id = o.order_id
Group by c.customer_id) as highest_avg);

--Q80
Select c.category_id, c.name, avg(p.stock_level) as avg_stock from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id, c.name
Having avg(p.stock_level) =(
Select max(avg_stock) from(
Select avg(p.stock_level) as avg_stock from Categories c
join Products p on p.category_id = c.category_id
Group by c.category_id) as highest_stock);


