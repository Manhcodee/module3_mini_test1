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
having round(avg(p.point), 2) = (
    select round(max(avg_point), 2)
    from (
        select avg(p.point) as avg_point
        from Course c
        join Point p on c.course_id = p.course_id
        group by c.name
    ) as temp
);

-- all
SELECT course_id, AVG(point) AS avg_point
FROM Point
GROUP BY course_id
HAVING AVG(point) = all (
    SELECT MAX(avg_point)
    FROM (
        SELECT AVG(point) AS avg_point
        FROM Point
        GROUP BY course_id
    ) AS subquery
);

