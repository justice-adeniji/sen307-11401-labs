USE sen307_11401;

INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

INSERT INTO Course
(course_code, course_title, credit_units, description, dept_id)
VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d
LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

USE sen307_11401;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/ST/103', 'Dr Chinedu Eze', 'c.eze@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/ST/104', 'Dr Fatima Abdullahi', 'f.abdullahi@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/ST/105', 'Dr Ngozi Nwankwo', 'n.nwankwo@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/ST/106', 'Dr Ibrahim Sani', 'i.sani@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/ST/107', 'Dr Esther Ojo', 'e.ojo@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/ST/108', 'Dr Samuel Adeyemi', 's.adeyemi@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/ST/109', 'Dr Grace Ekanem', 'g.ekanem@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/ST/110', 'Dr Tunde Bakare', 't.bakare@vua.edu.ng', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('VUG/SEN/24/11401', 'Adeniji Justice Adeyemi', 'M', '2008-04-14', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231234', 'Ada Obi', 'F', '2005-03-14', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231235', 'John Musa', 'M', '2004-11-02', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231236', 'Chisom Okeke', 'F', '2005-06-21', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231237', 'Emeka Nwosu', 'M', '2004-08-17', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231238', 'Aisha Ibrahim', 'F', '2005-01-09', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231239', 'Daniel Eze', 'M', '2004-04-12', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231240', 'Blessing Okoro', 'F', '2005-09-25', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('20231241', 'David Adewale', 'M', '2004-12-19', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('20231242', 'Maryam Suleiman', 'F', '2005-02-28', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231243', 'Samuel Chukwu', 'M', '2004-07-15', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231244', 'Precious Ibe', 'F', '2005-05-11', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231245', 'Oluwaseun Ajayi', 'M', '2004-10-06', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('20231246', 'Hadiza Garba', 'F', '2005-03-30', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('20231247', 'Michael Ojo', 'M', '2004-09-14', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231248', 'Jennifer Ekanem', 'F', '2005-07-23', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231249', 'Peter Onyekachi', 'M', '2004-06-08', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231250', 'Ruth Danjuma', 'F', '2005-11-16', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('20231251', 'Victor Nnamdi', 'M', '2004-02-04', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('20231252', 'Deborah Abubakar', 'F', '2005-08-20', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering'));

SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;

INSERT INTO Enrolment (student_id, course_id) VALUES
((SELECT student_id FROM Student WHERE matric_no = 'VUG/SEN/24/11401'), (SELECT course_id FROM Course WHERE course_code = 'SEN307')),
((SELECT student_id FROM Student WHERE matric_no = 'VUG/SEN/24/11401'), (SELECT course_id FROM Course WHERE course_code = 'SEN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231234'), (SELECT course_id FROM Course WHERE course_code = 'SEN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231234'), (SELECT course_id FROM Course WHERE course_code = 'COS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231235'), (SELECT course_id FROM Course WHERE course_code = 'SEN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231235'), (SELECT course_id FROM Course WHERE course_code = 'COS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231236'), (SELECT course_id FROM Course WHERE course_code = 'SEN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231236'), (SELECT course_id FROM Course WHERE course_code = 'AIN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231237'), (SELECT course_id FROM Course WHERE course_code = 'COS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231237'), (SELECT course_id FROM Course WHERE course_code = 'COS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231238'), (SELECT course_id FROM Course WHERE course_code = 'AIN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231238'), (SELECT course_id FROM Course WHERE course_code = 'AIN305')),
((SELECT student_id FROM Student WHERE matric_no = '20231239'), (SELECT course_id FROM Course WHERE course_code = 'AIN305')),
((SELECT student_id FROM Student WHERE matric_no = '20231239'), (SELECT course_id FROM Course WHERE course_code = 'AIN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231240'), (SELECT course_id FROM Course WHERE course_code = 'DTS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231240'), (SELECT course_id FROM Course WHERE course_code = 'DTS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231241'), (SELECT course_id FROM Course WHERE course_code = 'CYB301')),
((SELECT student_id FROM Student WHERE matric_no = '20231241'), (SELECT course_id FROM Course WHERE course_code = 'COS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231242'), (SELECT course_id FROM Course WHERE course_code = 'SEN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231242'), (SELECT course_id FROM Course WHERE course_code = 'AIN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231243'), (SELECT course_id FROM Course WHERE course_code = 'COS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231243'), (SELECT course_id FROM Course WHERE course_code = 'DTS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231244'), (SELECT course_id FROM Course WHERE course_code = 'AIN305')),
((SELECT student_id FROM Student WHERE matric_no = '20231244'), (SELECT course_id FROM Course WHERE course_code = 'CYB301')),
((SELECT student_id FROM Student WHERE matric_no = '20231245'), (SELECT course_id FROM Course WHERE course_code = 'DTS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231245'), (SELECT course_id FROM Course WHERE course_code = 'AIN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231246'), (SELECT course_id FROM Course WHERE course_code = 'CYB301')),
((SELECT student_id FROM Student WHERE matric_no = '20231246'), (SELECT course_id FROM Course WHERE course_code = 'COS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231247'), (SELECT course_id FROM Course WHERE course_code = 'SEN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231247'), (SELECT course_id FROM Course WHERE course_code = 'SEN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231248'), (SELECT course_id FROM Course WHERE course_code = 'COS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231248'), (SELECT course_id FROM Course WHERE course_code = 'DTS301')),
((SELECT student_id FROM Student WHERE matric_no = '20231249'), (SELECT course_id FROM Course WHERE course_code = 'AIN301')),
((SELECT student_id FROM Student WHERE matric_no = '20231249'), (SELECT course_id FROM Course WHERE course_code = 'AIN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231250'), (SELECT course_id FROM Course WHERE course_code = 'DTS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231250'), (SELECT course_id FROM Course WHERE course_code = 'CYB301')),
((SELECT student_id FROM Student WHERE matric_no = '20231251'), (SELECT course_id FROM Course WHERE course_code = 'CYB301')),
((SELECT student_id FROM Student WHERE matric_no = '20231251'), (SELECT course_id FROM Course WHERE course_code = 'COS305')),
((SELECT student_id FROM Student WHERE matric_no = '20231252'), (SELECT course_id FROM Course WHERE course_code = 'SEN307')),
((SELECT student_id FROM Student WHERE matric_no = '20231252'), (SELECT course_id FROM Course WHERE course_code = 'SEN301'));

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
((SELECT course_id FROM Course WHERE course_code = 'SEN307'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/101')),
((SELECT course_id FROM Course WHERE course_code = 'SEN307'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/102')),
((SELECT course_id FROM Course WHERE course_code = 'SEN301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/101')),
((SELECT course_id FROM Course WHERE course_code = 'COS301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/103')),
((SELECT course_id FROM Course WHERE course_code = 'COS305'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/104')),
((SELECT course_id FROM Course WHERE course_code = 'AIN301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/105')),
((SELECT course_id FROM Course WHERE course_code = 'AIN305'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/106')),
((SELECT course_id FROM Course WHERE course_code = 'AIN307'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/105')),
((SELECT course_id FROM Course WHERE course_code = 'DTS301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/107')),
((SELECT course_id FROM Course WHERE course_code = 'DTS305'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/108')),
((SELECT course_id FROM Course WHERE course_code = 'CYB301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/109'));

SELECT COUNT(*) AS total_lecturers FROM Lecturer;
SELECT COUNT(*) AS total_students FROM Student;
SELECT COUNT(*) AS total_enrolments FROM Enrolment;
SELECT COUNT(*) AS total_course_allocations FROM CourseAllocation;

USE sen307_11401;

SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '20231234';

SET SQL_SAFE_UPDATES = 0;

UPDATE Student
SET dept_id = 2
WHERE matric_no = '20231234';

SET SQL_SAFE_UPDATES = 1;

SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '20231234';

USE sen307_11401;

INSERT INTO Department (dept_name)
VALUES ('Library and Information Science');

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES (
    '20239999',
    'Transfer Student',
    (SELECT dept_id
     FROM Department
     WHERE dept_name = 'Library and Information Science')
);

-- Step 1: reassign the dependent student to another department
UPDATE Student
SET dept_id = (SELECT dept_id FROM Department

WHERE dept_name = 'Software Engineering')

WHERE matric_no = '20239999';
-- Step 2: now the delete succeeds
DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SELECT * FROM Department;


SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;




