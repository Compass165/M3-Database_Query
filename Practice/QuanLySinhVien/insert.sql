USE l3_database_query;

-- SELECT *
-- FROM Student;

-- SELECT *
-- FROM Student
-- WHERE Status = true;

-- SELECT *
-- FROM Subject
-- WHERE Credit < 10;

-- SELECT S.StudentID, S.StudentName, C.ClassName
-- FROM Student S
-- join Class C
-- on S.ClassID = C.ClassID;

-- SELECT S.StudentID, S.StudentName, C.ClassName
-- FROM Student S
-- JOIN Class C
-- ON S.ClassID = C.ClassID
-- WHERE C.ClassName = 'A1';

SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark
FROM Student S
JOIN Mark M
ON S.StudentID = M.StudentID
JOIN Subject Sub
ON M.SubId = Sub.SubId;

SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark
FROM Student S
JOIN Mark M
ON S.StudentID = M.StudentID
JOIN Subject Sub
ON M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';