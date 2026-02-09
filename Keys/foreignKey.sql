Create database Keys

Create table students(
id int primary key identity not null,
name varchar(30),
coursename varchar(30)
)

Insert Into students values ('Vivek Saha', 'Java')
Insert Into students values ('Omm Panda', 'C')
Insert Into students values ('Akash Kumar Pati', 'Js')
Insert Into students values ('Jyoti Prakash Behera', 'Python')

Select * from students

Create table tbl_Course(
courseId int primary key identity not null,
studentId int,
foreign key (studentId) references students(id),
)

Select * From tbl_Course
select * from students

Insert Into tbl_Course values(1)

Insert Into tbl_Course values(99)



-- In database keys we have two tables students and tbl_Course

-- So the id is the foreign key in tbl_Course which is referencing the primary key of students table

-- Like we need foreign key for the verification of the data integrity and to maintain the relationship between two tables

-- Like i enter a value in tbl_Course which is not present in students table then it will give an error because of the foreign key constraint

-- because how to give course to a student who is not present in the students table like who is not in a school or college so it will give an error because of the foreign key constraint