-- MAKING TABLES

CREATE TABLE item(
    dishname    varchar(15) not null,
    price       number(3) not null,
    idNumber    number(4) not null,
    primary key (idNumber)
);

CREATE TABLE customer(
    fname           varchar(15), 
    lname           varchar(15), 
    customerNumber  number(16), 
    primary key(customerNumber)
 );

CREATE TABLE employeeRestaurant(
    fname       varchar(25) not null, 
    lname       varchar(25) not null, 
    dob         date not null, 
    ssn         number(9) not null, 
    hours       number(3) not null, 
    employeeID  number(3) not null, 
    role        varchar(25),
    loginCode   number(4) not null, 
    restaurant  varchar(50) not null,
    primary key(employeeID), 
    unique(ssn)
);

CREATE TABLE orderName(  
    orderNumber number(3) not null,   
    total number(3) not null,   
    orderTime varchar(5) not null,   
    orderDate date not null,   
    eID number(3) not null,
    itemNumber number(4) not null,   
    cNum number(16) not null, 
    foreign key (itemNumber) references item(idNumber), 
    foreign key (cNum) references customer(customerNumber),
    foreign key (eID) references employeeRestaurant(employeeID),
    primary key(orderNumber) 
);

CREATE TABLE paymentType( 
    oNum number(3) not null, 
    cardName varchar(15) not null, 
    cardNumber number(16) not null,  
    cardExpo varchar(15) not null,  
    cardCvv number(3) not null,  
    primary key(cardNumber,oNum), 
    foreign key(oNum) references orderName(orderNumber) 
); 

-- INSERTING VALUES
INSERT INTO item VALUES ('Hamburger', 10, 1); 
INSERT INTO item VALUES ('Chicken Tenders', 12, 2); 
INSERT INTO item VALUES ('Salad', 9, 3); 
INSERT INTO item VALUES ('Chicken Wings', 9, 4); 
INSERT INTO item VALUES ('Alfredo', 18, 5); 

INSERT INTO item VALUES ('Meatloaf', 14, 6); 
INSERT INTO item VALUES ('Reuben', 12, 7); 
INSERT INTO item VALUES ('Pot Pie', 11, 8); 
INSERT INTO item VALUES ('Turkey Club', 10, 9); 
INSERT INTO item VALUES ('Mac and Cheese', 11, 10); 
INSERT INTO item VALUES ('Steak', 18, 11); 
INSERT INTO item VALUES ('Fish and Chips', 16, 12); 
INSERT INTO item VALUES ('Cheesesteak', 13, 13); 
INSERT INTO item VALUES ('Corned Beef', 12, 14); 
INSERT INTO item VALUES ('Waffle', 9, 15); 
INSERT INTO item VALUES ('Grilled Cheese', 10, 16); 
INSERT INTO item VALUES ('Club Sandwich', 10, 17); 
INSERT INTO item VALUES ('Burrito', 10, 18); 
INSERT INTO item VALUES ('Pot Roast', 14, 19); 
INSERT INTO item VALUES ('Shepards Pie', 16, 20); 



INSERT INTO customer VALUES ('John', 'Falgie', 1);  
INSERT INTO customer VALUES ('Mark', 'Blake', 23); 
INSERT INTO customer VALUES ('Lily', 'Moore', 15); 

INSERT INTO customer VALUES ('Carrie', 'Smith', 13);  
INSERT INTO customer VALUES ('Emma', 'Church', 4); 
INSERT INTO customer VALUES ('Steven', 'Clark', 8);
INSERT INTO customer VALUES ('Isabelle', 'Graces', 54);  
INSERT INTO customer VALUES ('Stuart', 'Johnson', 17); 
INSERT INTO customer VALUES ('Mia', 'White', 99);
INSERT INTO customer VALUES ('William', 'Cottier', 23);  
INSERT INTO customer VALUES ('Evelyn', 'Thomas', 62); 
INSERT INTO customer VALUES ('Benjamin', 'Davis', 9);
INSERT INTO customer VALUES ('Charlotte', 'Welsh', 40);  
INSERT INTO customer VALUES ('Christopher', 'Lewis', 31); 
INSERT INTO customer VALUES ('Ava', 'Walker', 12);
INSERT INTO customer VALUES ('Daniel', 'Robinson', 78);  
INSERT INTO customer VALUES ('Sofia', 'Young', 5); 
INSERT INTO customer VALUES ('Elijah', 'Allen', 20);
INSERT INTO customer VALUES ('Amelia', 'Scott', 100);  
INSERT INTO customer VALUES ('James', 'Wright', 45); 
INSERT INTO customer VALUES ('Mason', 'Wilson', 87);  
INSERT INTO customer VALUES ('Scarlett', 'Anderson', 14); 
INSERT INTO customer VALUES ('Logan', 'Taylor', 6);
INSERT INTO customer VALUES ('Olivia', 'New', 29);  
INSERT INTO customer VALUES ('Lucas', 'Reed', 84); 
INSERT INTO customer VALUES ('Mya', 'Keane', 51);
INSERT INTO customer VALUES ('Aidan', 'Harris', 36);  
INSERT INTO customer VALUES ('Carl', 'Leonard', 75); 
INSERT INTO customer VALUES ('Jessica', 'Blankey', 19);



