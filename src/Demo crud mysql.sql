SELECT * FROM java10.students;

--  Tạo bảng
create database java10;

-- chọn hiển thị bảng
select *from students;

-- Chọn hiển thị một cột trong bảng
select name from students;

--  hiển thị cột mong muốn xem
select id,age,name,gender from students;


-- khai báo tạo các cột
create table students(
id int not null auto_increment primary key, -- không được bằng null và id tự tăng 
name varchar(255),
age int
); 
drop table students;
-- thêm all dữ liệu 
insert into students(name) value("huy");
insert into students(id,name,age) value(1,"son",16);
insert into students(name,age) values ('son',20), ('chuan', 30);


-- Thêm một và nhiều cột cột mới 
alter table students add phone varchar(10) not null;
alter table students add gender varchar(50), add address varchar(255);


-- cập nhật từng phần tử
update students set id = 2 where name = "huy";
update	students set age = 11 where id = 2;


-- cập nhật nhiều cột trong một lệnh

update students
set gender = "nu",
address = "bac ninh"
where id = 2;


--  Xóa cột
alter table students drop gender;
alter table students drop phone;

--  xóa dòng
delete from students where id = 1;
insert into students(name,age) value('huy11',15);

