use student_management;
select * from student_management;

select * from students where fullname like 'hoang%';

select * from students where fullname like 'pham%';

select * from students where fullname like 'nguyen%';

select * from students where fullname like 'bui%';

select * from students where age between 15 and 18;

select * from students where student_id in (31, 32);