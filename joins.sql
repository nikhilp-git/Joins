Drop database JoinsPractice ;

-- STEP 1:Creste a new Database
CREATE DATABASE JoinsPractice;
USE JoinsPractice;
 
 -- STEP 2:Create Students table
 CREATE TABLE Students(
 StuID INT PRIMARY KEY,
 Name VARCHAR(50),
 CourseID int);
 
  -- STEP 2:Create Courses table
  CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

-- STEP 4: Insert sample data into Students
INSERT INTO Students (StuID, Name, CourseID) VALUES
(1, 'Anjali', 101),
(2, 'Rahul', 102),
(3, 'Meera', 103),
(4, 'Suresh', NULL);

-- STEP 5: Insert sample data into Courses
INSERT INTO  Courses (CourseID, CourseName) VALUES
(101, 'CSE'),
(102, 'IT'),
(104,'ML');

-- INNER JOIN: Students with matching Course IDs in Courses table
SELECT Students.Name, Courses.CourseName
FROM Students
INNER JOIN Courses
ON Students.CourseID = Courses.CourseID;

-- LEFT JOIN: Show all students, even if they don't have a matching course
SELECT Students.Name, Courses.CourseName
FROM Students
LEFT JOIN Courses
ON Students.CourseID = Courses.CourseID;

-- RIGHT JOIN: Show all courses, even if no student is enrolled in them
SELECT Students.Name, Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.CourseID = Courses.CourseID;

-- FULL OUTER JOIN: Combine all students and all courses
-- Since MySQL doesn’t support FULL OUTER JOIN, use UNION
SELECT Students.Name, Courses.CourseName
FROM Students
LEFT JOIN Courses
ON Students.CourseID = Courses.CourseID

UNION

SELECT Students.Name, Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.CourseID = Courses.CourseID;



