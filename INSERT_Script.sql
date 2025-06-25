set search_path to project;
INSERT INTO Users VALUES
('U000000001', 'Rajesh Kumar', 'rajesh.k@example.com', 'rajesh123', 'Individual', 9123456789, 'Active'),
('U000000002', 'Pooja Nair', 'pooja.@example.com', 'pooja789', 'Individual', 9123984756, 'Active'),
('U000000003', 'Deepika Verma', 'dipika.@example.com', 'deepika456', 'Individual', 9823423412, 'Active'),
('U000000004', 'Suresh Iyer', 'suresh.@example.com', 'suresh321', 'Individual', 9988223344, 'Inactive'),
('U000000005', 'Neha Joshi', 'neha.@example.com', 'neha987', 'Individual', 9123001122, 'Active'),
('U000000006', 'Sneha Mehta', 'sneha.@example.com', 'sneha321', 'Firm', 9876543210, 'Active'),
('U000000007', 'Karan Malhotra', 'karan.@example.com', 'karan321', 'Firm', 9789456123, 'Active'),
('U000000008', 'Arun Reddy', 'arun.@example.com', 'arun567', 'Firm', 9867543210, 'Active'),
('U000000009', 'Divya Sharma', 'divya.@example.com', 'divya123', 'Firm', 9812345678, 'Active'),
('U000000010', 'Ishaan Kapoor', 'ishn.@example.com', 'ishaan456', 'Firm', 9871234567, 'Active'),
('U000000011', 'Amit Shah', 'amit.@example.com', 'amit456', 'Agent', 9988776655, 'Active'),
('U000000012', 'Priya Singh', 'priya.@example.com', 'priya789', 'Agent', 9845098450, 'Active'),
('U000000013', 'Naveen Rao', 'naven.r@example.com', 'naveen123', 'Agent', 9911122233, 'Inactive'),
('U000000014', 'Meera Jain', 'meera.j@example.com', 'meera321', 'Agent', 9977889900, 'Active'),
('U000000015', 'Ravi Deshmukh', 'ravi.d@example.com', 'ravi654', 'Agent', 9876567890, 'Active'),
('U000000016', 'Ravi Mehra', 'ravi11@email.com', 'ravi1234', 'Individual', 9876543211, 'Active'),
('U000000017', 'Sneha Das', 'sneha12@email.com', 'sneha1234', 'Individual', 9765432199, 'Active'),
('U000000018', 'Rekha Sinha', 'rekha14@email.com', 'rekha@789', 'Firm', 8899776655, 'Active'),
('U000000019', 'Arjun Verma', 'arjun15@email.com', 'arjunpass', 'Individual', 9123456789, 'Active'),
('U000000020', 'Karan Mehra', 'karn@email.com', 'kkk123456', 'Individual', 9123424524, 'Active'),
('U000000021', 'Priya Mehra', 'priya@email.com', 'ppp123456', 'Individual', 9123424524, 'Active'),
('U000000022', 'Kaveri Priyam', 'kveri@email.com', 'hellokaveri', 'Individual', 9123456789, 'Active'),
('U000000023', 'Shivangi khan', 'shivi@email.com', 'smforever', 'Individual', 9563456789, 'Active'),
('U000000024', 'Vikram Singh', 'vicky@email.com', 'vforvikram', 'Individual', 9324567891, 'Active'),
('U000000025', 'Vikram Rao', 'vikram13@email.com', 'vikram@321', 'Agent', 9988776655, 'Active'),
('U000000026', 'Arman khan', 'arm13@email.com', 'ar123456', 'Firm', 9059678954, 'Active'),
('U000000027', 'Vikram Sinha', 'vike443@email.com', '1234@vik', 'Firm', 9456723456, 'Active'),
('U000000028', 'Priya Sharma', 'piy@email.com', 'piy56789', 'Firm', 9013355566, 'Active'),
('U000000029', 'Krishna patel', 'kri123@email.com', 'krishna12121', 'Firm', 9123456789, 'Active'),
('U000000030', 'Nidhi Dodiya', 'nidhi@email.com', 'nidhi5673', 'Firm', 9999912345, 'Active'),
('U000000031', 'Rahul Patel', 'rah@email.com', '123@rahulpatel', 'Firm', 9023565786, 'Active'),
('U000000032', 'Kush Thakkar', 'kt@email.com', 'kush@23456', 'Agent', 9123495682, 'Active'),
('U000000033', 'Jinal Vyas', 'jinal@email.com', 'jin321123', 'Agent', 9011123456, 'Active'),
('U000000034', 'Preet Parmar', 'preetam@email.com', 'preet', 'Agent', 9065492355, 'Active'),
('U000000035', 'Vikram Khanna', 'vikram143@email.com', 'vikram@123', 'Agent', 9013493332, 'Active'),
('U000000036', 'Sneha Patel', 'sneha@email.com', 'sneha@123', 'Individual', 9825034567, 'Active'),
('U000000037', 'Raj Mehta', 'raj90@email.com', 'raj@mehta', 'Individual', 9898123456, 'Active'),
('U000000038', 'Neha Sharma', 'nehash@email.com', 'neha@456', 'Individual', 9723445566, 'Active'),
('U000000039', 'Amit Solanki', 'amiti@email.com', 'amit@sol', 'Individual', 9033128899, 'Active'),
('U000000040', 'Kajal Desai', 'kaja@email.com', 'kajal@ds123', 'Individual', 9100254387, 'Active');






