INSERT INTO bms.`accounts`(accountNumber,ownerName,paidAmount,remainingAmount) VALUES
			('p1203001005636222','Saeed',5875,1500),
			('p1203001003436260','Ali Ahmed',1610,0),
			('p1203001005636212','M Azeem',19060,0),
			('p1203001005636678','Sultan',1500,0),
			('c1204001005636342','PepsiCo',0,0),
			('c1204001005636002','Continental Biscuits Limited',0,0),
			('c1204001005630032','Gourmet Bakery',0,0),
			('c1205001005656702','JDW Sugar Mills',27500,0),
			('c1205001005623402','DAWOOD FLOUR MILLS (PVT) LTD',0,0),
			('c1205001000062226','Ahmed Foods',0,0),
			('c1205001005566222','United Sweets and Bakers',0,0),
		 	('m1204001005636562','M Abbas',0,0),
			('m1204001005636806','M Fareed',0,0),
			('m1204001005636217','Zeeshan',0,0),
			('e1270010056364590','Asad Sarwar',0,0),
			('e1273001005636344','M saif',0,0),
			('e1273001005634228','Zohran',0,0),
			('e1293001005636230','M Rizwan',0,0),
			('e1293001005636236','Saffar Khan',0,0);
INSERT INTO bms.`customers`(customerNumber,customerName,address,phone,email,accountNumber) VALUES
				    ('c1001','Saeed','Lahore','0311-3453232','Saeed@gmail.com','p1203001005636222'),
				    ('c1002','Ali Ahmed','Sukkur','0312-3053232','Ali1@gmail.com','p1203001003436260'),
				    ('c1003','M Azeem','Larkana','0313-3443232','Azeem4@gmail.com','p1203001005636212'),
				    ('c1004','Sultan','Lahore','0314-3453232','Sultan56@gmail.com','p1203001005636678');
				    
INSERT INTO bms.`companies`(companyName,address,contact,accountNumber) VALUES 
	('PepsiCo.Pakistan','Raiwand,Lahore','042-111742725','c1204001005636342'),
	('Continental Biscuits Limited','Search Results ZONE D - Block 7 Zone C Block 7 Clifton, Karachi, Karachi City, Sindh 75600','021-111771771','c1204001005636002'),
	('Gourmet Bakery','Gourmet Foods Unit-06 Mauza Bhobhatian Main Defense Road Lahore','0322-2227777','c1204001005630032'),
	('JDW Sugar Mills','17-Abid Majeed Road, Lahore Cantt, Lahore','042-36602573','c1205001005656702'),
	('DAWOOD FLOUR MILLS (PVT) LTD','Sargodha Road,Faisalabad','041-8781422','c1205001005623402'),
	('Ahmed Foods','Ahmed House, D-112, Ahmed Avenue,S.I.T.E. Karachi','021-32563520','c1205001000062226'),
	('United Sweets and Bakers','Model Town,Raheem Yar Khan,Punjab','068-111777888','c1205001005566222');
	
INSERT INTO bms.`items`(itemId,itemName,mfgDate,expDate,companyName,description,price) VALUES
			('i1001','Chocolate Cake','25-11-2019','10-12-2019','United Sweets and Bakers','NULL',300),
			('i1002','Flavoured Candies','25-11-2019','15-12-2019','Continental Biscuits Limited','Multiple Flavours',150),
			('i1003','Milk Rusk','26-11-2019','14-12-2019','United Sweets and Bakers','3 Flavours',350),
			('i1004','Chocolate Pastry','03-12-2019','08-12-2019','United Sweets and Bakers','NULL',35),
			('i1005','Cupcakes','30-11-2019','09-12-2019','Gourmet Bakery','6 Flavours',45),
			('i1006','Ice Cream Cones','25-11-2019','11-12-2019','United Sweets and Bakers','12 Flavours',150),
			('i1007','Apple Pies','29-11-2019','16-12-2019','Gourmet Bakery','NULL',180),
			('i1008','Peanut butter','02-12-2019','20-12-2019','Gourmet Bakery','3 Flavours',70),
			('i1009','Pepsi','21-11-2019','10-05-2020','PepsiCo.Pakistan','NULL',40),
			('i1010','Maza Juice','22-11-2019','10-06-2020','PepsiCo.Pakistan','1 Flavour',110),
			('r1001','Sugar','21-11-2019','11-09-2020','JDW Sugar Mills','NULL',3500),
			('r1002','Brown Sugar','18-11-2019','15-08-2020','JDW Sugar Mills','NULL',2050);

