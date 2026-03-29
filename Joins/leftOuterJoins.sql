Create table tblJoinsDemo(
id int primary key identity,
name varchar(50)
)
Insert Into tblJoinsDemo(name) values('Vivek')
Insert Into tblJoinsDemo(name) values('Rahul')
Create table tblJoins(
studentId int foreign key(studentId) references tblJoinsDemo(id),
marks int 
)
Delete from tblJoins where studentId=1
Delete from tblJoins where marks=45
Insert Into tblJoins(studentId, marks)values(1, 99)
Insert Into tblJoins(studentId, marks)values(null, 45)

Select * from tblJoinsDemo
Select * from tblJoins

Select * from 
tblJoins j
left join 
tblJoinsDemo d
on j.studentId=d.id