use student_management;

-- tinh diem trung binh
select course_id, avg(point) as avg_point from point group by course_id;

-- hien thi max avg
select course_id, avg(point) as avg_point from point group by course_id order by avg_point desc limit 1;