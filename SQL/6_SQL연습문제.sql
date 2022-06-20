#내용 : SQL 연습문제

#문제1
CREATE TABLE `Book` (
`bookid` INT AUTO_INCREMENT PRIMARY KEY,
`bookname` VARCHAR(100),
`publisher` VARCHAR(100),
`price` INT
);

INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('축구아는 여자', '나무수', 13000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('골프 바이블', '대한미디어', 35000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('피겨 교본', '굿스포츠', 8000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book`(`bookname`, `publisher`, `price`) VALUES('Olympic Champions', 'Pearson', 13000);

SELECT * FROM `book`;

#문제2
CREATE TABLE `Customer` (
`custid` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10),
`address` VARCHAR(100),
`phone` CHAR(13)
);

INSERT INTO `customer`(`name`, `address`, `phone`) VALUES('박지성', '영국 맨체스타', '010-5000-0001');
INSERT INTO `customer`(`name`, `address`, `phone`) VALUES('김연아', '대한민국 서울', '010-6000-0001');
INSERT INTO `customer`(`name`, `address`, `phone`) VALUES('장미란', '대한민국 강원도', '010-7000-0001');
INSERT INTO `customer`(`name`, `address`, `phone`) VALUES('추신수', '미국 클리블랜드', '010-8000-0001');
INSERT INTO `customer`(`name`, `address`) VALUES('박세리', '대한민국 대전');

SELECT * FROM `customer`;

#문제3
CREATE TABLE `Orders` (
`orderid` INT AUTO_INCREMENT PRIMARY KEY,
`custid` INT,
`bookid` INT,
`saleprice` INT,
`orderdate` DATE
);

DROP TABLE `orders`;

INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(1, 1, 6000, '2014-07-01');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(1, 3, 21000, '2014-07-03');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(2, 5, 8000, '2014-07-03');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(3, 6, 6000, '2014-07-04');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(4, 7, 20000, '2014-07-05');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(1, 2, 12000, '2014-07-07');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(4, 8, 13000, '2014-07-07');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(3, 10, 12000, '2014-07-08');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(2, 10, 7000, '2014-07-09');
INSERT INTO `orders`(`custid`, `bookid`, `saleprice`, `orderdate`) VALUES(3, 8, 13000, '2014-07-10');

SELECT * FROM `orders`;

#문제4
SELECT a.custid, a.name, a.address
FROM `customer` AS a;

#문제5
SELECT a.bookname, a.price
FROM `book` AS a;

#문제6
SELECT a.price, a.bookname
FROM `book` AS a;

#문제7
SELECT * FROM `book`;
SELECT a.bookid, a.bookname, a.publisher, a.price
FROM `book` AS a;

#문제8
SELECT `publisher` FROM `book`;

#문제9
SELECT `publisher` FROM `book`
GROUP BY `publisher`;

SELECT DISTINCT `publisher` FROM `book`;

#문제10
SELECT * FROM `book` WHERE `price` >= 20000;

#문제11
SELECT * FROM `book` WHERE `price` < 20000;

#문제12
SELECT * FROM `book` WHERE `price` BETWEEN 10000 AND 20000;

#문제13
SELECT a.bookid, a.bookname, a.price FROM `book` AS a WHERE `price` BETWEEN 15000 AND 30000;

#문제14
SELECT * FROM `book` WHERE `bookid` IN (2, 3, 5);

#문제15
SELECT * FROM `book` WHERE MOD(`bookid`,2) = 0;
SELECT * FROM `book` WHERE `bookid` % 2 = 0;

#문제16
SELECT * FROM `customer` WHERE `name` LIKE '박%';

#문제17
SELECT * FROM `customer` WHERE `address` LIKE '대한민국%';

#문제18
SELECT * FROM `customer` WHERE `phone` IS not NULL;
SELECT * FROM `customer` WHERE NOT `phone` IS NULL;

#문제19
SELECT * FROM `book` WHERE `publisher` IN ('굿스포츠', '대한미디어');

#문제20
SELECT `publisher` FROM `book` WHERE `bookname`='축구의 역사';

#문제21
 SELECT `publisher` FROM `book` WHERE `bookname` LIKE '%축구%';

#문제22
SELECT * FROM `book` WHERE `bookname` LIKE '_구%';

#문제23
SELECT * FROM `book` WHERE `bookname` LIKE '축구%' AND `price` >= 20000;

#문제24
SELECT * FROM `book` ORDER BY `bookname` ASC;

#문제25
SELECT * FROM `book` ORDER BY `price`, `bookname`ASC;

#문제26
SELECT * FROM `book` ORDER BY `price`DESC, `publisher`ASC;

#문제27
SELECT * FROM `book` ORDER BY `price`DESC LIMIT 3;

#문제28

SELECT * FROM `book` ORDER BY `price` LIMIT 3;

#문제29
SELECT SUM(`saleprice`) AS '총판매액' FROM `orders`;

#문제30
SELECT SUM(`saleprice`) AS '총판매액',
       AVG(`saleprice`) AS '평균값',
       MIN(`saleprice`) AS '최저가',
       MAX(`saleprice`) AS '최고가'
FROM `orders`;

#문제31
SELECT COUNT(*) AS '판매건수' FROM `orders`;

#문제32



#문제34
SELECT *
FROM `customer`
JOIN `orders` USING(custid)
ORDER BY `custid`;


#문제35
SELECT *
FROM `customer` AS a
JOIN `orders` AS b ON a.custid = b.custid
ORDER BY a.custid;