CREATE TABLE student (
    student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    -- Email validation using a regex pattern
    CONSTRAINT email_format CHECK (email ~ '^[\\w\\.-]+@[a-zA-Z\\d\\.-]+\\.[a-zA-Z]{2,6}$'),
    -- Table constraint for primary key
    CONSTRAINT pk_student_id PRIMARY KEY (student_id)
);


-- drop the table 
drop table <table_name>

-- constraints => validation
/*
- column constraints.
not null , primary key , unique(null is unique), check, references(foreign key)

-table constraints
same as column but we can give column list
UNIQUE(column_list)
*/

-- TABLES
-- 1. Subject 
create table subject (
student_id uuid primary key default uuid_generate_v4(),
subject text not NULL,
description TEXT not null
)
-- 2. Teacher 
create table teacher (
teacher_id uuid primary key default uuid_generate_v4(),
first_name VARCHAR(255) not null,
last_name varchar(255) not null,
email text ,
date_of_birth Date not null
)

-- Course 
create table course (
course_id uuid PRIMARY key default uuid_generate_v4(),
"name" text not NULL,
description text,
subject_id uuid REFERENCES subject(subject_id),
teacher_id uuid REFERENCES teacher(teacher_id),
feedback feedback[]
)

-- enrollment
create table enrollment (

course_id uuid REFERENCES course(course_id),
student_id uuid REFERENCES student(student_id),
enrollment_date date not null,
constraint pk_enrollement primary key (course_id, student_id)
)