INSERT INTO Agent VALUES
(100000000001, 'U000000011'),
(100000000002, 'U000000012'),
(100000000003, 'U000000013'),
(100000000004, 'U000000014'),
(100000000005, 'U000000015'),
(100000000006, 'U000000025'),
(100000000007, 'U000000032'),
(100000000008, 'U000000033'),
(100000000009, 'U000000034'),
(100000000010, 'U000000035');








INSERT INTO Firms VALUES
('U000000006', 'Dream Homes', 'MG Road, Bengaluru'),
('U000000007', 'Urban Nest', 'Banjara Hills, Hyderabad'),
('U000000008', 'Elite Living', 'Koregaon Park, Pune'),
('U000000009', 'GreenSpace Realty', 'Salt Lake, Kolkata'),
('U000000010', 'Prime Estates', 'Connaught Place, Delhi'),
('U000000018', 'SkyHigh Realty', '222 New Avenue, Mumbai'),
('U000000026', 'Shree Infra Solutions', '2nd Floor, Patel Complex, Ring Road, Surat, Gujarat'),
('U000000027', 'Vedanta Retail Mart','No. 22, MG Road, Shivaji Nagar, Bengaluru, Karnataka'),
('U000000028', 'JK corporation','Behind Essar Petrol Pump, Gotri Road, Vadodara, Gujarat'),
('U000000029', 'Chaitanya FinTech Solutions', '403, Krishna Towers, Banjara Hills, Hyderabad, Telangana'),
('U000000030', 'Kiran Automotives', 'Near Panjarapole Cross Road, Ambawadi, Ahmedabad, Gujarat'),
('U000000031', 'Tata Corporation','Near Laxmi Nagar, University Road, Rajkot, Gujarat');






INSERT INTO Firm_Contact VALUES
('U000000006', 8023456789),
('U000000006', 8023456790),
('U000000007', 4067891234),
('U000000008', 2045678912),
('U000000009', 3345126789),
('U000000010', 1147895623),
('U000000018', 0223412344),
('U000000026', 0223412344),
('U000000026', 0223412343),
('U000000027', 1123412344),
('U000000028', 3223412344),
('U000000029', 0223341534),
('U000000030', 0124444422),
('U000000030', 0124444424),
('U000000031', 0223412344);






INSERT INTO Society VALUES
('SOCI001', 'Green Valley'),
('SOCI002', 'Skyline Heights'),
('SOCI003', 'Palm Residency'),
('SOCI004', 'Serene Meadows'),
('SOCI005', 'Lakeview Towers'),
('SOCI006', 'Emerald Hills');






INSERT INTO Amenities VALUES
('Gym'),
('Swimming Pool'),
('Private Parking'),
('Library'),
('Clubhouse'), 
('Community Hall'),
('Children Play Area'),
('CCTV'),
('Garden Area'),
('Parking'),
('Gas Pipeline'),
('Rooftop Access'),
('Septic Tank'),
('Water Supply'),
('Solar Panels'),
('Rainwater Harvesting'),
('Power Backup'),
('Air Conditioning'),
('Garage'),
('Laundary facilites'),
('Modular Kitchen');




