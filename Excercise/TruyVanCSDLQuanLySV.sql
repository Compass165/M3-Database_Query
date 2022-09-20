
USE l3_database_query;


-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’

-- SELECT StudentID, StudentName, Address, Phone
-- FROM Student 
-- WHERE StudentName LIKE 'h%' ;


-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.

-- SELECT *
-- FROM Class
-- WHERE StartDate BETWEEN '2008/12/01' AND '2008/12/31';


-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.

-- SELECT *
-- FROM Subject
-- WHERE Credit
-- IN (3, 4, 5);


-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
-- UPDATE customers SET contact_name = 'Alfred Schmidt', city= 'Frankfurt‘ WHERE id = 1
-- UPDATE Student 
-- SET ClassID = 2  
-- WHERE StudentID = 1;

-- SELECT *
-- FROM Student;


-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. 
-- nếu trùng sắp theo tên tăng dần.

SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark
FROM Student S 
JOIN Mark M
ON S.StudentID = M.StudentID
JOIN Subject Sub 
ON M.SubID = Sub.SubID
ORDER BY Mark DESC, StudentName;



