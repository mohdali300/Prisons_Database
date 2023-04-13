use Prisons
-------------> Insert data into tables <---------------

-------- insert into prison table---------------
insert into Prison (pr_ID,pr_Name,Prisoners_num,pr_Address)
values
(1022,'Wadi Natrun',80,'Buhaira'),
(1023,'Burg Elarab',25,'Alexandria'),
(1024,'Turah',100,'Cairo'),
(1025,'Qena',30,'Qena'),
(1026,'Abu Zabal',120,'Qalyubia'),
(1027,'Marj',15,'Qalyubia')

----------- insert into prisoner table--------------
insert into Prisoner (p_ID,p_Fname,p_Lname,Conf_type,Received_date,p_RecFullName,work_type,Exit_date,Exdate_GoodIdol,pr_ID)
values
(2000,'Ahmed','Nasser','Solitary','2023-01-12','Atia ahmed','Carpenter','2030-01-12','2028-01-12',1023),
(2001,'Mahmoud','Nour','Amber','2020-02-03','Amir sayed','blacksmith','2025-02-03','2023-02-03',1025),
(2002,'Mohamed','Adel','Amber','2019-05-20','Sayed ali','Hard works','2022-05-20','2021-05-20',1027),
(2003,'Mohamed','Fadel','Solitary','2015-10-10','Amir sayed','Hard works','2020-10-10','2018-10-10',1025),
(2004,'Samir','Ali','Amber','2023-10-20','Sayed ali','Chef','2025-10-20','2024-10-20',1027),
(2005,'Amr','Adel','Solitary','2020-02-25','Atia ahmed','sanitation worker','2028-01-12','2025-01-12',1023),
(2006,'Ahmed','Ali','Amber','2018-03-25','Ahmed Gomaa','blacksmith','2021-03-25','2020-03-25',1022),
(2007,'Mohamed','Serag','Solitary','2010-10-10','Ahmed Gomaa','Hard works','2016-10-10','2015-10-10',1022),
(2008,'Fares','Abdo','Amber','2017-02-02','Abdo Abdo','sanitation worker','2020-02-02','2019-02-02',1024),
(2009,'Noureldeen','Saber','Amber','2023-10-20','Atia ahmed','Carpenter','2025-10-20','2024-10-20',1023),
(2010,'Hassan','Mhaoud','Solitary','2019-05-20','Sayed ali','sanitation worker','2035-05-20','2030-05-20',1027),
(2011,'Essam','Ali','Amber','2011-01-25','Sadam Hussien','Carpenter','2016-01-25','2014-01-25',1026),
(2012,'Ali','Sayed','AMber','2011-01-25','Sadam Hussien','Hard works','2018-01-25','2017-01-25',1026),
(2013,'Mohamed','Ashraf','Solitary','2012-12-11','Abdo Abdo','blacksmith','2017-12-11','2015-12-11',1024),
(2014,'Mohamed','Abdo','Solitary','2021-12-11','Abdo Abdo','sanitation worker','2025-12-11','2024-12-11',1024),
(2015,'Khaled','Moahmoud','AMber','2015-01-25','Sadam Hussien','sanitation worker','2020-01-25','2019-01-25',1026),
(2016,'Moaz','Osama','Solitary','2018-05-02','Sayed ali','Hard works','2023-05-02','2022-05-02',1027),
(2017,'Youssef','Ghareb','AMber','2019-04-25','Ahmed Gomaa','blacksmith','2021-04-25','2020-04-25',1022),
(2018,'Omar','Hamdy','Amber','2022-11-25','Ahmed Gomaa','blacksmith','2022-11-25','',1022),
(2019,'Maged','Ali','Solitary','2008-08-10','Amir sayed','Hard works','2017-08-10','2015-08-10',1025),
(2020,'Mohamed','Ali','Amber','2022-01-01','Atia ahmed','Carpenter','2028-01-12','2025-01-12',1023)

----------- insert into Crime table--------------
insert into Crime (cr_ID,Type_ofcrime,Crime_details)
values
(404,'Killing','killed his sister'),
(305,'Drugs','deals in drugs'),
(304,'Monuments','trades in antiquities with unauthorized parties'),
(550,'Theft','Theft of an old woman'),
(400,'Theft','Electronic theft'),
(370,'Killing','killed his friend'),
(500,'Monuments','trades in antiquities with unauthorized parties'),
(111,'Drugs',' makes drugs'),
(200,'Theft','A gold store robbery'),
(414,'Killing','killed his brother')

---------- insert into Prisoner_Crime table ----------
insert into Prisoner_Crime (cr_ID,p_ID,verdict_date)
values
(404,2003,'2015-10-10'),
(550,2001,'2020-02-03'),
(305,2020,'2022-01-01'),
(304,2019,'2008-08-10'),
(400,2010,'2019-05-20'),
(370,2008,'2017-02-02'),
(500,2006,'2018-03-25'),
(111,2002,'2019-05-20'),
(200,2005,'2020-02-25'),
(414,2013,'2012-12-11')

------- insert into Visitor table -----------
insert into Visitor (v_SSN,v_FullName)
values
(20290,'Mohamed Walid'),
(20291,'Walid Abdullah'),
(20292,'Ali Ahmed'),
(20293,'Sadam Sayed'),
(20294,'Faten Ali'),
(20295,'Eman Ali'),
(20296,'Eyad Adnan'),
(20297,'Adham Adnan')