INSERT INTO Property VALUES
(5000000001, 2015, 'Available', 'https://maps.app/1', 1250.50, 'Karnataka', 'Bengaluru', 'Bangalore Urban', 'Indiranagar', 560038, 'Well-connected area with metro access', 'Sunrise', 'Sell', 'Apartment', 'https://tour.com/1', 'SOCI001', 'U000000006', 100000000001),
(5000000002, 2018, 'Available', 'https://maps.app/2', 1450.75, 'Telangana', 'Hyderabad', 'Hyderabad', 'Jubilee Hills', 500033, 'Premium area with good schools nearby', 'Skyview', 'Rent', 'Apartment', 'https://tour.com/2', 'SOCI002', 'U000000007', 100000000002),
(5000000003, 2020, 'Rented', 'https://maps.app/3', 1100.00, 'Maharashtra', 'Pune', 'Pune', 'Kothrud', 411038, 'Green surroundings with peaceful locality', 'PalmCove', 'Rent', 'Apartment', 'https://tour.com/3', 'SOCI003', 'U000000008', 100000000003),
(5000000004, 2016, 'Sold', 'https://maps.app/4', 1330.25, 'West Bengal', 'Kolkata', 'Kolkata', 'Salt Lake', 700091, 'Near IT hub and shopping complexes', 'Breeze', 'Sell', 'Apartment', 'https://tour.com/4', 'SOCI004', 'U000000009', 100000000004),
(5000000005, 2019, 'Available', 'https://maps.app/5', 1550.10, 'Delhi', 'New Delhi', 'New Delhi', 'Dwarka', 110075, 'Modern amenities with public transport access', 'Lakeview', 'Both', 'Apartment', 'https://tour.com/5', 'SOCI005', 'U000000010', 100000000005),
(5000000006, 2012, 'Available', 'https://maps.app/6', 2000.00, 'Karnataka', 'Bengaluru', 'Bangalore Rural', 'Whitefield', 560066, 'Private villa with garden space', 'WhiteVilla', 'Sell', 'Independent House', 'https://tour.com/6', NULL, 'U000000006', 100000000001),
(5000000007, 2014, 'Sold', 'https://maps.app/7', 1850.00, 'Kerala', 'Kochi', 'Ernakulam', 'Panampilly Nagar', 682036, 'Close to marine drive and malls', 'LotusVilla', 'Sell', 'Independent House', 'https://tour.com/7', NULL, 'U000000002', 100000000002),
(5000000008, 2011, 'Rented', 'https://maps.app/8', 2100.00, 'Tamil Nadu', 'Chennai', 'Chennai', 'Anna Nagar', 600040, 'Quiet neighbourhood with good schools', 'PalmHouse', 'Rent', 'Independent House', 'https://tour.com/8', NULL, 'U000000003', 100000000003),
(5000000009, 2017, 'Unavailable', 'https://maps.app/9', 1600.00, 'Rajasthan', 'Jaipur', 'Jaipur', 'C-Scheme', 302001, 'Architect-designed spacious house', 'PinkVilla', 'Both', 'Independent House', 'https://tour.com/9', NULL, 'U000000004', 100000000004),
(5000000010, 2021, 'Available', 'https://maps.app/10', 1950.00, 'Gujarat', 'Ahmedabad', 'Ahmedabad', 'Satellite', 380015, 'Modern 3BHK with terrace garden', 'SunsetVilla', 'Sell', 'Independent House', 'https://tour.com/10', NULL, 'U000000005', 100000000005),
(5000000011, 2021, 'Available', 'https://maps.com/11', 90.00, 'Delhi', 'New Delhi', 'South Delhi', 'Lajpat Nagar', 110024, 'Close to metro station and market', 'House11', 'Sell', 'Independent House', NULL, NULL, 'U000000002', NULL),
(5000000012, 2020, 'Available', 'https://maps.com/12', 80.50, 'Maharashtra', 'Pune', 'Shivaji Nagar', 'Apte Road', 411005, 'Peaceful area near university', 'Flat12', 'Rent', 'Apartment', NULL, 'SOCI006', 'U000000001', 100000000006),
(5000000013, 2019, 'Available', 'https://maps.com/13', 120.75, 'Tamil Nadu', 'Chennai', 'Adyar', 'LB Road', 600020, 'Close to beach and IT corridor', 'Villa13', 'Sell', 'Villa', NULL, NULL, 'U000000003', NULL),
(5000000014, 2022, 'Available', 'https://maps.com/14', 100.00, 'Karnataka', 'Bangalore', 'Whitefield', 'ITPL Main Rd', 560066, 'Near major tech parks', 'Apt14', 'Rent', 'Apartment', NULL, 'SOCI006', 'U000000005',100000000006),
(5000000015, 2018, 'Available', 'https://maps.com/15', 75.00, 'Rajasthan', 'Jaipur', 'Malviya Nagar', 'Girdhar Marg', 302017, 'Good connectivity and local shops', 'House15', 'Sell', 'Independent House', NULL, NULL, 'U000000024', NULL),
(5000000016, 2023, 'Available', 'https://maps.com/16', 2000.00, 'Gujarat', 'Anand', 'Vidhya Nagar', 'Shakti Marg', 388001, 'Near to hospitals', 'Shri Hari Bunglows', 'Rent', 'Independent House', NULL, NULL, 'U000000025', NULL),
(5000000017, 2014, 'Available', 'https://maps.com/17', 1350.00, 'Gujarat', 'Gandhinagar', 'Sahiyog Nagar', 'Shakti Marg', 382002, 'Near to Mall', 'Krupa Bunglows', 'Rent', 'Independent House', NULL, NULL, 'U000000023', NULL),
(5000000018, 2017, 'Available', 'https://maps.com/18', 2430.00, 'Gujarat', 'Ahmedabad', 'Naroda', 'Krishna road', 382330, 'Near to Railway Station', 'kalyan Bunglows', 'Rent', 'Independent House', NULL, NULL, 'U000000020', NULL),
(5000000019, 2018, 'Available', 'https://maps.com/19', 1240.00, 'Gujarat', 'Anand', 'Borsad', 'Kalyan Marg', 388540, 'Near to Market', 'Shiv Shakti Bunglows', 'Rent', 'Independent House', NULL, NULL, 'U000000019', NULL),
(5000000020, 2021, 'Available', 'https://maps.com/20', 1300.00, 'Rajasthan', 'Jaipur', 'Jaipur', 'Raksha Circle', 302001, 'Near to hospitals', 'Tarapriya Bunglows', 'Rent', 'Independent House', NULL, NULL, 'U000000021', NULL),
(5000000021, 2022, 'Available', 'https://maps.com/21', 1450.00, 'Gujarat', 'Ahmedabad', 'Ahmedabad', 'Navrangpura', 380009, 'Close to IIM Ahmedabad, peaceful neighborhood', 'Aarambh Villa', 'Rent', 'Independent House',NULL, NULL, 'U000000028', 100000000007),
(5000000022, 2020, 'Available', 'https://maps.com/22', 1350.00, 'Gujarat', 'Vadodara', 'Vadodara', 'Gotri Road', 390021,'Next to Inorbit Mall, close to hospitals','Shiv Residency', 'Rent', 'Independent House', NULL, NULL,'U000000029', 100000000008),
(5000000023, 2021, 'Available', 'https://maps.com/23', 1500.00, 'Gujarat', 'Surat', 'Surat', 'Adajan Gam', 395009, 'Near Adajan vegetable market, calm area', 'Vaibhav Villa', 'Rent', 'Independent House', NULL, NULL, 'U000000030', 100000000009),
(5000000024, 2023, 'Available', 'https://maps.com/24', 1400.00, 'Gujarat', 'Rajkot', 'Rajkot', 'Kalawad Road', 360005, 'Close to Reliance Mall and schools', 'Sarthak House', 'Rent', 'Independent House',NULL, NULL, 'U000000031', 100000000010),
(5000000025, 2020, 'Available', 'https://maps.app/11', 2100.00, 'Gujarat', 'Ahmedabad', 'Ahmedabad', 'Satellite Road', 380015, 'Spacious 4BHK with private driveway', 'GreenHeights', 'Sell', 'Independent House', 'https://tour.com/11', NULL, 'U000000005', 100000000005),
(5000000026, 2019, 'Available', 'https://maps.app/12', 1800.00, 'Gujarat', 'Ahmedabad', 'Ahmedabad', 'Jodhpur Village', 380015, 'Elegant 3BHK near market and schools', 'PalmResidency', 'Sell', 'Independent House', 'https://tour.com/12', NULL, 'U000000005', 100000000005),
(5000000027, 2018, 'Available', 'https://maps.app/13', 2000.00, 'Gujarat', 'Ahmedabad', 'Ahmedabad', 'Prahlad Nagar', 380015, 'Contemporary 3BHK with smart interiors', 'SkylineHouse', 'Sell', 'Independent House', 'https://tour.com/13', NULL, 'U000000005', 100000000005),
(5000000028, 2021, 'Available', 'https://maps.app/14', 2250.00, 'Gujarat', 'Ahmedabad', 'Ahmedabad', 'Vejalpur', 380051, 'Luxurious 4BHK with rooftop patio', 'CrystalVilla', 'Sell', 'Independent House', 'https://tour.com/14', NULL, 'U000000005', 100000000005);


