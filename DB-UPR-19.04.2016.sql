USE NewDB;
--task1--

CREATE TABLE Product(
 maker CHAR(1),
 model CHAR(4),
 type VARCHAR(7)
 );	

CREATE TABLE Printer (
  code int,
  color CHAR(1) DEFAULT 'n',
  price DECIMAL(38,2)
  );

CREATE TABLE Classes(
class VARCHAR(50),
type CHAR(2));


INSERT INTO Product (maker, model, type)
VALUES ('A', '1234', 'Printer');

INSERT INTO Printer (code, color, price)
VALUES ('1099', 'y', '280');

INSERT INTO Classes (class, type)
VALUES ('Ship', 'aa');

ALTER TABLE Classes 
ADD bore float(20);

ALTER TABLE	Printer
DROP COLUMN price;

--DROP TABLE Classes, Printer, Product;


--task2--
USE facebook;
CREATE TABLE Users (
	id INT,
	email VARCHAR(40),
	password VARCHAR(30),
	registerdate datetime,
)

CREATE TABLE Friends (
	friendA int,
	friendB int,
)

CREATE TABLE Walls(
	id INT,
	idCommentAuthor INT,
	message VARCHAR(max),
	commentdate datetime,
)

CREATE TABLE Groups(
	groupId INT,
	groupName VARCHAR(50),
	groupDescription VARCHAR(100) DEFAULT ''
	)

CREATE TABLE GroupMembers(
	groupId INT,
	userId INT,
	)

INSERT INTO Users (id, email, password)
VALUES ('1', 'tdrivanov@gmail.com', 'thisisapassword');

INSERT INTO Users (id, email, password)
VALUES ('2', 'ivanpetrov@gmail.com', 'thisisapassword');

INSERT INTO Friends(friendA, friendB)
VALUES('1', '2');

INSERT INTO Walls(id, idCommentAuthor, message)
VALUES('1', '2', 'zdr');

INSERT INTO Groups(groupId, groupName, groupDescription)
VALUES('1', 'Football fans', 'A group for all football fans')

INSERT INTO GroupMembers(groupId, userId)
VALUES('1','2');