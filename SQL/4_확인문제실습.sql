#날짜 : 2022/06/14
#이름: 이서희
#내용 : SQL확인문제 실습

#실습하기 4-1


CREATE TABLE `tbl_member`(
`memberID` VARCHAR(10) PRIMARY key,
`memberName` VARCHAR(10) NOT NULL,
`memberHp` CHAR(13) UNIQUE,
`memberAge` INT,
`memberAddr` VARCHAR(20)
);

CREATE TABLE `tbl_product`(
`productCode` int AUTO_INCREMENT PRIMARY KEY ,
`productName` VARCHAR(10) NOT NULL,
`price` int UNIQUE NOT NULL ,
`amount` INT NOT null,
`company` VARCHAR(10),
`makeDate` DATE
);



#실습하기 4-2
insert INTO `tbl_member` VALUES ('p101', '김유신', '010-1234-1001', 25, '신라');
insert INTO `tbl_member` VALUES ('p102', '김춘추', '010-1234-1002', 23, '신라');
insert INTO `tbl_member` VALUES ('p103', '장보고', NULL,31, '통일신라');
insert INTO `tbl_member` VALUES ('p104', '강감찬',NULL, NULL, '고려');
insert INTO `tbl_member` VALUES ('p105', '이순신', '010-1234-1005', 50, NULL);


INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('냉장고', 800, 10, 'LG',NOW()); 
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('노트북', 1200, 20, '삼성', NOW());
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('TV', 1400, 6, 'LG', NOW());
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('세탁기', 1000, 8, 'LG',NOW()); 
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('컴퓨터', 1100, 0, NULL, NULL);
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('휴대폰', 900, 102, '삼성', NOW());

#실습하기 4-3
SELECT `memberName` FROM `tbl_member`;
SELECT `memberName`, `memberHp` FROM `tbl_member`;
SELECT * FROM `tbl_member` WHERE `memberID`='p102';
SELECT * FROM `tbl_member` WHERE `memberID`='p104' OR `memberID`='p105';
SELECT * FROM `tbl_member` WHERE `memberAddr`='신라';
SELECT * FROM `tbl_member` WHERE `memberAge`>30;
SELECT * FROM `tbl_member` WHERE `memberHP` IS NULL;
UPDATE `tbl_member` SET `memberAge`=42 WHERE `memberID`='p104';
UPDATE `tbl_member` SET `memberAddr`='조선' WHERE `memberID`='p105';
DELETE FROM `tbl_member` WHERE `memberID`='p103';
SELECT * FROM `tbl_member`;

SELECT `productName` FROM `tbl_product`;
SELECT `productName`, `price` FROM `tbl_product`;
SELECT * FROM `tbl_product` WHERE `company`='삼성';
UPDATE `tbl_product` SET
                        `company`='삼성',
                        `makeDate`='2021-01-01'
                        where
                        `productCode`=5;
                        
SELECT * FROM `tbl_product`;                        