INSERT INTO commission values
(100000000001,5000000001,1),
(100000000002,5000000002,0.5),
(100000000003,5000000003,1),
(100000000004,5000000004,0.5),
(100000000005,5000000005,2),
(100000000001,5000000006,0.5),
(100000000008,5000000008,2),
(100000000006,5000000012,2),
(100000000006,5000000014,1);


INSERT INTO Individual_amenities VALUES
(5000000006, 'Gas Pipeline'),
(5000000006, 'Water Supply'),
(5000000006, 'Power Backup'),
(5000000006, 'Air Conditioning'),
(5000000007, 'Solar Panels'),
(5000000007, 'Garage'),
(5000000008, 'Water Supply'),
(5000000009, 'Rainwater Harvesting'),
(5000000010, 'Parking'),
(5000000011, 'Water Supply'),
(5000000011, 'Gas Pipeline'),
(5000000011, 'Modular Kitchen'),
(5000000013, 'Solar Panels'),
(5000000015, 'Rainwater Harvesting'),
(5000000015, 'Septic Tank'),
(5000000013, 'Rooftop Access'),
(5000000011, 'Garden Area'),
(5000000013, 'Private Parking'),
(5000000015, 'Private Parking');






INSERT INTO Shared_amenities VALUES
('SOCI001', 'Gym'),
('SOCI001', 'Swimming Pool'),
('SOCI001', 'Library'),
('SOCI002', 'Community Hall'),
('SOCI002', 'Laundary facilites'),
('SOCI002', 'Children Play Area'),
('SOCI003', 'CCTV'),
('SOCI004', 'Parking'),
('SOCI005', 'Power Backup'),
('SOCI004', 'Gym'),
('SOCI003', 'Swimming Pool'),
('SOCI006', 'Swimming Pool'),
('SOCI006', 'Gym'),
('SOCI006', 'Clubhouse'),
('SOCI006', 'Garden Area'),
('SOCI006', 'Water Supply');






INSERT INTO Wishlist VALUES
('U000000001', 5000000001),
('U000000001', 5000000003),
('U000000001', 5000000005),
('U000000001', 5000000006),
('U000000001', 5000000007),
('U000000002', 5000000001),
('U000000002', 5000000002),
('U000000002', 5000000003),
('U000000003', 5000000001),
('U000000003', 5000000003),
('U000000003', 5000000004),
('U000000003', 5000000005),
('U000000003', 5000000006),
('U000000003', 5000000007),
('U000000003', 5000000008),
('U000000003', 5000000009),
('U000000004', 5000000001),
('U000000004', 5000000015),
('U000000004', 5000000016),
('U000000005', 5000000001),
('U000000005', 5000000002),
('U000000005', 5000000003),
('U000000005', 5000000004),
('U000000005', 5000000005),
('U000000021', 5000000001),
('U000000022', 5000000001),
('U000000023', 5000000001),
('U000000024', 5000000001);




