# Câu lệnh thêm mới dữ liệu vào bảng
# cú pháp - insert into + value/values
INSERT INTO `firstdb`.`student` (`id`, `name`, `age`, `sex`, `classId`) 
VALUES 
(14, 'Nguyễn VĂn A', 21, true, 4),
(4, 'Nguyễn VĂn B', 21, true, 2),
(5, 'Nguyễn VĂn C', 21, true, 2),
(6, 'Nguyễn VĂn D', 21, true, 2),
(7, 'Nguyễn VĂn E', 21, true, 2),
(8, 'Nguyễn VĂn FG', 21, true, 3),
(9, 'Nguyễn VĂn H', 21, true, 2),
(10, 'Nguyễn VĂn M', 21, true, 1),
(11, 'Nguyễn VĂn N', 21, true, 2),
(12, 'Nguyễn VĂn O', 21, true, 1);
insert into classes(className) value('10A2'); 
insert into classes(className) 
value
('10A3'),
('10A4'); 

# Câu lệnh cập nhật 
# update <table> set col1 = val1,col2= val 2,... where 
update classes set className = concat(classname,'+') 
where idclasses in (2,4);

# Câu lệnh xóa 
# delete from <table> where 
delete from classes where idclasses = 3 ;
delete from classes;
truncate table classes;

# Câu lệnh lấy dữ liệu
select idclasses,classname from classes order by classname ,idclasses desc;
# mệnh đề join 
# cú pháp : select col1, col2,... 
# from table1 t1 join table2 t2 on t1.colx = t2.colx join table3 t3 on ; 
select * from classes c join student s on c.className = s.name; -- ko có quan hệ
select * from classes c left join student s on c.idclasses = s.classId -- có quan hệ
union
select * from classes c right join student s on c.idclasses = s.classId; -- có quan hệ


-- hãy thống kê số lượng học sinh của từng lớp
select c.className `Tên lớp`, c.idclasses `Mã lớp` , count(s.id) as `Số lượng` from student s join classes c on s.classId = c.idclasses
where c.className not like "10A3"
group by c.idclasses;
 --  Having 
 -- hãy thống kê các lớp họ có số lượng học sinh > 5
select c.className `Tên lớp`, c.idclasses `Mã lớp` , count(s.id) as `Số lượng` from student s join classes c on s.classId = c.idclasses
group by c.idclasses
having `Số lượng` >5;



-- Note : câu lệnh select đầy đủ
-- 1 . Select - third
-- 2 . From - first
-- 3 . Where - second
-- 4 . Group by - fourth
-- 5 . Having - fifth
-- 6 . Order by - sixth


