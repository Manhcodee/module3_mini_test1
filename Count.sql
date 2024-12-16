use student_management;

-- Thống kê số lượng học viên theo lớp
select c.name as ClassName, count(s.student_id) as StudentCount
from Classes c
join Students s on c.classes_id = s.classes_id
group by c.name;

-- Thống kê số lượng các tỉnh
select a.address as Province, count(s.student_id) as StudentCount
from Address a
join Students s on a.address_id = s.address_id
group by a.address;