INSERT INTO bms.`transections`(transectionNumber,accountNumber,number_of_Items,totalAmount,transectionDate) VALUES
				(100001,'p1203001005636222',5,1525,'01-12-2019'),
				(100002,'p1203001003436260',3,1610,'01-12-2019'),
				(100003,'p1203001005636212',3,19060,'01-12-2019'),
				(100004,'p1203001005636678',1,1500,'01-12-2019'),
				(100005,'p1203001005636222',3,5850,'01-12-2019'),
				(100006,'c1205001005656702',2,27500,'30-11-2019');
				
INSERT INTO bms.`transectiondetail`(transectionNumber,itemId,transectionTime) VALUES
				(100001,'i1001','08:30'),
				(100001,'i1005','09:30'),
				(100001,'i1004','05:30'),
				(100001,'i1003','08:30'),
				(100001,'i1002','08:30'),
				(100002,'i1001','09:30'),
				(100002,'i1007','09:30'),
				(100002,'i1008','09:30'),
				(100003,'i1009','10:20'),
				(100003,'i1010','10:20'),
				(100003,'i1003','10:20'),
				(100004,'i1002','11:40'),
				(100005,'i1001','08:30'),
				(100005,'i1005','08:30'),
				(100005,'i1006','08:30'),
				(100006,'r1001','10:00'),
				(100006,'r1002','10:00');


			
INSERT INTO bms.`orders`(orderNumber,customerNumber,deliveryStatus,orderDate,totalAmount) VALUES
			(100001,'c1001','delivered','4-12-2019',1525),
			(100002,'c1002','delivered','4-12-2019',1610),
			(100003,'c1003','delivered','4-12-2019',19060),
			(100004,'c1004','delivered','4-12-2019',1500),
			(100005,'c1001','delivered','4-12-2019',5850);
					
INSERT INTO bms.`orderDetails`(orderNumber,itemId,quantityOrdered) VALUES
			(100001,'i1001',2),
			(100001,'i1005',2),
			(100001,'i1004',1),
			(100001,'i1003',1),
			(100001,'i1002',3),
			(100002,'i1001',3),
			(100002,'i1007',2),
			(100002,'i1008',5),
			(100003,'i1009',6),
			(100003,'i1010',12),
			(100003,'i1003',50),
			(100004,'i1002',10),
			(100005,'i1001',8),
			(100005,'i1005',20),
			(100005,'i1006',17);
			
INSERT INTO bms.`employees`(employeeNumber,employeeName,address,phone,accountNumber,experties,workShift,salary,joinDate) VALUES
			('m101','M Abbas','Kohat','0331-4576543','m1204001005636562','Receptionist','Morning',22000,'21-08-2017'),
			('m102','M Fareed','Panjgur','0333-9890333','m1204001005636806','Recieptionist','Evening',15000,'22-06-2018'),
			('m103','Zeeshan','Larkana','0332-9855773','m1204001005636217','Data Entry Operator','Evening',17000,'10-09-208'),
			('e101','Asad Sarwar','Raheem Yar Khan','0333-9876543','e1270010056364590','Cake Baker','Morning',21000,'24-08-2018'),
			('e102','M saif','Multan','0332-9876333','e1273001005636344','Pastry Packer','Evening',16000,'29-08-2019'),
			('e103','Zohran Rasheed','Attock','0331-9876773','e1273001005634228','Bread Baker','Evening',12000,'02-03-2019'),
			('e104','M Rizwan','Laiyya','0334-9876545','e1293001005636230','Biscuit Baker','Morning',10000,'10-09-2019'),
			('e105','saffar khan','Quetta','0335-9876523','e1293001005636236','Biscuit Baker','Evening',10000,'03-10-2019');;
		