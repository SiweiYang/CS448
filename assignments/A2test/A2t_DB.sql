create table dept(
dno int not null,
dname char(10),
primary key (dno));

insert into dept values(1, 'accounting');
insert into dept values(2, 'sales');
insert into dept values(3, 'management');
insert into dept values(4, 'shipping');
insert into dept values(5, 'testing');

create table buildings(
bname char(10),
dno int,
primary key (bname),
foreign key (dno) references dept(dno));

create table emp(
eno int,
ename char(10),
dno int,
primary key (eno),
foreign key (dno) references dept(dno));

insert into emp values(304,'Sean',3);
insert into emp values(402,'Jeff',4);
insert into emp values(301,'John',3);
insert into emp values(107,'Jack',1);
insert into emp values(203,'Simon',2);
insert into emp values(101,'Smith',1);
insert into emp values(100,'Bob',5);



create table countries(
dno int,
cname char(10),
primary key (dno));

insert into countries values(2, 'USA');
insert into countries values(3, 'China');
insert into countries values(4, 'Japan');

create table manages(
eno int,
dno int,
primary key (eno, dno),
foreign key (eno) references emp(eno),
foreign key (dno) references dept(dno));

insert into manages values(304, 4);
insert into manages values(301, 3);
insert into manages values(203, 2);