------- insert into table -------------
insert into Pr_P_V (pr_ID,p_ID,v_SSN,Visit_date)
values
(1023,2000,20290,'2020-02-03'),
(1025,2003,20291,'2022-10-03'),
(1024,2014,20292,'2020-12-15'),
(1026,2011,20293,'2020-02-20'),
(1023,2020,20294,'2010-06-25'),
(1025,2019,20295,'2010-06-25'),
(1022,2017,20296,'2023-01-01'),
(1024,2013,20297,'2020-10-10')

-------- insert into Marital_Status table -------
insert into Marital_Status (ms_ID,p_ID,Family_member,Social_behav,Single_or_married)
values
(900,2000,5,'Good','Single'),
(901,2012,4,'Bad','Married'),
(902,2003,6,'Bad','Single'),
(903,2007,3,'Good','Single'),
(904,2015,3,'Good','Married'),
(905,2004,7,'Good','Married'),
(906,2002,4,'Bad','Single'),
(907,2010,8,'Good','Married')

----------- insret into Scientific_status table ------------
insert into Scientific_status (sc_ID,p_ID,Qualifications,Still_study)
values
(800,2009,'undergraduate - Foreign languages','yes'),
(801,2011,'PHD - transcription','no'),
(802,2000,'postgraduate-E-marketing','no'),
(803,2020,'undergraduate - graphic design','yes'),
(804,2016,'postgraduate-mathmatics','no'),
(805,2007,'PHD-data analysis','no'),
(806,2003,'undergraduate-transcription','yes'),
(807,2001,'postgraduate-data analysis','no')

------------ insert into Political_situation table ---------
insert into Political_situation (pols_ID,p_ID,Known_in_stsecurity,Secret_org_member,Political_prisoner)
values
(700,2020,'no','no','no'),
(701,2000,'yes','no','yes'),
(702,2006,'no','yes','no'),
(703,2015,'yes','yes','yes'),
(704,2016,'no','yes','no'),
(705,2004,'no','yes','yes'),
(706,2011,'yse','yes','no'),
(707,2001,'no','yes','no')

-------- insert into Physical_status table -----------
insert into Physical_status (phs_ID,p_ID,Social_class)
values
(600,2002,'Rich'),
(601,2014,'Poor'),
(602,2000,'Rich'),
(603,2020,'Rich'),
(604,2010,'Poor'),
(605,2001,'Poor'),
(606,2006,'Poor'),
(607,2007,'Rich')

-------- insert into Wealthy_src table -------------
insert into Wealthy_src (phs_ID,Sources)
values
(600,'job & trading'),
(601,'freelancing'),
(602,'supermarket'),
(603,'freelancing'),
(604,'no src'),
(605,'no src'),
(606,'trading'),
(607,'taxi')

-------- insert into Professional_status table ---------
insert into Professional_status (pro_ID,p_ID,Is_work,Job,Job_add)
values
(300,2020,'yes','Graphic designer','qena'),
(301,2012,'yes','doctor','giza - fiters st'),
(302,2000,'yes','doctor','giza - fiters st'),
(303,2006,'no','',''),
(304,2007,'yes','teacher','alex - hosny mobark st'),
(305,2018,'no','',''),
(306,2001,'yes','lawyer','alex - punisher st'),
(307,2016,'no','','')

---------- insert into Criminal_case table ----------
insert into Criminal_case (cc_ID,has_cc)
values
(110,'yes'),
(111,'yes'),
(112,'yes'),
(113,'no'),
(114,'no'),
(115,'yes'),
(116,'yes'),
(117,'no')

-------- insert into Previous_crimes tables ----------
insert into cc_Prisoner(cc_ID,Prev_crimes,p_ID,Verdict_date,Verdict_duration)
values
(110,'theft',2020,'2022-01-01',6),
(111,'drugs - killing',2000,'2020-01-03',4),
(112,'theft',2001,'2019-02-04',5),
(116,'killing',2002,'2013-06-04',2),
(115,'killing',2019,'2010-10-10',7)

------- insert into Health_status table -----------
insert into Health_status (hs_ID,is_safe)
values
(130,'yes'),
(131,'no'),
(132,'no'),
(133,'yes'),
(134,'yes'),
(135,'no'),
(136,'yes'),
(137,'no')

--------- insert into disease table -------------
insert into Health_Prisoner(hs_ID,p_ID,disease,ill_date)
values
(130,2000,'none',''),
(131,2001,'diabetes','2019-01-20'),
(132,2010,'Pressure disease','2016-05-20'),
(133,2020,'none',''),
(134,2014,'none',''),
(135,2005,'diabetes','2010-10-20'),
(136,2011,'none',''),
(137,2009,'Pressure disease','2011-11-11')


--------- DML ----------
update Prisoner
set Exit_date='2031-01-12'
where p_ID=2000;

update prisoner
set pr_ID=1025
where p_ID=2009;

update Pr_P_V
set Visit_date='2020-03-10'
where v_SSN=20293;

update Marital_Status
set Single_or_married='Married'
where ms_ID=906;

update Wealthy_src
set Sources='Money laundering'
where phs_ID=604;


---------------[   Thank You (;    ]------------------


