create table readers(
reader_id varchar (10),
f_name varchar(50),
city varchar(45),
mobileno varchar(12),
occupaion varchar(12),
CONSTRAINT readers_pk PRIMARY KEY (reader_id)
);

insert into readers values('C001','ramesh','banglore','91xxxxx45','student'),
('C002','kamlesh','kanpur','45xxxx45','student'),
('C003','rohit','kuberpur','9898655xx','student'),
('C004','romil','jyonta','987546448','employed'),
('C005', 'anshul','jyonta',null,'student'),
('C006','ravi','jyonta',null,'selfemployed'),
('C007','rishu','jyonta','548415785','actor'),
('C008','Anu', 'jyonta','479868xxx','selfemployed'),
('C009','sourabh','gwalior','49878654','student'),
('B001','rajesh','bhopal','21548585','selfemployed'),
('B002', ' rongu','indore','5487458945','student'),
('B003','divynashu','indore','7354xxxx','student'),
('B004','samar','gandhinagar','4548765','student')
insert into readers values
('A001','pardeeep narwal','haryana','4579575154','sportsman'),
('A002','sandeep ','haryana',null,'sportsman'),
('A003','sudhir','delhi','5487848154','anchor'),
('A004','sumit','hyderabdad','45789428','businessman')
insert into readers values
('D001','Virat kohli','delhi','48784','sportsman'),
('D002','sachin tendulkar','mumbai',null,'sportsman'),
('D003','rohit sharma','bhogaon',null,'enterpreneur'),
('D004','rajiv kumar','etawah','548851xx','boxer')

 select * from readers
create table Book(
 bID varchar(8),
 bname varchar(30),
 bdomain varchar(20),
 CONSTRAINT Book_bID_pk PRIMARY KEY(bID)
 );

 insert into Book values
 ('B0001','The cat in the hat','Story'),
 ('B0002','Charlie and his shoes','Story'),
 ('B0003','The very hungary catterpillar','Story'),
 ('B0004','The story of my life','Biography'),
 ('B0005','Shutter island','Fiction'),
 ('B006','The monkey and the crocodile','Comedy')
 select * from Book
 

 create table Active_readers(
 account_ID varchar(10),
 reader_ID varchar(10),
 bID varchar(8),
 atype varchar(10),
 astatus varchar(10),
 CONSTRAINT Active_readers_acnumber_pk PRIMARY KEY(account_ID),
 Constraint account_readerID_fk FOREIGN KEY(reader_ID) REFERENCES readers(reader_id),
 CONSTRAINT account_b_ID_fk FOREIGN KEY (bID) REFERENCES Book(bID)
 );
 
 insert into Active_readers values
 ('A00001','C001','B0001','PREMIUM','ACTIVE'),
 ('A00002','C002','B0002','REGULAR','ACTIVE'),
 ('A00003','A001','B0003','PREMIUM','ACTIVE'),
 ('A00004','D002','B0001','REGULAR','TERMINATED'),
 ('A00005','B001','B0005','REGULAR','SUSPENDED')
  select * from Active_readers

create table Bookissue_details(
issuenumber varchar(8),
account_ID varchar(10),
bID varchar (8),
Bookname varchar(30),
number_of_Book_issued int,
CONSTRAINT trandetails_tnumber_pk PRIMARY KEY(issuenumber),
CONSTRAINT trandetails_acnumber_fk FOREIGN KEY(account_ID) REFERENCES Active_readers
);
select * from Bookissue_details
insert into Bookissue_details values
('T00001','A00001','B0001','The story of my life','2'),
('T00002','A00003','B0004','Shutter island','8')

select * from Active_readers
select * from Active_readers where astatus='ACTIVE'
select COUNT (account_id) from Active_readers where atype='REGULAR';



