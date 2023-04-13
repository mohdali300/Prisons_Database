
-- CREATE DATABASE [Prisons_Project]

-------------Creating tables of Prison project------------------

create table Prison (
	pr_ID int not null,
	pr_Name nvarchar(50) not null,
	Prisoners_num int,
	pr_Address nvarchar(255),
primary key (pr_ID)
	);

create table Prisoner (
	p_ID int not null,
	p_Fname nvarchar(20) not null,
	p_Lname nvarchar(20) not null,
	Conf_type nvarchar(50),
	Received_date date,
	p_RecFullName nvarchar(50),
	work_type nvarchar(50),
	Exit_date date,
	Exdate_GoodIdol date,
pr_ID int not null,
primary key (p_ID),
foreign key (pr_ID) references Prison(pr_ID)
	);

create table Crime (
	cr_ID int not null primary key,
	Type_ofcrime nvarchar(50) not null,
	Crime_details nvarchar(500),
	);

create table Prisoner_Crime(
	cr_ID int not null,
	p_ID int not null,
	verdict_date date,
primary key (cr_ID,p_ID)
	);

create table Visitor (
	v_SSN int not null primary key,
	v_FullName nvarchar(255)
	);

create table Pr_P_V(
	v_SSN int not null,
	pr_ID int not null,
	p_ID int not null,
	Visit_date date,
primary key(v_SSN,pr_ID,p_ID)
	);

create table Marital_Status(
	ms_ID int not null,
	p_ID int not null,
	Family_member int,
	Social_behav varchar(50),
	Single_or_married varchar(20),
primary key (ms_ID,p_ID)
	);

create table Scientific_status(
	sc_ID int not null,
	p_ID int not null,
	Qualifications nvarchar(500),
	Still_study nvarchar(10),
primary key (sc_ID,p_ID)
	);

create table Political_situation(
	pols_ID int not null,
	p_ID int not null,
	Known_in_stsecurity nvarchar(10),
	Secret_org_member nvarchar(10),
	Political_prisoner nvarchar(10),
primary key(pols_ID,p_ID)
	);

create table Physical_status(
	phs_ID int not null,
	p_ID int not null,
	Social_class nvarchar(50),
primary key (phs_ID,p_ID)
	);

create table Wealthy_src(
	phs_ID int not null,
	Sources nvarchar(255),
primary key (phs_ID)
	);

create table Professional_status(
	pro_ID int not null,
	p_ID int not null,
	Is_work nvarchar(5),
	Job nvarchar(50),
	Job_add nvarchar(100),
primary key (pro_ID,p_ID)
	);

create table Criminal_case(
	cc_ID int not null,
	has_cc nvarchar(25),
primary key (cc_ID)
	);

create table cc_Prisoner(
	cc_ID int not null,
	p_ID int not null,
	Prev_crimes nvarchar(255),
	Verdict_date date,
	Verdict_duration int,
primary key (cc_ID,p_ID)
	);

create table Health_status(
	hs_ID int not null,
	is_safe nvarchar(25),
primary key (hs_ID)
	);

create table Health_Prisoner(
	hs_ID int not null,
	p_ID int not null,
	ill_date date,
	disease nvarchar(255),
primary key (hs_ID,p_ID)
	);


