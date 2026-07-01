-- ===========================
-- Hands-On 2 : Task 1
-- Insert, Update and Delete Data
-- ===========================

-- 15. Insert Sample Data

-- Departments
INSERT INTO departments (dept_name, head_of_dept, budget) VALUES
('Information Technology', 'Dr. Karthik Raman', 900000.00),
('Electrical Engineering', 'Dr. Divya Menon', 650000.00),
('Automobile Engineering', 'Dr. Naveen Kumar', 560000.00),
('Architecture', 'Dr. Shalini Rao', 470000.00);

-- Students
INSERT INTO students (first_name, last_name, email, date_of_birth, department_id, enrollment_year) VALUES
('Aakash', 'Nair', 'aakash.nair@college.edu', '2003-03-18', 1, 2022),
('Meera', 'Krishnan', 'meera.krishnan@college.edu', '2003-08-11', 1, 2022),
('Kiran', 'Reddy', 'kiran.reddy@college.edu', '2002-12-05', 2, 2021),
('Pooja', 'Mishra', 'pooja.mishra@college.edu', '2004-02-14', 3, 2023),
('Harish', 'Kumar', 'harish.kumar@college.edu', '2003-10-20', 1, 2022),
('Anjali', 'Joshi', 'anjali.joshi@college.edu', '2002-06-28', 2, 2021),
('Rahul', 'Chauhan', 'rahul.chauhan@college.edu', '2004-04-09', 4, 2023),
('Keerthana', 'Iyer', 'keerthana.iyer@college.edu', '2003-09-01', 1, 2022);

-- Courses
INSERT INTO courses (course_name, course_code, credits, department_id) VALUES
('Programming Fundamentals', 'IT101', 4, 1),
('Relational Database Systems', 'IT102', 3, 1),
('Java Programming', 'IT103', 4, 1),
('Electrical Machines', 'EE101', 3, 2),
('Automotive Engineering Basics', 'AE101', 3, 3);

-- Enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1,1,'2022-08-01','A'),
(1,2,'2022-08-01','B'),
(2,1,'2022-08-01','A'),
(2,3,'2022-08-01','A'),
(3,4,'2021-08-01','B'),
(4,5,'2023-08-01',NULL),
(5,1,'2022-08-01','C'),
(5,2,'2022-08-01','A'),
(6,4,'2021-08-01','B'),
(7,5,'2023-08-01',NULL),
(8,1,'2022-08-01','A'),
(8,3,'2022-08-01','B');

-- Professors
INSERT INTO professors (prof_name, email, department_id, salary) VALUES
('Dr. Raghav Srinivasan', 'raghav.s@college.edu', 1, 98000.00),
('Dr. Lakshmi Narayan', 'lakshmi.n@college.edu', 1, 90000.00),
('Dr. Vinod Menon', 'vinod.m@college.edu', 2, 85000.00),
('Dr. Preethi Raj', 'preethi.r@college.edu', 3, 81000.00),
('Dr. Arvind Bhat', 'arvind.b@college.edu', 4, 78000.00);

-- 16. Insert Two Additional Students
INSERT INTO students (first_name, last_name, email, date_of_birth, department_id, enrollment_year)
VALUES
('Vignesh', 'Raj', 'vignesh.raj@college.edu', '2004-07-21', 1, 2023),
('Sanjana', 'Patil', 'sanjana.patil@college.edu', '2003-11-16', 2, 2022);

-- 17. Update Grade
UPDATE enrollments
SET grade = 'B'
WHERE student_id = 5
AND course_id = 1;

-- 18. Preview Records with NULL Grade
SELECT *
FROM enrollments
WHERE grade IS NULL;

-- Delete Records with NULL Grade
DELETE FROM enrollments
WHERE grade IS NULL;

-- 19. Verify Row Counts
SELECT COUNT(*) AS departments_count FROM departments;
SELECT COUNT(*) AS students_count FROM students;
SELECT COUNT(*) AS courses_count FROM courses;
SELECT COUNT(*) AS enrollments_count FROM enrollments;
SELECT COUNT(*) AS professors_count FROM professors;