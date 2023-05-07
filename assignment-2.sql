create database online_consulation;
create table doctor (
doctor_id int primary key not null,
doctor_name varchar(30) not null,
doctor_desig varchar(30) not null,
doctor_timings time not null
);
insert into doctor values (121,"Raja","MD","08:00:00");
insert into doctor values (131,"varsha","MBBS","09:00:00");
insert into doctor values (141,"Harsha","BDA","10:00:00");
insert into doctor values (151,"Raja","MBBS/MD","24:00:00");
insert into doctor values (161,"Vishal","MD","08:00:00");
insert into doctor values (171,"Varma","MD","10:00:00");
insert into doctor values (181,"Sharma","MD","09:00:00");
insert into doctor values (191,"Ramachandra","MD","11:00:00");
insert into doctor values (111,"DUrga","MD","12:00:00");
insert into doctor values (112,"Narmada","MD","10:00:00");
insert into doctor values (122,"sumanth","MBBS?MD","24:00:00");


alter table doctor add Experience int not null;

alter table doctor add doctor_day varchar(20) not null;

update doctor set Experience=4 where doctor_id = 121;
update doctor set Experience=6 where doctor_id = 131;
update doctor set Experience=15 where doctor_id = 141;
update doctor set Experience=7 where doctor_id = 151;
update doctor set Experience=8 where doctor_id = 161;
update doctor set Experience=10 where doctor_id = 171;
update doctor set Experience=6 where doctor_id = 181;
update doctor set Experience=8 where doctor_id = 191;
update doctor set Experience=12 where doctor_id = 111;
update doctor set Experience=10 where doctor_id = 112;
update doctor set Experience=6 where doctor_id = 122;
-- insert into doctor(Experience) values (4,6,15,7,8,10,6,8,12,10,6);
update doctor set doctor_day="Monday,tuesday" where doctor_id = 121;
update doctor set doctor_day="saturday,sunday" where doctor_id = 131;
update doctor set doctor_day="Monday,wednesday" where doctor_id = 141;
update doctor set doctor_day="Monday,friday" where doctor_id = 151;
update doctor set doctor_day="tuesday,friday" where doctor_id = 161;
update doctor set doctor_day="thursday,saturday" where doctor_id = 171;
update doctor set doctor_day="sunday,thursday" where doctor_id = 181;
update doctor set doctor_day="Monday,sunday" where doctor_id = 191;
update doctor set doctor_day="wednesday,tuesday" where doctor_id = 111;
update doctor set doctor_day="wednesday,friday" where doctor_id = 112;
update doctor set doctor_day="Monday,satday" where doctor_id = 122;

select * from doctor;


create table appointment (
patient_id int primary key not null,
doctor_id int not null,
days varchar(30) not null,
general varchar(30) not null
);

insert into appointment values(201,112,"wednesday","yes"),(211,111,"tuesdsy","NO"),(221,122,"Monday","Yes"),(231,121,"tuesday","NO"),(241,131,"Sunday","NO"),(251,141,"wednesday","yes"),(261,151,"friday","NO"),(271,161,"tuesday","yes"),(281,171,"thursday","NO"),(291,181,"SUnday","YEs"),(202,191,"Monday","yes");

select * from appointment;

create table patient (
patient_id int primary key not null,
patient_name varchar(20) not null,
patient_age int not null,
patient_gender varchar(20) not null,
patient_weight int not null,
patient_doctid int not null
);
alter table patient drop column patient_doctid;

insert into patient values(201,"Varun",18,"M",56);
insert into patient values(211,"Sanjay",19,"M",49);
insert into patient values(221,"Arun",32,"M",68);
insert into patient values(241,"vimal",17,"M",48);
insert into patient values(251,"Akshaya",20,"F",50);
insert into patient values(231,"Amala",25,"F",62);
insert into patient values(202,"John",22,"M",65);
insert into patient values(271,"srujana",27,"F",72);
insert into patient values(261,"Mary",20,"M",56);
insert into patient values(291,"Varsha",26,"F",53);
insert into patient values(281,"Sanjay",28,"M",68);

select * from patient;

create table Review (
patient_id int not null,
review_rating int not null,
feedback varchar(30)
);


insert into Review values(211,9,"GOOd");
insert into Review values(221,8,"GOOd");
insert into Review values(231,7," ");
insert into Review values(261,9,"GOOd");
insert into Review values(241,10,"Very GOOd");
insert into Review values(201,9,"GOOd");
insert into Review values(202,10," ");
insert into Review values(271,9,"GOOd");
insert into Review values(251,8," ");
insert into Review values(291,10,"GOOd");
insert into Review values(281,9," ");
 
 
 select * from review;
 



-- 2nd question


create table contact (
id int primary key not null,
Email varchar(80) not null ,
fname varchar(30) not null,
lname varchar(30) not null,
company varchar(30) not null,
Active_flag int not null,
opt_out int not null
);

insert into contact values (123,"a@a.com","kian","seth","ABC",1,1),(133,"b@a.com","Neha","seth","ABC",1,0),(234,"c@c.com","Puru","Malik","CDF",0,0),(342,"d@d.com","Sid","Maan","TEG",1,0);

select * from contact;

select * from contact where Active_flag=1;

delete from contact where opt_out = 1;

delete from contact where company = "ABC";

insert into contact values(658,"mili@gmail.com","mili"," ","DGH",1,1);

select distinct(company) from contact;

select * from contact;


-- Exercise 3

create table  customer (
customer_id int primary key not null,
cust_name varchar(30) not null,
cust_city varchar(40) not null,
grade int not null ,
salesman_id int not null
);

insert into customer values(3002,"Nick Rimando","New York",100,5001);
insert into customer values(3007,"Brad Davis","New York",200,5001);
insert into customer values(3005,"Graham Zusi","California",200,5002);
insert into customer values(3008,"Julian Green","London",300,5002);
insert into customer values(3004,"Fabian Johnson","Paris",300,5006);
insert into customer values(3009,"Geoff Cameron","Berlin",100,5003);
insert into customer values(3003,"Jozy Altidor","Moscow",200,5007);
insert into customer values(3001,"Brad Guzan","London", 100,5005);

select * from customer;
update customer set grade = 0 where customer_id=3001;


create table salesman (
salesman_id int primary key not null,
sales_name varchar(30) not null,
sales_city varchar(30) not null,
commission float not null
);

insert into salesman values(5001,"James Hoog","New York",0.15);
insert into salesman values(5002,"Nail Knite","Paris",0.13);
insert into salesman values(5005,"Pit Alex","London",0.11);
insert into salesman values(5006,"MC Lyon","Paris",0.14);
insert into salesman values(5007,"Paul Adam","Rome",0.13);
insert into salesman values(5003,"Lauson Hen","San Jose",0.12);

select *from salesman;

select  cust_name, cust_city, grade, sales_name, sales_city from customer  
inner join salesman  on customer.salesman_id = salesman.salesman_id  having grade < 100 order by customer_id;


select  customer.cust_name, customer.cust_city, customer.grade, salesman.sales_name, salesman.sales_city from customer  
inner join salesman  on customer.salesman_id = salesman.salesman_id  having grade <= 100 order by customer_id;
