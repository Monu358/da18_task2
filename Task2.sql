create table Department(
Dep_id int primary key,
Dep_Name varchar
)
insert into Department(Dep_id,Dep_Name)
values(1,'mechanical');
insert into Department(Dep_id,Dep_Name)
values(2,'civil');
insert into Department(Dep_id,Dep_Name)
values(3,'computer');
insert into Department(Dep_id,Dep_Name)
values(4,'electtronics');
insert into Department(Dep_id,Dep_Name)
values(5,'IT');
insert into Department(Dep_id,Dep_Name)
values(6,'Artifical Intelligence');
insert into Department(Dep_id,Dep_Name)
values(7,'articture');
insert into Department(Dep_id,Dep_Name)
values(8,'Data mining');

select * from Department


Create Table Employe1(
emp_id int primary key,
emp_Name varchar,
emp_Roll int,
emp_grade varchar,
Dep_id int,
FOREIGN key (Dep_id) REFERENCES Department(Dep_id)
)
insert into Employe1(Emp_id,Emp_Name,Emp_Roll,Emp_Grade,Dep_id)
values(401,'john',12,'A',1);
insert into Employe1(Emp_id,Emp_Name,Emp_Roll,Emp_Grade,Dep_id)
values(402,'merry',13,'B',2);
insert into Employe1(Emp_id,Emp_Name,Emp_Roll,Emp_Grade,Dep_id)
values(403,'sen',22,'A',3);
insert into Employe1(Emp_id,Emp_Name,Emp_Roll,Emp_Grade,Dep_id)
values(404,'lucky',15,'A',4);
insert into Employe1(Emp_id,Emp_Name,Emp_Roll,Emp_Grade,Dep_id)
values(405,'kirti',20,'A',5);
insert into Employe1(Emp_id,Emp_Name,Emp_Roll,Emp_Grade,Dep_id)
values(406,'raju',25,'B',6);

select * from Employe1


Create table Project1(
project_id int primary key,
project_name varchar,
Dep_id int,
FOREIGN key (Dep_id) REFERENCES Department(Dep_id)
)
 insert into Project1(project_id,project_name,Dep_id)
values(601,'first project',1);
insert into Project1(project_id,project_name,Dep_id)
values(602,'second project',2);
insert into Project1(project_id,project_name,Dep_id)
values(603,'third project',3);
insert into Project1(project_id,project_name,Dep_id)
values(604,'fourth project',4);
insert into Project1(project_id,project_name,Dep_id)
values(605,'fifth project',5);
insert into Project1(project_id,project_name,Dep_id)
values(606,'sixth project',6);
select * from Project1


create table Task1
(
Task_id int primary key,
Task_name varchar,
task_date date,
emp_id int ,

FOREIGN key (emp_id) REFERENCES Employe1(emp_id)
)
 insert into Task1(Task_id,Task_name,task_date,emp_id)
values(201,'first task','01-01-2024',401);
 insert into Task1(Task_id,Task_name,task_date,emp_id)
values(202,'second task','09-13-2024',402);
 insert into Task1(Task_id,Task_name,task_date,emp_id)
values(203,'third task','07-15-2020',403);
 insert into Task1(Task_id,Task_name,task_date,emp_id)
values(204,'fourth task','06-14-2021',404);
 insert into Task1(Task_id,Task_name,task_date,emp_id)
values(205,'fifth task','02-12-20220',405);
 insert into Task1(Task_id,Task_name,task_date,emp_id)
values(206,'sixth task','04-22-2023',406);

select * from Task1

create table Attendence
(
stud_name varchar primary key,
stud_roll int,
project_id int,
FOREIGN key (project_id) REFERENCES Project1(project_id)
)
insert into Attendence(stud_name,stud_roll,project_id)
values('john',501,601)
insert into Attendence(stud_name,stud_roll,project_id)
values('kirti',502,602)
insert into Attendence(stud_name,stud_roll,project_id)
values('raju',503,603)
insert into Attendence(stud_name,stud_roll,project_id)
values('mery',504,604)
insert into Attendence(stud_name,stud_roll,project_id)
values('sen',505,605)

select * from Attendence