INSERT INTO Review VALUES
('U000000001', 5000000001, 9.5, 'Great neighborhood and facilities.'),
('U000000002', 5000000006, 8.0, 'Spacious and peaceful area.'),
('U000000003', 5000000002, 8.5, 'Good location but high rent.'),
('U000000004', 5000000005, 9.2, 'Modern apartment with all amenities.'),
('U000000018', 5000000007, 9.8, 'Well-built independent home.'),
('U000000019', 5000000007, 2.0, 'Agent doesn''t respond'),
('U000000020', 5000000007, 1.0, 'Unpleasant look'),
('U000000021', 5000000007, 0.5, 'All the walls have cracks'),
('U000000022', 5000000007, 4.9, 'Beautiful house'),
('U000000006', 5000000002, 9.0,'Well maintained interior, loved the neighbourhood'),
('U000000008', 5000000005, 9.5,'Well maintained and good behaviour of the landlord');






INSERT INTO Inquiry VALUES
('2025-04-01', '10:00:00', 'U000000001', 5000000001, 'Interested in schedule for site visit.'),


--One user making multiple incquiries for same property
('2025-04-02', '10:30:00', 'U000000002', 5000000006, 'Is sofa included which is shown in the image provided?'),
('2025-04-04', '11:30:00', 'U000000002', 5000000006, 'Want to know about legal documents required for the transaction'),


--One user making multiple incquiries for same property(shows his interest)
('2025-04-03', '14:00:00', 'U000000003', 5000000002, 'Is the apartment semi-furnished?'),
('2025-04-10', '11:00:00', 'U000000003', 5000000002, 'Are lights included as shown in the image of the house? Also how is the condition of available furniture?'),
('2025-04-11', '14:00:00', 'U000000003', 5000000002, 'Interested in schedule for site visit.'),


--One user making multiple incquiries for same property
('2025-04-04', '12:15:00', 'U000000004', 5000000005, 'How is the conditions of electric wires?'),
('2025-04-05', '16:15:00', 'U000000004', 5000000005, 'Can I get a loan sanctioned here?'),


--One user making multiple incquiries for same property
('2025-04-05', '09:45:00', 'U000000005', 5000000007, 'What’s the parking space like?'),
('2025-04-06', '10:30:00', 'U000000005', 5000000007, 'The provided Contact number is shown unavailable, any alternate contact number?'),


('2025-03-01', '11:00:00', 'U000000006', 5000000002, 'Interested in visiting the house'),
('2025-02-25', '09:00:00', 'U000000009', 5000000008, 'Could You upload more images of the mentioned property'),
('2025-03-01', '09:00:00', 'U000000009', 5000000008, 'Is the furniture included?'),
('2025-04-01', '10:15:00', 'U000000036', 5000000021, 'Is the parking space covered?'),
('2025-04-02', '14:30:00', 'U000000037', 5000000022, 'Can we bring pets in the house?'),
('2025-04-03', '11:45:00', 'U000000038', 5000000023, 'What is the monthly rent and deposit?'),
('2025-04-04', '09:00:00', 'U000000039', 5000000024, 'Is the area prone to waterlogging?'),
('2025-04-05', '16:00:00', 'U000000040', 5000000021, 'Are there schools nearby?'),


('2023-01-05', '12:00:00', 'U000000001', 5000000010, 'How are the roads in its locality?'),
('2023-01-06', '14:10:00', 'U000000003', 5000000010, 'Is furniture included?'),
('2023-01-05', '12:00:00', 'U000000003', 5000000010, 'Interested in the visit.');






INSERT INTO Appointment VALUES
('U000000001', 5000000001, '2025-04-10', '10:00:00', '2025-04-12', '11:00:00' ,'Scheduled'),
('U000000002', 5000000006, '2025-01-10', '10:00:00', '2025-01-11', '11:00:00', 'Completed'),


--for below two insertions, Same user and property but multiple appointments
('U000000002', 5000000001, '2025-02-11', '10:10:00', '2025-02-12', '13:00:00', 'Cancelled'),
('U000000002', 5000000001, '2025-02-13', '13:00:00', '2025-02-15', '12:00:00', 'Completed'),


--for below two insertions, Same user and property but multiple appointments
('U000000003', 5000000002, '2025-04-10', '10:00:00', '2025-04-12', '11:00:00', 'Cancelled'),
('U000000003', 5000000002, '2025-04-15', '12:00:00', '2025-04-17', '10:00:00', 'Scheduled'),


