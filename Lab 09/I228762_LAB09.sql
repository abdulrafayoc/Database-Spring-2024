

Select * from User
Select * from UserCard
Select * from Card
Select * from CardType
Select * from Transaction

-- Find the total number of unique users of each cardType.
Select cardTypeID, count(distinct userID) as TotalUsers 
from UserCard group by cardTypeID



-- 2. Show the card numbers and usernames whose balance is in the range (Min: 2000,
-- Max: 4000).
Select c.cardNum, u.name from Card c 
join UserCard uc on c.cardNum = uc.cardNum 
join User u on uc.userID = u.userId 
where c.balance between 2000 and 4000

-- 3. Show the name of those users who do not possess any card.
-- a. using set operation.
-- b. using join.
Select name from User 
where userId not in (Select userID from UserCard)


-- 4. Show the id of those cards along with the card type name and the owner’s name for
-- which no transaction has been carried out in the last year. (Do not hardcode the year
-- as 2018. To get current year you can use year (getdate() ) ).
-- a. using set operation
Select c.cardNum, ct.name, u.name from Card c
join UserCard uc on c.cardNum = uc.cardNum
join User u on uc.userID = u.userId
join CardType ct on c.cardTypeID = ct.cardTypeID
except
Select c.cardNum, ct.name, u.name from Card c
join UserCard uc on c.cardNum = uc.cardNum
join User u on uc.userID = u.userId
join CardType ct on c.cardTypeID = ct.cardTypeID
join Transaction t on c.cardNum = t.cardNum
where t.transDate > DATEADD(year, -1, getdate())



-- b. using join
Select c.cardNum, ct.name, u.name from Card c 
join UserCard uc on c.cardNum = uc.cardNum 
join User u on uc.userID = u.userId 
join CardType ct on c.cardTypeID = ct.cardTypeID 
where c.cardNum not in (Select cardNum 
from Transaction where transDate > DATEADD(year, -1, getdate()))

-- 5. For each card type, show the total number of cards whose total sum of transaction
-- amount is greater than 6000. Consider only the transactions carried out in the period
-- 2015-2017.
Select ct.name, count(c.cardNum) as TotalCards from Card c
join CardType ct on c.cardTypeID = ct.cardTypeID
join Transaction t on c.cardNum = t
.cardNum
where t.transDate between '2015-01-01' and '2017-12-31'
group by ct.name
having sum(t.amount) > 6000

-- 6. List the user id, name, phone number, city of those users whose card is expiring
-- within the next 3 months. Also show the card number along with card type name.
Select u.userId, u.name, u.phoneNum, u.city, c.cardNum, ct.name from User u
join UserCard uc on u.userId = uc.userID
join Card c on uc.cardNum = c.cardNum
join CardType ct on c.cardTypeID = ct.cardTypeID
where c.expireDate between getdate() and DATEADD(month, 3, getdate())


-- 7. Show the user id and name of those users whose total balance is equal to or greater
-- than 5000. It is possible that a user has more than 1 card. In such a case, you will have
-- to take sum of balance of each card of the user.
Select u.userId, u.name from User u
join UserCard uc on u.userId = uc.userID
join Card c on uc.cardNum = c.cardNum
group by u.userId, u.name
having sum(c.balance) >= 5000


-- 8. Show those card pairs which are expiring in the same year.
Select c1.cardNum, c2.cardNum from Card c1
join Card c2 on c1.expireDate = c2.expireDate
where year(c1.expireDate) = year(c2.expireDate) and c1.cardNum != c2.cardNum


-- 9. Show those user pairs whose names’ first characters are the same. (use substring)
Select u1.name, u2.name from User u1
join User u2 on substring(u1.name, 1, 1) = substring(u2.name, 1, 1)
where u1.userId != u2.userId


-- 10. Show the name and id of those users who possess both the credit card and the debit
-- card. (insert your data in such a way that no foreign constraint is violated and you
-- should have both credit and debit card)
Select u.userId, u.name from User u
join UserCard uc on u.userId = uc.userID
join Card c on uc.cardNum = c.cardNum
join CardType ct on c.cardTypeID = ct.cardTypeID
group by u.userId, u.name
having count(distinct ct.name) = 2


-- 11. Show the City name, number of users and the sum of amount of the users from same
-- city.
Select u.city, count(distinct u.userId) as TotalUsers, sum(t.amount) as TotalAmount from User u
join UserCard uc on u.userId = uc.userID
join Card c on uc.cardNum = c.cardNum
join Transaction t on c.cardNum = t.cardNum
group by u.city
