insert into student (
first_name,
last_name,
email,
date_of_birth
) values (
'Aayush',
'Gautam',
'example@gmail.com',
'1922-11-13':: DATE
)


insert into subject (
subject,
description
) values (

'sql',
'a dbms lang'
)

-- to handle null
-- update course 
set subject_id = '99e57afd-3392-4e74-8748-d1ec2f208df8'
where subject_id is null;


alter table course 
alter column 
subject_id set  not null;

-- So same goes for teacher_id

-- enrollment
insert into enrollment (
student_id,course_id,enrollment_date
) values (
'66eca8e5-4778-4550-b40e-c334a9e5f4dd',
'8d4e9bb2-27b1-4add-9c7e-8c8bd7d69193',
now()::date
)

--feedback 
update course 
set feedback = array_append(
feedback,
row (
'66eca8e5-4778-4550-b40e-c334a9e5f4dd',
5,
'feedback'
):: feedback
)
where course_id = '8d4e9bb2-27b1-4add-9c7e-8c8bd7d69193'
-- no constraint so we need to change the modal


-- feedback
 
insert into feedback (
student_id,
course_id,
feedback,
rating

) values (
'66eca8e5-4778-4550-b40e-c334a9e5f4dd',
'8d4e9bb2-27b1-4add-9c7e-8c8bd7d69193',
'well this is goood bro',
'5'

)