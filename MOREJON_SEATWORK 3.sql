create database LibraryManagement;
GO
use LibraryManagement;
GO

create table Book (BookId int primary key identity(1,1), Title nvarchar(100), YearReleased int, Genre nvarchar(100))

create table Author (AuthorId int primary key identity(1,1), Name nvarchar(100))

create table BookAuthors (BookId int, AuthorId int, Primary key(BookId, AuthorId), 
Foreign Key (BookId) References Book(BookId), Foreign Key (AuthorId) References Author (AuthorId))

insert into Book ( Title, YearReleased, Genre)
Values 
('To Kill a Mockingbird', 1960 , 'Southern Gothic / Bildungsroman'),
('1984', 1949, 'Dystopian / Social Science Fiction'),
( 'The Great Gatsby', 1925 , 'Literary Fiction / Jazz Age');

insert into Author (Name)
Values
( 'Harper Lee'),
( 'George Orwell'),
('F. Scott Fitzgerald');

insert into BookAuthors (BookId, AuthorId)
Values
(1,1),
(2,2),
(3,3);
 
 select * from Book
 select * from Author
 select * from BookAuthors

drop table Book
drop table Author
drop table BookAuthors



