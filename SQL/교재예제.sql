#날짜 : 2022/06/15
#이름 : 이서희
#내용 : 

#테이블 생성
CREATE TABLE `sample21`(
`no` INT AUTO_INCREMENT PRIMARY key,
`name` VARCHAR(10),
`birthday` CHAR(10),
`address` VARCHAR(100)
);


INSERT into `sample21` (`name`,`birthday`,`address`) VALUES ('박준용', '1976-10-18', '대구광역시 수성구');
INSERT into `sample21` (`name`,`address`) VALUES ('김재진','대구광역시 동구');
INSERT into `sample21` (`name`,`address`) VALUES ( '홍길동', '서울특별시 마포구');

DROP TABLE `sample21`;
 
#p53
SELECT * FROM `sample21`;
#p62
DESC `sample21`;
#p66
SELECT * FROM `sample21`;
SELECT `no`,`name` FROM `sample21`;
#p68
SELECT * FROM `sample21` WHERE `no`=2;
#p70
SELECT * FROM `sample21`;
SELECT * FROM `sample21` WHERE `no`<>2;
#p71
SELECT * FROM `sample21`;
SELECT * FROM `sample21` WHERE `name`='박준용';
#p72
SELECT * FROM `sample21`;
SELECT * FROM `sample21` WHERE `birthday`=NULL;
#p73
SELECT * FROM `sample21` WHERE `birthday` IS NULL;
#p76
CREATE TABLE `sample24` (
`no` INT AUTO_INCREMENT PRIMARY KEY,
`a` INT,
`b` INT,
`c` INT
);

INSERT INTO `sample24` (`a`,`b`,`c`) VALUES(1,0,0);
INSERT INTO `sample24` (`a`,`b`,`c`) VALUES(0,1,0);
INSERT INTO `sample24` (`a`,`b`,`c`) VALUES(0,0,1);
INSERT INTO `sample24` (`a`,`b`,`c`) VALUES(2,2,0);
INSERT INTO `sample24` (`a`,`b`,`c`) VALUES(0,2,2);
 #p77
 SELECT * FROM `sample24`;
 SELECT * FROM `sample24` WHERE `a`<>0 AND `b`<>0;
 #p78
 SELECT * FROM `sample24`;
 SELECT * FROM `sample24` WHERE `a`<>0 OR `b`<>0;
 #p80
 SELECT * FROM `sample24`;
 SELECT * FROM `sample24` WHERE `a`=1 OR `a`=2 AND `b`=1 OR `b`=2;
 SELECT * FROM `sample24` WHERE (`a`=1 OR `a`=2) AND (`b`=1 OR `b`=2);
 #p82
 SELECT * FROM `sample24`;
 SELECT * FROM `sample24` WHERE NOT (`a`<>0 OR `b`<>0);
 #p85
 CREATE TABLE `sample25`(
 `no` INT AUTO_INCREMENT PRIMARY KEY,
 `text` VARCHAR(225)
 );
 
 INSERT INTO `sample25`SET `text` = 'SQL은 RDBMS를 조작하는 언어이다';
 INSERT INTO `sample25`SET `text` = 'LIKE에서는 메타문자%와_를 사용할 수 있다';
 INSERT INTO `sample25`SET `text` = 'LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다';
 
 #P85
 SELECT * FROM `SAMPLE25`;
 SELECT * FROM `sample25` WHERE `text` LIKE 'SQL%';
 #p86
 SELECT * FROM `sample25` WHERE `text` LIKE '%SQL%';
 #p88
 SELECT * FROM `sample25` WHERE `text` LIKE '%\%%';
 
 #p95
 CREATE TABLE `sample31` (
 `name` VARCHAR(10),
 `age` INT,
 `address` VARCHAR(225)
 );
 
INSERT INTO `sample31` VALUES ('A씨', 36, '대구광역시 중구');
INSERT INTO `sample31` VALUES ('B씨', 18, '부산광역시 연제구');
INSERT INTO `sample31` VALUES ('C씨', 25, '서울특별시 중구');

SELECT * FROM `sample31`;
SELECT * FROM `sample31` ORDER BY `age`;

#p96
SELECT * FROM `sample31` ORDER BY `address`;
#p98
SELECT * FROM `sample31` ORDER BY `age`DESC;
SELECT * FROM `sample31` ORDER BY `age`ASC;
#p100

CREATE TABLE `sample311` (
`a` VARCHAR(13),
`b` INTeger
);



INSERT INTO `sample311` VALUES(1, 1);
INSERT INTO `sample311` VALUES(2, 2);
INSERT INTO `sample311` VALUES(10, 10);
INSERT INTO `sample311` VALUES(11, 11);

SELECT * FROM `sample311`;
SELECT * FROM `sample311` ORDER BY `a`;
SELECT * FROM `sample311` ORDER BY `b`;

#p103
CREATE TABLE `sample32` (
`a` INTEGER,
`b` INTEGER
);

INSERT INTO `sample32` VALUES (1, 1);
INSERT INTO `sample32` VALUES (2, 1);
INSERT INTO `sample32` VALUES (2, 2);
INSERT INTO `sample32` VALUES (1, 3);
INSERT INTO `sample32` VALUES (1, 2);

SELECT * FROM `sample32`;

SELECT * FROM `sample32`
ORDER BY `a`, `b` asc;

SELECT * FROM `sample32`
ORDER BY `b`,`a`;
#p106
SELECT * FROM `sample32` 
ORDER BY `a` ASC, `b` DESC;

#p109
 CREATE TABLE `sample33` (
 `no` INT);
 
 INSERT INTO `sample33` SET `no` = 1;
 INSERT INTO `sample33` SET `no` = 2;
 INSERT INTO `sample33` SET `no` = 3;
 INSERT INTO `sample33` SET `no` = 4;
 INSERT INTO `sample33` SET `no` = 5;
 INSERT INTO `sample33` SET `no` = 6;
 INSERT INTO `sample33` SET `no` = 7;
 
 SELECT *FROM `sample33`;
SELECT * FROM `sample33`LIMIT 3;
SELECT * FROM `sample33` 
ORDER BY `no` DESC
LIMIT 3;

#p113
SELECT * FROM `sample33` 
LIMIT 3
OFFSET 0; 

SELECT * FROM `sample33`
LIMIT 3
OFFSET 3;

SELECT * FROM `sample33` 
LIMIT 3
OFFSET 6

#p117
CREATE TABLE `sample34` (
`no` INT AUTO_INCREMENT PRIMARY key,
`price` INT,
`quantity` INT
);


INSERT INTO `sample34`(`price`, `quantity`) VALUES(100, 10); 
INSERT INTO `sample34`(`price`, `quantity`) VALUES(230, 24);
INSERT INTO `sample34`(`price`, `quantity`) VALUES(1980, 1);

SELECT * FROM `sample34`;
SELECT *, price*quantity FROM `sample34`;
SELECT *, price*quantity AS `amount` FROM `sample34`;