('U000000004', 5000000005,'2025-03-11', '12:00:00', '2025-03-16', '14:00:00', 'Scheduled'),
('U000000005', 5000000007,'2025-04-10', '10:00:00', '2025-04-12', '11:00:00', 'Completed'),
('U000000009', 5000000008,'2025-03-05', '13:00:00', '2025-03-06', '11:00:00', 'Completed'),
('U000000036', 5000000021, '2025-04-01', '12:15:00', '2025-04-03', '10:00:00', 'Completed'),
('U000000037', 5000000022, '2025-04-02', '15:30:00', '2025-04-05', '11:30:00', 'Scheduled'),
('U000000038', 5000000023, '2025-04-03', '12:45:00', '2025-04-06', '12:15:00', 'Completed'),
('U000000004', 5000000006,'2025-03-11', '12:00:00', '2025-03-16', '14:00:00', 'Completed'),


('U000000003', 5000000022, '2023-01-05', '15:45:00', '2023-01-07', '10:15:00', 'Completed'),
('U000000001', 5000000027, '2023-08-11', '15:45:00', '2023-08-14', '10:15:00', 'Completed'),




('U000000004', 5000000024, '2022-08-11', '15:45:00', '2022-08-14', '10:15:00', 'Completed'),
('U000000001', 5000000028, '2022-08-11', '14:45:00', '2022-08-15', '10:15:00', 'Completed'),
('U000000005', 5000000010, '2022-08-10', '13:45:00', '2022-08-13', '09:15:00', 'Completed');










INSERT INTO Property_Image VALUES
('https://images.com/1.jpg', 'Front view of the apartment', 5000000001),
('https://images.com/2.jpg', 'Living room with modern decor', 5000000002),
('https://images.com/4.jpg', 'Apartment balcony view', 5000000005),


--Multiple images of a single property 
('https://images.com/5.jpg', 'Living room- Unfurnished', 5000000007),
('https://images.com/6.jpg', 'Kitchen with marble worktop', 5000000007),
('https://images.com/7.jpg', 'bathroom with ceramic tiles', 5000000007),


--Multiple images of a single property 
('https://images.com/16.jpg', 'exterior of the house', 5000000008),
('https://images.com/17.jpg', 'Bedroom - Unfurnished', 5000000008),
('https://images.com/18.jpg', 'Living Room - Semi furnished with sofa', 5000000008),
('https://images.com/19.jpg', 'Kitchen', 5000000008),


--Multiple images of a single property 
('https://images.com/3.jpg', 'House image with garden', 5000000006),
('https://images.com/20.jpg', 'Living room', 5000000006),
('https://images.com/21.jpg', 'Outside view from the balcony', 5000000006),
('https://images.com/24.jpg', 'Bedroom', 5000000006),




('https://images.com/9.jpg', 'Villa front with private gate', 5000000009),
('https://images.com/10.jpg', 'Villa front with private gate', 5000000010),
('https://images.com/11.jpg', 'Villa front with private gate', 5000000011),
('https://images.com/12.jpg', 'Villa front with private gate', 5000000012),
('https://images.com/13.jpg', 'Villa front with private gate', 5000000013),
('https://images.com/14.jpg', 'Villa front with private gate', 5000000014),
('https://images.com/15.jpg', 'Villa front with private gate', 5000000015);






INSERT INTO Rent VALUES
(5000000002,'U000000007',30000, 60000,100000000002),
(5000000003, 'U000000008',25000, 50000,100000000003),
(5000000005,'U000000010',35000, 70000,NULL),
(5000000008, 'U000000003',28000, 55000,NULL),
(5000000009, 'U000000004',32000, 64000,NULL),
(5000000004, 'U000000009',22000, 44000,100000000004),
(5000000007,'U000000002',15000, 30000,100000000002),
(5000000012,'U000000001',25000, 50000,100000000006),
(5000000014,'U000000005',20000, 40000,100000000006),
(5000000016, 'U000000025',19000, 38000,NULL),
(5000000017, 'U000000023',21000, 42000,NULL),
(5000000018, 'U000000020',17000, 34000,NULL),
(5000000019,'U000000019',23000, 46000,NULL),
(5000000020, 'U000000021',24000, 48000,NULL),
(5000000021,'U000000028', 44000, 4400,NULL),
(5000000022,'U000000029',44000, 4400,NULL),
(5000000024,'U000000031',44000, 4000,NULL),
(5000000011,'U000000011',24000, 7500,NULL);












INSERT INTO Sell VALUES
(5000000001, 'U000000006',7500000,100000000001),
(5000000004, 'U000000009',6900000,100000000004),
(5000000006, 'U000000006',8500000,100000000001),
(5000000007, 'U000000002',8200000,NULL),
(5000000010, 'U000000005',9200000,NULL),
(5000000011, 'U000000002',8800000,NULL),
(5000000015, 'U000000024',5600000,NULL),
(5000000005, 'U000000010',7000000,NULL),
(5000000025, 'U000000005',8000000,NULL),
(5000000026, 'U000000005',7500000,NULL),
(5000000027, 'U000000005',6000000,NULL),
(5000000028, 'U000000005',5000000,NULL);






