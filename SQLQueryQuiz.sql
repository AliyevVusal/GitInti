--Academy databazasını yaradın 
Create Database Academy

--Database Istifade
Use Academy

--Tabel Yaratmag (Groups)
Create Table Groups(
	Id int,
	Name nvarchar(50) Unique
)

Drop Table Groups
--Tabel Yaratmag (Students)
Create Table Students(

	Id int,
	Name nvarchar(50),
	Surname nvarchar(50),
	GroupId int
)

Drop Table Students

--Student Kolumuna Grade Elave Etmek
Alter Studets Add Tabel (Grade int)

--Group Elave Etmek
Insert Into Groups Values
(1,'P129'),
(2,'P124'),
(3,'P221')

--Student Elave Etmek
Insert Into Students Values
(1,'Vusal','Aliyev',1),
(2,'Yamil','Layicov',1),
(3,'Maqsud','Safarov',1),
(4,'Onur','Smlv',3)


--Telebelerin Siyahisi Yalniz P129 Qrupunun
Select * from Students Where(Students.Groupid = 1)

--Her Qurupda Nece Telebe Oldugunu Gosteren Tabel
Select g.Name,s.Name from Students s
Inner join Groups g On s.Id = g.Id
Group by g.Name,s.Name





