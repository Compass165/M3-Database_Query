USE l3_quanlybanhang;

INSERT INTO Customer (cID, Name, cAge)
VALUES	(1, 'Minh Quan', 10),
		(2, 'Ngoc Oanh', 20),
		(3, 'Hong Ha', 50);
        
INSERT INTO Orderr (oID, cID, oDate)
VALUES	(1, 1, '2006/3/21'),
		(2, 2, '2006/3/21'),
		(3, 1, '2006/3/16');
        
INSERT INTO Product (pID, pName, pPrice)
VALUES	(1, 'Máy giặt', 3),
		(2, 'Tủ lạnh', 5),
		(3, 'Điều hòa', 7),
		(4, 'Quạt', 1),
		(5, 'Bếp điện', 2);
        
INSERT INTO OrderDetail (oID, pID, odQTY)
VALUES	(1, 1, 3),
		(1, 3, 7),
		(1, 4, 2),
		(2, 1, 1),
		(3, 1, 8),
		(2, 5, 4),
		(2, 3, 3);