INSERT INTO Rent_transaction VALUES
--Below 4 values represent the rent transactions of a single property since its rented
('RNTS001', '2024-04-01', '12:00:00', 5000000002, 'U000000007' ,'Online', 30000, 'U000000006'),
('RNTS001', '2024-05-01', '13:00:00', 5000000002, 'U000000007' ,'Offline', 30000, 'U000000006'),
('RNTS001', '2024-06-01', '11:00:00', 5000000002, 'U000000007' ,'Offline', 30000, 'U000000006'),
('RNTS001', '2024-07-01', '17:30:00', 5000000002, 'U000000007' ,'Online', 30000, 'U000000006'),


--Below 4 values represent the rent transactions of a single property since its rented
('RNTS002', '2023-04-02', '17:30:00', 5000000003, 'U000000008','Offline', 25000, 'U000000007'),
('RNTS002', '2023-05-02', '17:30:00', 5000000003, 'U000000008','Online', 25000, 'U000000007'),
('RNTS002', '2023-06-02', '15:30:00', 5000000003, 'U000000008','Online', 25000, 'U000000007'),
('RNTS002', '2023-07-02', '12:30:00', 5000000003, 'U000000008','Offline', 25000, 'U000000007'),


--Below 4 values represent the rent transactions of a single property since its rented
('RNTS003', '2025-04-03', '13:30:00', 5000000005,'U000000010', 'Online', 35000, 'U000000008'),
('RNTS003', '2025-03-03', '10:30:00', 5000000005,'U000000010', 'Offline', 35000, 'U000000008'),
('RNTS003', '2025-02-03', '11:30:00', 5000000005,'U000000010', 'Offline', 35000, 'U000000008'),
('RNTS003', '2025-01-03', '09:30:00', 5000000005,'U000000010', 'Offline', 35000, 'U000000008'),




('RNTS004', '2025-04-04', '12:30:00', 5000000008, 'U000000003','Offline', 28000, 'U000000009'),
('RNTS005', '2025-04-05', '10:30:00', 5000000009, 'U000000004','Online', 32000, 'U000000010'),


('RNTS006', '2025-03-11', '08:30:00', 5000000004, 'U000000009','Offline', 22000, 'U000000007'),


('RNTS007', '2025-03-12', '14:30:00', 5000000007, 'U000000002','Online', 15000, 'U000000010'),
('RNTS008', '2025-03-13', '17:00:00', 5000000012, 'U000000001','Online', 25000, 'U000000012'),
('RNTS009', '2025-03-14', '17:00:00', 5000000014, 'U000000005','Offline', 20000, 'U000000015'),
('RNTS0010', '2025-03-06', '11:00:00', 5000000016, 'U000000025','Online', 19000, 'U000000016'),
('RNTS0011', '2025-03-07', '14:00:00', 5000000017, 'U000000023','Offline', 21000, 'U000000017'),
('RNTS0012', '2025-03-08', '10:00:00', 5000000018, 'U000000020','Online', 17000, 'U000000018'),
('RNTS0013', '2025-03-09', '13:00:00', 5000000019, 'U000000019','Online', 23000, 'U000000019'),
('RNTS0014', '2025-03-10', '12:00:00', 5000000020, 'U000000021','Offline', 24000, 'U000000020'),
('RNTS0015', '2025-04-07', '12:30:00', 5000000021, 'U000000028','Offline', 22000, 'U000000036'),


('RNTS0016', '2023-02-01', '11:30:00', 5000000022, 'U000000029','Offline', 44000, 'U000000003'),
('RNTS0016', '2023-03-01', '11:30:00', 5000000022, 'U000000029','Offline', 44000, 'U000000003'),
('RNTS0016', '2023-04-01', '11:30:00', 5000000022, 'U000000029','Offline', 44000, 'U000000003'),
('RNTS0016', '2023-05-01', '11:30:00', 5000000022, 'U000000029','Offline', 44000, 'U000000003'),
('RNTS0016', '2023-06-01', '11:30:00', 5000000022, 'U000000029','Offline', 44000, 'U000000003'),


('RNTS0017', '2022-09-01', '10:30:00', 5000000024, 'U000000031','Offline', 44000, 'U000000004'),
('RNTS0017', '2022-11-01', '10:30:00', 5000000024, 'U000000031','Offline', 44000, 'U000000004'),
('RNTS0017', '2023-01-01', '11:30:00', 5000000024, 'U000000031','Offline', 44000, 'U000000004'),
('RNTS0017', '2023-03-01', '12:30:00', 5000000024, 'U000000031','Offline', 44000, 'U000000004'),
('RNTS0017', '2023-05-01', '11:30:00', 5000000024, 'U000000031','Offline', 44000, 'U000000004'),
('RNTS0017', '2023-07-01', '09:30:00', 5000000024, 'U000000031','Offline', 44000, 'U000000004'),


('RNTS0018', '2025-04-01', '10:30:00', 5000000011, 'U000000011','Offline', 24000, 'U000000004'),
('RNTS0018', '2025-05-01', '11:30:00', 5000000011, 'U000000011','Offline', 24000, 'U000000004'),
('RNTS0018', '2025-06-01', '12:30:00', 5000000011, 'U000000011','Offline', 24000, 'U000000004'),
('RNTS0018', '2025-07-01', '13:30:00', 5000000011, 'U000000011','Offline', 24000, 'U000000004'),
('RNTS0018', '2025-08-01', '14:30:00', 5000000011, 'U000000011','Offline', 24000, 'U000000004'),
('RNTS0018', '2025-09-01', '15:30:00', 5000000011, 'U000000011','Offline', 24000, 'U000000004');