INSERT INTO employeeRestaurant VALUES ('Gabby', 'Niss', '11-DEC-2002', 200765622, 45, 89, 'server', 1211, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Emily', 'Smith', '03-JAN-2003', 123456787, 41, 1, 'chef', 3333, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Maggie', 'Mundy', '07-AUG-2005', 34567233, 22, 73, 'hostess', 4545, 'Casey’s Diner'); 

INSERT INTO employeeRestaurant VALUES ('Sandra', 'Clance', '07-NOV-2002', 137932386, 37, 21, 'server', 7677, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Cole', 'Clark', '15-MAY-2002', 173640274, 13, 13, 'server', 2110, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Denise', 'Baker', '13-AUG-2004', 438291647, 23, 5, 'chef', 1738, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Emily', 'Johnson', '15-MAR-1995', 362956385, 7, 54, 'server', 1117, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Alexander', 'Martinez', '10-JUL-1992', 447294627, 41, 29, 'server', 1246, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Jacob', 'Pavin', '03-MAY-1994', 173926483, 22, 15, 'server', 2239, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Olivia', 'Brown', '08-APR-1996', 463728365, 22, 32, 'server', 7639, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('William', 'Garcia', '17-SEP-1991', 936278564, 18, 3, 'chef', 4312, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Isabella', 'Smode', '30-DEC-1997', 280154783, 13, 27, 'hostess', 4629, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Michael', 'Ronen', '05-FEB-1993', 657438291, 16, 17, 'server', 1003, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Emma', 'Lee', '20-AUG-1999', 364723467, 26, 84, 'server', 8833, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Ethan', 'Jones', '12-JUN-2004', 947563245, 27, 8, 'hostess', 4637, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Charles', 'Frank', '13-JUN-2000', 275015628, 21, 67, 'server', 6845, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Brooke', 'Gardler', '24-APR-1996', 462884623, 38, 2, 'hostess', 7235, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Colin', 'Mullin', '13-NOV-2003', 946632781, 12, 22, 'server', 9462, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Brandon', 'Coleman', '23-JUL-2000', 462331784, 26, 26, 'server', 4628, 'Casey’s Diner'); 
INSERT INTO employeeRestaurant VALUES ('Stephanie', 'Malcolm', '08-MAY-1998', 472894637, 12, 7, 'chef', 3346, 'Casey’s Diner'); 



INSERT INTO orderName VALUES(1, 10, '11:15', '10-NOV-2023', 22, 18, 1); 
INSERT INTO orderName VALUES(2, 14, '14:06', '20-JAN-2024', 89, 19, 23); 
INSERT INTO orderName VALUES (3, 10, '15:07', '21-JUN-2023', 1, 20, 15); 

INSERT INTO orderName VALUES(4, 12, '11:15', '10-NOV-2023', 73, 14, 99); 
INSERT INTO orderName VALUES(5, 10, '14:06', '20-JAN-2024', 21, 17, 62); 
INSERT INTO orderName VALUES (6, 10, '15:07', '21-JUN-2023', 5, 16, 9); 
INSERT INTO orderName VALUES(7, 13, '11:15', '10-NOV-2023', 54, 13, 40); 
INSERT INTO orderName VALUES(8, 18, '14:06', '20-JAN-2024', 29, 5, 31); 
INSERT INTO orderName VALUES (9, 9, '15:07', '21-JUN-2023', 15, 4, 12); 
INSERT INTO orderName VALUES(10, 10, '11:15', '10-NOV-2023', 32, 9, 78); 
INSERT INTO orderName VALUES(11, 10, '14:06', '20-JAN-2024', 3, 1, 5); 
INSERT INTO orderName VALUES (12, 10, '15:07', '21-JUN-2023', 27, 1, 20); 
INSERT INTO orderName VALUES(13, 18, '11:15', '10-NOV-2023', 8, 11, 100); 
INSERT INTO orderName VALUES(14, 10, '14:06', '20-JAN-2024', 15, 17, 45); 
INSERT INTO orderName VALUES (15, 12, '15:07', '21-JUN-2023', 84, 7, 87); 
INSERT INTO orderName VALUES(16, 13, '11:15', '10-NOV-2023', 13, 13, 14); 
INSERT INTO orderName VALUES(17, 10, '14:06', '20-JAN-2024', 17, 18, 6); 
INSERT INTO orderName VALUES (18, 14, '15:07', '21-JUN-2023', 67, 6, 29); 
INSERT INTO orderName VALUES(19, 10, '11:15', '10-NOV-2023', 2, 18, 84); 
INSERT INTO orderName VALUES(20, 16, '14:06', '20-JAN-2024', 26, 12, 51); 
INSERT INTO orderName VALUES (21, 18, '15:07', '21-JUN-2023', 7, 5, 36); 
INSERT INTO orderName VALUES(22, 18, '11:15', '10-NOV-2023', 32, 2, 75); 
INSERT INTO orderName VALUES(23, 9, '14:06', '20-JAN-2024', 5, 3, 19); 
INSERT INTO orderName VALUES (24, 12, '15:07', '21-JUN-2023', 84, 14, 13); 



INSERT INTO paymentType VALUES (1, 'John Falgie', 1234567890123245, '12/26', 987); 
INSERT INTO paymentType VALUES (23, 'Mark Blake', 3031303344444386, '01/28', 333); 
INSERT INTO paymentType VALUES (15, 'Lily Moore', 8018390922413487, '03/27', 423);

INSERT INTO paymentType VALUES (2, 'Carrie Smith', 2647338574634212, '12/26', 782); 
INSERT INTO paymentType VALUES (3, 'Emma Church', 3627183667593621, '01/28', 312); 
INSERT INTO paymentType VALUES (4, 'Steven Clark', 4732896744567341, '03/27', 124);
INSERT INTO paymentType VALUES (5, 'Isabella Graces', 2001357438675438, '12/26', 328); 
INSERT INTO paymentType VALUES (22, 'Stuart Johnson', 1275983456723434, '01/28', 285); 
INSERT INTO paymentType VALUES (7, 'Mia White', 5633876699870236, '03/27', 369);
INSERT INTO paymentType VALUES (8, 'Evelyn Thomas', 4678012345786325, '12/26', 296); 
INSERT INTO paymentType VALUES (9, 'Benjamin Davis', 8894023756481298, '01/28', 427); 
INSERT INTO paymentType VALUES (10, 'Charlotte Welsh', 4672339076554371, '03/27', 396);
INSERT INTO paymentType VALUES (11, 'Jessica Blankey', 5623789089765865, '12/26', 852); 
INSERT INTO paymentType VALUES (24, 'Ava Walker', 4567893452312456, '01/28', 285); 
INSERT INTO paymentType VALUES (13, 'Daniel Robinson', 5783923467098432, '03/27', 237);
INSERT INTO paymentType VALUES (14, 'Sofia Young', 5312453216792314, '12/26', 390); 
INSERT INTO paymentType VALUES (16, 'Elijah Allen', 5003456709876234, '01/28', 736); 
INSERT INTO paymentType VALUES (17, 'Amelia Scott', 6209567483992341, '03/27', 174);
INSERT INTO paymentType VALUES (18, 'James Wright', 1245879346574823, '12/26', 489); 
INSERT INTO paymentType VALUES (19, 'Mason Wilson', 2846734628095467, '01/28', 104); 
INSERT INTO paymentType VALUES (20, 'Carl Leonard', 3723657401234563, '03/27', 227);
INSERT INTO paymentType VALUES (21, 'Logan Taylor', 4632812657384902, '03/27', 398);

SELECT * FROM ITEM;

SELECT * FROM CUSTOMER;

SELECT * FROM EMPLOYEERESTAURANT;

SELECT * FROM ORDERNAME;

SELECT * FROM PAYMENTTYPE;
 
SELECT DISHNAME, PRICE
FROM ITEM;

SELECT PRICE
FROM ITEM
WHERE DISHNAME = 'Mac and Cheese';

SELECT HOURS
FROM EMPLOYEERESTAURANT
WHERE EMPLOYEEID = 17;