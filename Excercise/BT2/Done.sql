USE l3_quanlybanhang;

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT *
FROM Orderr;


-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT C.cName, P.pName
FROM Customer C 
JOIN Orderr O
ON C.cID = O.cID
JOIN OrderDetail OD
ON O.oID = OD.oID
JOIN Product P
ON P.pID = OD.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT cName
FROM Customer
WHERE cName
NOT IN (SELECT C.Name
FROM Customer C
JOIN Orderr O
ON C.cID = O.cID);
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn 
-- được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)


