CREATE DATABASE l3_quanlybanhang;

USE	l3_quanlybanhang;

CREATE TABLE Customer
	(
		cID				INT				PRIMARY KEY NOT NULL,
        Name			VARCHAR(25),
        cAge			TINYINT
	);
    
CREATE TABLE Orderr
	(
		oID				INT				PRIMARY KEY NOT NULL,
        cID				INT				NOT NULL,
        oDate			DATETIME,
        oTotalPrice		INT,
        FOREIGN KEY (cID)	REFERENCES		Customer (cID)
	);
    
CREATE TABLE Product
	(
		pID				INT				PRIMARY KEY NOT NULL,
        pName			VARCHAR(25),
        pPrice			INT
	);
    
CREATE TABLE OrderDetail
	(
		oID				INT,
        pID				INT,
        odQTY			INT,
        FOREIGN KEY		(oID)		REFERENCES		Orderr (oID),
        FOREIGN KEY		(pID)		REFERENCES		Product (pID)
	);
	