INSERT INTO Sell_Transaction VALUES
--Single property selling happening in parts
('SELL001', '2025-04-01', '10:30:00', 'Successful',5000000001, 'U000000006',2500000, 'U000000002'),
('SELL001', '2025-03-10', '18:00:00', 'Successful',5000000001, 'U000000006',2500000, 'U000000002'),
('SELL001', '2025-03-01', '10:10:00', 'Successful',5000000001, 'U000000006',2500000, 'U000000002'),


--Single property selling happening in parts
('SELL005', '2025-04-20', '13:00:00', 'Successful',5000000010, 'U000000005',4600000, 'U000000001'),
('SELL005', '2025-04-10', '16:15:00', 'Successful',5000000010, 'U000000005',4600000, 'U000000001'),
--Single property selling happening in parts
('SELL006', '2025-02-15', '13:30:00', 'Successful',5000000011, 'U000000002',4400000, 'U000000011'),
('SELL006', '2025-02-01', '12:00:00', 'Successful',5000000011, 'U000000002',4400000, 'U000000011'),
--Single property selling happening in parts
('SELL002', '2025-04-01', '11:00:00', 'Successful',5000000004, 'U000000009',2300000, 'U000000003'),
('SELL002', '2025-04-15', '10:30:00', 'Successful',5000000004, 'U000000009',2300000, 'U000000003'),
('SELL002', '2025-05-01', '14:00:00', 'Successful',5000000004, 'U000000009',2300000, 'U000000003'),


('SELL003', '2025-04-03', '14:00:00', 'Failed',5000000006, 'U000000006',8500000, 'U000000004'),     --Its a failed transaction
('SELL004', '2025-04-04', '15:30:00', 'Successful',5000000007, 'U000000002',8200000, 'U000000005'),
('SELL009', '2025-02-14', '14:15:00', 'Failed',5000000015, 'U000000024',5600000, 'U000000001'),
('SELL010', '2022-01-14', '14:15:00', 'Successful',5000000025, 'U000000005',8000000, 'U000000001'),
('SELL011', '2023-02-14', '11:00:00', 'Successful', 5000000026, 'U000000005',7500000, 'U000000001');






--RTGS is safer option so many transaction happened through that
INSERT INTO RTGS_Transaction VALUES
('RTGS000000000000000001', '2025-04-01', 'SBI', 'ICICI', 'SELL001', '2025-04-01', '10:30:00'),
('RTGS000000000000000008', '2025-04-01', 'SBI', 'ICICI', 'SELL001', '2025-03-10', '18:00:00'),
('RTGS000000000000000009', '2025-04-01', 'SBI', 'ICICI', 'SELL001', '2025-03-01', '10:10:00'),
('RTGS000000000000000007', '2025-02-13', 'Axis Bank', 'State Bank', 'SELL006', '2025-02-15', '13:30:00'),
('RTGS000000000000000010', '2025-02-13', 'Axis Bank', 'State Bank', 'SELL006', '2025-02-01', '12:00:00'),
('RTGS000000000000000002', '2025-04-02', 'HDFC', 'Axis', 'SELL002', '2025-04-01', '11:00:00'),
('RTGS000000000000000003', '2025-04-03', 'BOB', 'PNB', 'SELL003', '2025-04-03', '14:00:00'),
('RTGS000000000000000004', '2025-04-04', 'Canara', 'Kotak', 'SELL004', '2025-04-04', '15:30:00');












INSERT INTO Cheque_Transaction VALUES
(1000002, '2025-04-30', 'Accepted', 'Axis', 'SELL002', '2025-05-01', '14:00:00'),
(1000005, '2025-04-03', 'Accepted', 'Kotak', 'SELL005', '2025-04-10', '16:15:00'),
(1000008, '2025-04-03', 'Accepted', 'Kotak', 'SELL005', '2025-04-20', '13:00:00'),
(1000003, '2025-04-01', 'Bounced', 'HDFC', 'SELL003', '2025-04-03', '14:00:00'),
(1000004, '2025-04-02', 'Accepted', 'SBI', 'SELL004', '2025-04-04', '15:30:00'),
(1000007, '2025-02-14', 'Bounced', 'PNB', 'SELL009', '2025-02-14', '14:15:00');






INSERT INTO DD_Transaction VALUES
(200002, 'SELL002', '2025-04-15', '10:30:00', '2025-04-13', 'HDFC'),
(200003, 'SELL003', '2025-04-03', '14:00:00', '2025-04-01', 'ICICI'),
(200004, 'SELL004', '2025-04-04', '15:30:00', '2025-04-02', 'BOB');






INSERT INTO Cash_Transaction VALUES


('SELL002', '2025-05-01', '14:00:00', 'U000000007'),
('SELL003', '2025-04-03', '14:00:00', 'U000000008'),
('SELL004', '2025-04-04', '15:30:00', 'U000000009');