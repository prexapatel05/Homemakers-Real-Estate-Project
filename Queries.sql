Seller related queries:
1. list of properties sold/given on rent by a particular owner and properties left


select * from(
select owner_id,property_id,'Sold' as Status from
(select owner_id,property_id,sum(amount_paid) as amount_paid,price from
(select * from sell_transaction natural join sell where status='Successful' and owner_id='U000000005') as temp 
group by(property_id,owner_id,price) ) as r1 where amount_paid=price
union
select owner_id,apn as property_id, 'Available' as Status from
property where status='Available' and owner_id='U000000005'
union
select distinct owner_id,property_id,'Given on Rent' as Status from
rent_transaction where owner_id='U000000005'
);

2. Amount earned by the property owner either by selling or offering any property/properties on rent


 select o1 as owner_id,amount_through_rent,amount_through_sell from 
 ((select owner_id as o1 from rent_transaction union select owner_id as o1 from sell_transaction)
 left outer join
 (select owner_id,sum(amount_paid) as amount_through_rent from rent_transaction group by owner_id)
 on o1=owner_id)as r1
 left outer join
(select owner_id as o2,sum(amount_paid) as amount_through_sell from sell_transaction where status='Successful' group by owner_id)
on o1=o2;


3. Property-wise information about the amount paid by the buyer and the pending amount


                SELECT s.property_id, s.owner_id, s.price AS total_price,
COALESCE(t.total_paid, 0) AS total_paid,
s.price - COALESCE(t.total_paid, 0) AS pending_amount
FROM sell as s
LEFT JOIN (SELECT property_id, owner_id, SUM(amount_paid) AS total_paid
FROM sell_transaction
WHERE status = 'Successful'
GROUP BY property_id, owner_id) AS t
ON s.property_id = t.property_id AND s.owner_id = t.owner_id
WHERE EXISTS (SELECT * FROM sell_transaction st 
WHERE st.property_id = s.property_id AND st.owner_id = s.owner_id);






________________




—--Agent related—-


4. Year-wise data of successful appointments out of  total appointments scheduled in that year
(This query is also related to the Estate company owners if they want to  keep record of the successful appointments that happened)
select * from (select extract('year' from visit_date) as year,count(*) as successful_appointments
from appointment as a where status='Completed' and (exists(select * from rent_transaction as r
where a.user_id=rented_by and a.property_id=r.property_id) or 
exists(
select * from(
select property_id,purchased_by,sum(amount_paid) as amount_paid,price from
(select * from sell_transaction as s natural join sell where status='Successful') as temp 
group by 
(property_id,owner_id,price,purchased_by)) as temp2
where temp2.property_id=a.property_id and amount_paid=price and purchased_by=a.user_id))
group by extract('year' from visit_date)) as
r1 natural join
(select extract('year' from visit_date) as year, count(*) as total_appointments from appointment where status='Completed'
group by extract('year' from visit_date) ) as r2;


5. Tracking how many appointments have been done and how many are left

        SELECT   COUNT(*) AS total_appointments ,a.status  FROM Appointment as a
JOIN (select apn,agent_lc_no from property) as p ON a.property_id = p.apn
WHERE p.agent_lc_no = 100000000001
GROUP BY a.status;


6. Commission Earned by agents by helping the owner either by selling or renting the property.


select agent_lc_no,sum(Commission_earned) as total_commission from
(select agent_lc_no,property_id,(commission*price/100.0) as Commission_earned
from commission 
natural join
(select * from(
select property_id, purchased_by,sum(amount_paid) as amount_paid,price,agent_lc_no from
(select * from sell_transaction as s natural join sell where status='Successful') as temp
group by
(property_id,owner_id,price,purchased_by,agent_lc_no)) as temp2
where amount_paid=price) as r1 
union
select agent_lc_no,property_id,(commission*Monthly_rent/100.0) as Commission_earned
from commission 
natural join
(select distinct property_id,Monthly_rent,agent_lc_no from
rent_transaction natural join rent) as temp2) as final group by agent_lc_no;


________________




Buyer related Queries:


7. list out names and property_ids of 5 most inquired properties


select title, APN as property_id from property 
        natural join(select property_id as APN, count(*) as cnt 
        from inquiry group by property_id order by cnt desc limit 5) as r1;


8. Searching a property based on individual Amenity(s) and display whether its available for rent, sale, or both
        select property_id, available_for from 
(select property_id from individual_amenities where amenity_name='Water Supply') as r1
join 
(select apn, available_for
from property where status not in ('Unavailable')) as p on apn=property_id;


9. List all societies and their shared amenities (Can be used by the Owner to keep tract of societies whose properties are on the database)
                       SELECT s.Society_name, sa.Amenity_name
                       FROM Society s
                     JOIN Shared_amenities sa ON s.Society_reg_no = sa.Society_reg_no
                    ORDER BY s.Society_name;


