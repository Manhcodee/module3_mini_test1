use student_management;

-- thong ke so luong hoc vien cac lop
select name, count(*) as total_students from classes group by classes_id;

-- thong ke so luong hoc vien tai cac tinh
select address, count(*) as count from address group by address_id;