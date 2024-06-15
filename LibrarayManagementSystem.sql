create database libraryDatabase;	
drop database librarydatabase;
create database librarydatabase; 
use librarydatabase;
create table Authors (
    author_id integer not null,
    author_age integer,
    author_name varchar(255),
    Number_Of_Books integer,
    country_name varchar(255),
    primary key (author_id)
) ;
drop table authors;
drop table login_data;
select * from security;
select * from authors_books;
SELECT * FROM authors;  
SELECT * FROM books;
SELECT * FROM customer_details;
show tables;
SELECT * FROM book_distribution;
SELECT * FROM security;	   	
drop database librarydatabase;
drop table security;
select * from security where name_unique = 'KavinAdithya'; 