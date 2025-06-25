create schema Project;
set search_path to Project;






CREATE TYPE user_type_enum AS ENUM ('Agent', 'Firm','Individual');
CREATE TYPE acc_status_enum as ENUM('Active','Inactive');


-- Create the User table
CREATE TABLE Users (
    User_Id CHAR(10),
    Name VARCHAR(20) NOT NULL,
    Email VARCHAR(20) NOT NULL UNIQUE,
    Password VARCHAR(20) NOT NULL,
    User_Type user_type_enum NOT NULL, 
    Contact_No BIGINT NOT NULL,
    Status acc_status_enum NOT NULL,
    PRIMARY KEY(User_Id)
);








-- Creating the Agent table
CREATE TABLE Agent (
    Licence_no BIGINT PRIMARY KEY,
    User_Id CHAR(10) REFERENCES Users(User_Id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- Creating the Owner table
CREATE TABLE Firms (
    User_Id CHAR(10) PRIMARY KEY REFERENCES Users(User_Id) ON DELETE RESTRICT ON UPDATE CASCADE,
    Office_Name TEXT NOT NULL,
    Office_Address TEXT NOT NULL UNIQUE
);


--Creating the Firm_Contact table
CREATE TABLE Firm_Contact(
User_Id CHAR(10) REFERENCES Firms(User_Id) ON UPDATE CASCADE ON DELETE CASCADE,
Office_Contact BIGINT NOT NULL,
PRIMARY KEY (User_Id,Office_Contact)
);


CREATE TABLE Society(
    Society_reg_no VARCHAR(10) PRIMARY KEY,
        Society_name VARCHAR(30) NOT NULL
);
CREATE TABLE Amenities(
    Amenity_name VARCHAR(30) PRIMARY KEY
);


-- Create the Property table
CREATE TYPE property_status AS ENUM ('Available', 'Sold', 'Rented','Unavailable');
CREATE TYPE available_enum AS ENUM ('Rent', 'Sell', 'Both');
CREATE TABLE Property (
    APN BIGINT PRIMARY KEY,
    Built_Year INTEGER NOT NULL,
    Status property_status NOT NULL,
    Map_Url TEXT,
    Area DECIMAL(6,2) NOT NULL,  --(In sq. feet)
    State VARCHAR(20) NOT NULL,
    City VARCHAR(20) NOT NULL,
    District VARCHAR(20) NOT NULL,
    Local_address VARCHAR(20) NOT NULL,
    Pincode INTEGER NOT NULL,
    Neighborhood_info TEXT NOT NULL,
    Title VARCHAR(20) NOT NULL,  --stores the name of the property
    Available_For available_enum ,
    Type TEXT NOT NULL,
    Tour_URL TEXT,
    Society_reg_no VARCHAR(10) REFERENCES Society(Society_reg_no),
    Owner_id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Agent_lc_no BIGINT REFERENCES Agent(Licence_no) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT unique_constraint UNIQUE(State,City,District,Local_address,Pincode)
);


create table commission(
     Agent_lc_no BIGINT REFERENCES Agent(Licence_no) ON UPDATE CASCADE ON DELETE RESTRICT,
     Property_Id BIGINT REFERENCES Property(APN),
     Commission DECIMAL(3,2) NOT NULL,
     PRIMARY KEY (Agent_lc_no,Property_Id)
);
CREATE TABLE Individual_amenities(
    Property_Id BIGINT REFERENCES Property(APN),
    Amenity_name VARCHAR(20) REFERENCES Amenities(Amenity_name),
    PRIMARY KEY (Property_Id, Amenity_name)
);


CREATE TABLE Shared_amenities(
    Society_reg_no VARCHAR(10) REFERENCES Society(Society_reg_no),
    Amenity_name VARCHAR(20) REFERENCES Amenities(Amenity_name),
    PRIMARY KEY(Society_reg_no,Amenity_name)
);


-- Creating the Wishlist table
CREATE TABLE Wishlist (
    User_Id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (User_Id, Property_Id)
);


-- Create the Review table
CREATE TABLE Review (
    User_Id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT,
    Ratings DECIMAL(2,1) NOT NULL,
    Comments TEXT,
    PRIMARY KEY (User_Id, Property_Id)
);


-- Create the Inquiry table
CREATE TABLE Inquiry (
    date DATE NOT NULL,
    time TIME NOT NULL,
    User_Id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT,
    Inquiry TEXT NOT NULL,
    PRIMARY KEY (date,time, User_Id, Property_Id)
);


-- Create the Appointment table
CREATE TYPE app_status AS ENUM ('Scheduled', 'Completed', 'Cancelled');
CREATE TABLE Appointment (
    User_Id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT,
    Issue_date DATE NOT NULL,
    Issue_time TIME NOT NULL,
    Visit_date DATE NOT NULL,
    Visit_time TIME NOT NULL,
    Status app_status NOT NULL, 
    PRIMARY KEY (User_Id, Property_Id,Issue_date,Issue_time)
);


-- Create the Property_Image table
CREATE TABLE Property_Image (
    Image_Url TEXT PRIMARY KEY,
    Description TEXT,       
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT
);


-- Create the Rent table
CREATE TABLE Rent (
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT,
    Owner_id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY(Property_Id,Owner_id),
    Monthly_Rent INTEGER NOT NULL,
    Security_Deposit INTEGER NOT NULL,
    Agent_lc_no BIGINT REFERENCES Agent(Licence_no) ON UPDATE CASCADE ON DELETE SET NULL
);


-- Create the Sell table
CREATE TABLE Sell (
    Property_Id BIGINT REFERENCES Property(APN) ON UPDATE CASCADE ON DELETE RESTRICT,
    Owner_id CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY(Property_Id,Owner_id),
    Price BIGINT NOT NULL,
    Agent_lc_no BIGINT REFERENCES Agent(Licence_no) ON UPDATE CASCADE ON DELETE SET NULL
);


-- Create the Rent_Transaction table
CREATE TYPE pay_enum AS ENUM ('Online','Offline');
CREATE TABLE Rent_transaction (
    Stamp_Paper_No VARCHAR NOT NULL,
    Pay_date DATE NOT NULL,
    Pay_time TIME NOT NULL,
    Property_Id BIGINT NOT NULL,
    Owner_id CHAR(10) NOT NULL,
    FOREIGN KEY (Property_Id,Owner_id) REFERENCES Rent(Property_Id,Owner_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Payment_Mode pay_enum NOT NULL ,
    Amount_Paid INTEGER NOT NULL,
    Rented_By VARCHAR(20) NOT NULL REFERENCES Users(User_Id)  ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY(Stamp_Paper_No,Pay_date,Pay_time)
);


CREATE TYPE sell_tran_status AS ENUM ('Successful','Failed');
CREATE TABLE Sell_Transaction (
    Stamp_Paper_No VARCHAR(20) NOT NULL,
    Pay_date DATE NOT NULL,
    Pay_time TIME NOT NULL,
    Status sell_tran_status NOT NULL,
    Property_Id BIGINT NOT NULL,
    Owner_id CHAR(10) NOT NULL,
    FOREIGN KEY (Property_Id,Owner_id) REFERENCES Sell(Property_Id,Owner_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    Amount_Paid INTEGER NOT NULL,
    Purchased_By CHAR(10) REFERENCES Users(User_Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (Stamp_Paper_No, Pay_date, Pay_time)
);


-- Create the RTGS_Transaction table
CREATE TABLE RTGS_Transaction (
    Transaction_Ref CHAR(22) ,
    Transfer_Date DATE NOT NULL,
    Receiver_Bank_Name VARCHAR(20) NOT NULL,
    Sender_Bank_Name VARCHAR(20) NOT NULL,
    Stamp_Paper_No VARCHAR(10) NOT NULL,
    Pay_date DATE NOT NULL,
    Pay_time TIME NOT NULL,
    PRIMARY KEY(Transaction_Ref),
    FOREIGN KEY (Stamp_paper_no, Pay_date, Pay_time) 
    REFERENCES Sell_Transaction(Stamp_paper_no, Pay_date, Pay_time) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT unique_constraint2 UNIQUE(Stamp_Paper_No,Pay_date,Pay_time)
);


-- Create the Cheque_Transaction table
CREATE TYPE cheque_status AS ENUM ('Bounced', 'Accepted');
CREATE TABLE Cheque_Transaction (
    Cheque_No INT PRIMARY KEY,
    Issue_Date DATE NOT NULL,
    Status cheque_status NOT NULL,
    Bank_Name VARCHAR(20) NOT NULL,
    Stamp_Paper_No VARCHAR(10) NOT NULL,
    Pay_date DATE NOT NULL,
    Pay_time TIME NOT NULL,
    FOREIGN KEY (Stamp_paper_no, Pay_date, Pay_time) 
    REFERENCES Sell_Transaction(Stamp_paper_no, Pay_date, Pay_time)  ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT unique_constraint3 UNIQUE(Stamp_Paper_No,Pay_date,Pay_time)
);


-- Create the DD_Transaction table
CREATE TABLE DD_Transaction (
    DD_No INTEGER PRIMARY KEY,
    Stamp_Paper_No VARCHAR(10) NOT NULL,
    Pay_date DATE NOT NULL,
    Pay_time TIME NOT NULL,
    Issue_Date DATE NOT NULL,
    Bank_Name VARCHAR(20) NOT NULL,
    FOREIGN KEY (Stamp_paper_no, Pay_date, Pay_time) 
    REFERENCES Sell_Transaction(Stamp_paper_no, Pay_date, Pay_time) ON UPDATE CASCADE ON DELETE CASCADE
);


-- Create the Cash_Transaction table
CREATE TABLE Cash_Transaction (
    Stamp_Paper_No VARCHAR(10),
    Pay_Date DATE NOT NULL,
    Pay_Time TIME NOT NULL,
    Received_By VARCHAR(10) NOT NULL,
    PRIMARY key(Stamp_paper_no, Pay_date, Pay_time),
    FOREIGN KEY (Stamp_paper_no, Pay_date, Pay_time) 
    REFERENCES Sell_Transaction(Stamp_paper_no, Pay_date, Pay_time) ON UPDATE CASCADE ON DELETE CASCADE
);