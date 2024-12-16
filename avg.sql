use student_management;

-- hiển thị điểm trung bình của các môn học
select c.name as CourseName, round(avg(p.point), 2) as AveragePoint
from Course c
join Point p on c.course_id = p.course_id
group by c.name;

-- hiển thị max avg của môn học
select c.name as CourseName, round(avg(p.point), 2) as MaxAgePoint
from Course c
join Point p on c.course_id = p.course_id
group by c.name
order by MaxAgePoint desc
limit 1;