________________














Queries related to Admin and the real estate company Owners:


10. Updating the property Status once the property is rented


update property as p set status='Rented' from (select property_id, max(pay_date) as pay_date
from rent_transaction group by property_id) as r
JOIN (select property_id, max(pay_date) as pay_date from sell_transaction group by property_id) as s 
ON r.property_id=s.property_id
where apn=r.property_id and r.pay_date>s.pay_date;


11. Updating the property status to ‘sold’ and the Owner_id, as well as agent_lc_no after successful transaction of Selling of the property.
(This query ensures that the updation doesn’t happen when there are pending amounts/faild transactions by checking amount_paid=price)


update property as p set status='Sold',agent_lc_no=NULL,owner_id=new_owner
from (select property_id,owner_id as previous_owner,
purchased_by as new_owner,price,sum(amount_paid) as amount_paid 
from (select * from sell_transaction natural join sell 
where status='Successful' )as temp group by(property_id,owner_id,price,purchased_by))
where p.apn=property_id and p.owner_id=previous_owner and amount_paid=price;




12. Detect suspicious users who made reviews without ever visiting properties 
SELECT DISTINCT r.User_Id
FROM Review r
WHERE NOT EXISTS (
            SELECT 1 FROM Appointment a
            WHERE a.User_Id = r.User_Id AND a.Property_Id = r.Property_Id
);
13. Cheques That Bounced With Property and buyer Details


 SELECT c.Cheque_No, c.Issue_Date, c.Bank_Name, c.Status, u.User_Id AS Buyer_Id,
u.Name AS Buyer_Name, u.Email AS Buyer_Email, u.Contact_No AS Buyer_Contact,
p.APN AS Property_Id, p.Title AS Property_Title, p.State,p.City, p.Local_address, p.Pincode
FROM Project.Cheque_Transaction c
JOIN Project.Sell_Transaction s ON c.Stamp_Paper_No = s.Stamp_Paper_No  
AND c.Pay_date = s.Pay_date AND c.Pay_time = s.Pay_time
JOIN Project.Users u  ON s.Purchased_By = u.User_Id JOIN Project.Property p
ON s.Property_Id = p.APN
WHERE c.Status = 'Bounced';




14. Number of Properties Sold by Each Payment Mode
SELECT
            'RTGS' AS Mode, COUNT(*) AS Count FROM RTGS_Transaction
UNION
SELECT
            'Cheque', COUNT(*) FROM Cheque_Transaction WHERE Status = 'Accepted'
UNION
SELECT
            'DD', COUNT(*) FROM DD_Transaction
UNION
SELECT
            'Cash', COUNT(*) FROM Cash_Transaction;


15. Property Suggestions Based on User's Amenity Interests
(Admin works on this query to suggestions to users)


SELECT DISTINCT p.APN, p.Title
FROM Wishlist w
JOIN Individual_amenities ia ON w.Property_Id = ia.Property_Id
JOIN Property p ON p.APN = ia.Property_Id
WHERE ia.Amenity_name IN (
            SELECT Amenity_name
            FROM Individual_amenities
            WHERE Property_Id IN (
                SELECT Property_Id FROM Wishlist WHERE User_Id = 'U000000001' )
)
AND p.APN NOT IN (
            SELECT Property_Id FROM Wishlist WHERE User_Id = 'U000000001'
);


16. Most Popular Properties by Engagement (Wishlist + Review + Appointment + Inquiry Count)
(It can be run by admin and details can be displayed to other users)


        SELECT p.Title,p.APN,
COALESCE((
SELECT COUNT(*) FROM Wishlist w WHERE w.Property_Id = p.APN), 0) AS Wishlisted,
COALESCE((SELECT COUNT(*) FROM Review r WHERE r.Property_Id = p.APN), 0) AS Reviewed,COALESCE((
SELECT COUNT(*) FROM Appointment a WHERE a.Property_Id = p.APN), 0) AS Appointments,
COALESCE((
SELECT COUNT(*) FROM Inquiry q WHERE q.Property_Id = p.APN
            ), 0) AS Inquiries,
(COALESCE((SELECT COUNT(*) FROM Wishlist w WHERE w.Property_Id = p.APN), 0) +
COALESCE((SELECT COUNT(*) FROM Review r WHERE r.Property_Id = p.APN), 0) +
COALESCE((SELECT COUNT(*) FROM Appointment a WHERE a.Property_Id = p.APN), 0) +
COALESCE((SELECT COUNT(*) FROM Inquiry q WHERE q.Property_Id = p.APN), 0)
) AS Popularity_Score
FROM Property p
ORDER BY Popularity_Score DESC
LIMIT 10;