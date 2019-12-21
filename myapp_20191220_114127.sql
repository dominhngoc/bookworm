-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "address" --------------------------------------
CREATE TABLE `address` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`address` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`phoneNumber` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`province` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`id_user` Int( 10 ) UNSIGNED NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 9;
-- -------------------------------------------------------------


-- CREATE TABLE "admin" ----------------------------------------
CREATE TABLE `admin` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`username` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`password` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`level` Int( 11 ) NOT NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `admin_username_unique` UNIQUE( `username` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- CREATE TABLE "bill_details" ---------------------------------
CREATE TABLE `bill_details` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`price` Double( 22, 0 ) NOT NULL,
	`buyPrice` Double( 22, 0 ) NOT NULL,
	`quantity` Int( 11 ) NOT NULL,
	`id_bill` Int( 10 ) UNSIGNED NOT NULL,
	`total` Double( 22, 0 ) NOT NULL,
	`profit` Double( 22, 0 ) NOT NULL,
	`bookName` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 75;
-- -------------------------------------------------------------


-- CREATE TABLE "bills" ----------------------------------------
CREATE TABLE `bills` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`note` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`status` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`id_user` Int( 10 ) UNSIGNED NOT NULL,
	`id_shipper` Int( 10 ) UNSIGNED NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`total` Double( 22, 0 ) NOT NULL,
	`profit` Double( 22, 0 ) NOT NULL,
	`id_address` Int( 10 ) UNSIGNED NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 62;
-- -------------------------------------------------------------


-- CREATE TABLE "book" -----------------------------------------
CREATE TABLE `book` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`author` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`pageNumber` Int( 11 ) NOT NULL,
	`weight` Int( 11 ) NOT NULL,
	`size` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`image` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`description` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`downloads` Int( 11 ) NOT NULL,
	`language` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`type` Int( 11 ) NOT NULL,
	`wordWise` Int( 11 ) NOT NULL,
	`id_price` Int( 10 ) UNSIGNED NOT NULL,
	`id_category` Int( 10 ) UNSIGNED NOT NULL,
	`id_sale` Int( 10 ) UNSIGNED NOT NULL,
	`publicDate` Date NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 30;
-- -------------------------------------------------------------


-- CREATE TABLE "books_link" -----------------------------------
CREATE TABLE `books_link` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
	`typeName` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
	`link` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
	`id_book` Int( 10 ) UNSIGNED NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_vietnamese_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- CREATE TABLE "category" -------------------------------------
CREATE TABLE `category` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`logo` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`name` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`bookNumber` Int( 11 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`id_loai` Int( 10 ) UNSIGNED NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- CREATE TABLE "dcategory" ------------------------------------
CREATE TABLE `dcategory` ( 
	`id` Int( 255 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
	`bookNumber` Int( 255 ) NOT NULL,
	`logo` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_vietnamese_ci
ENGINE = InnoDB
AUTO_INCREMENT = 22;
-- -------------------------------------------------------------


-- CREATE TABLE "defaultkey" -----------------------------------
CREATE TABLE `defaultkey` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`id_type` Int( 11 ) NOT NULL,
	`value` Int( 11 ) NOT NULL,
	`id_user` Int( 11 ) UNSIGNED NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_vietnamese_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "infor" ----------------------------------------
CREATE TABLE `infor` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
	`birthday` Date NOT NULL,
	`gender` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
	`phoneNumber` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
	`logo` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
	`id_user` Int( 11 ) UNSIGNED NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_vietnamese_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------


-- CREATE TABLE "migrations" -----------------------------------
CREATE TABLE `migrations` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`migration` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`batch` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 127;
-- -------------------------------------------------------------


-- CREATE TABLE "password_resets" ------------------------------
CREATE TABLE `password_resets` ( 
	`email` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "price" ----------------------------------------
CREATE TABLE `price` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`buyPrice` Double( 8, 2 ) NOT NULL,
	`sellPrice` Double( 8, 2 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 30;
-- -------------------------------------------------------------


-- CREATE TABLE "promotion" ------------------------------------
CREATE TABLE `promotion` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`banner` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "rank" -----------------------------------------
CREATE TABLE `rank` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`view` Int( 11 ) NOT NULL,
	`downloads` Int( 11 ) NOT NULL,
	`comments` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "sale" -----------------------------------------
CREATE TABLE `sale` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`salePrice` Double( 8, 2 ) NOT NULL,
	`saleName` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`categorySale` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 10;
-- -------------------------------------------------------------


-- CREATE TABLE "shipper" --------------------------------------
CREATE TABLE `shipper` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`email` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`password` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`cmnd` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`licensePlate` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`phoneNumber` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------


-- CREATE TABLE "test" -----------------------------------------
CREATE TABLE `test` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_loai` Int( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_vietnamese_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "user" -----------------------------------------
CREATE TABLE `user` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`email` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`password` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email_verified_at` Timestamp NULL,
	`password` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `users_email_unique` UNIQUE( `email` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- Dump data of "address" ----------------------------------
INSERT INTO `address`(`id`,`name`,`address`,`phoneNumber`,`province`,`id_user`,`created_at`,`updated_at`) VALUES 
( '1', 'ngoc', '52 tran hung dao', '984321412', 'Hồ Chí Minh', '2', NULL, '2019-01-31 09:26:52' ),
( '2', 'Nguyễn viết dũng', 'thôn dương đá xã dương xá gia lâm hà nội', '0988427190', 'Hà nội', '2', NULL, NULL ),
( '3', 'ngoc', '52 tran hung dao', '984321412', 'Hồ Chí Minh', '2', '2019-01-31 08:44:05', '2019-01-31 08:44:05' ),
( '4', '', '52 tran hung dao', '984321412', 'Hồ Chí Minh', '2', '2019-01-31 08:44:25', '2019-01-31 09:23:26' ),
( '5', 'huyen', '098241234', 'ly thuong kiet hai ba trung', 'ha noi', '2', '2019-02-02 18:00:55', '2019-02-02 18:00:55' ),
( '6', 'ngoc', '52 tran hung dao', '984321412', 'Hồ Chí Minh', '4', '2019-03-08 08:17:32', '2019-03-08 08:17:32' ),
( '7', 'DO MINH NGOC', '086785', 'fasf', 'Hưng Yên', '4', '2019-12-20 11:38:29', '2019-12-20 11:38:29' ),
( '8', 'fsa', 'fas', NULL, NULL, '4', '2019-12-20 11:40:36', '2019-12-20 11:40:36' );
-- ---------------------------------------------------------


-- Dump data of "admin" ------------------------------------
INSERT INTO `admin`(`id`,`name`,`username`,`email`,`password`,`level`,`remember_token`,`created_at`,`updated_at`) VALUES 
( '1', 'ngoc', 'ngoc', 'ngoc', 'ngoc', '1', NULL, NULL, NULL ),
( '3', 'ngoc', 'ngoc1995', 'ngoc', 'ngoc', '1', NULL, NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "bill_details" -----------------------------
INSERT INTO `bill_details`(`id`,`price`,`buyPrice`,`quantity`,`id_bill`,`total`,`profit`,`bookName`) VALUES 
( '2', '25000', '15000', '2', '2', '50000', '0', 'Kẻ trộm sách' ),
( '3', '25000', '0', '1', '2', '35000', '0', 'Thép đã tôi thế đấy' ),
( '4', '0', '0', '2', '11', '0', '0', 'The clean coder' ),
( '5', '0', '0', '3', '11', '0', '0', 'Harry potter and philosophi stone' ),
( '6', '0', '0', '2', '12', '0', '0', 'The clean coder' ),
( '7', '0', '0', '3', '12', '0', '0', 'Harry potter and philosophi stone' ),
( '8', '0', '0', '2', '13', '0', '0', 'The clean coder' ),
( '9', '0', '0', '3', '13', '0', '0', 'Harry potter and philosophi stone' ),
( '10', '0', '0', '2', '14', '0', '0', 'The clean coder' ),
( '11', '0', '0', '3', '14', '0', '0', 'Harry potter and philosophi stone' ),
( '12', '0', '0', '2', '15', '0', '0', 'The clean coder' ),
( '13', '0', '0', '3', '15', '0', '0', 'Harry potter and philosophi stone' ),
( '14', '0', '0', '2', '16', '0', '0', 'The clean coder' ),
( '15', '0', '0', '3', '16', '0', '0', 'Harry potter and philosophi stone' ),
( '16', '20000', '15000', '2', '17', '40000', '10000', 'The clean coder' ),
( '17', '20', '15', '3', '17', '60', '15', 'Harry potter and philosophi stone' ),
( '18', '20000', '15000', '2', '18', '40000', '10000', 'The clean coder' ),
( '19', '20', '15', '3', '18', '60', '15', 'Harry potter and philosophi stone' ),
( '20', '20000', '15000', '2', '19', '40000', '10000', 'The clean coder' ),
( '21', '20', '15', '3', '19', '60', '15', 'Harry potter and philosophi stone' ),
( '22', '20000', '15000', '2', '20', '40000', '10000', 'The clean coder' ),
( '23', '20', '15', '3', '20', '60', '15', 'Harry potter and philosophi stone' ),
( '24', '20000', '15000', '2', '21', '40000', '10000', 'The clean coder' ),
( '25', '20', '15', '3', '21', '60', '15', 'Harry potter and philosophi stone' ),
( '26', '20000', '15000', '2', '22', '40000', '10000', 'The clean coder' ),
( '27', '20', '15', '3', '22', '60', '15', 'Harry potter and philosophi stone' ),
( '28', '20000', '15000', '2', '23', '40000', '10000', 'The clean coder' ),
( '29', '20', '15', '3', '23', '60', '15', 'Harry potter and philosophi stone' ),
( '30', '20000', '15000', '2', '24', '40000', '10000', 'The clean coder' ),
( '31', '20', '15', '3', '24', '60', '15', 'Harry potter and philosophi stone' ),
( '32', '20000', '15000', '2', '25', '40000', '10000', 'The clean coder' ),
( '33', '20', '15', '3', '25', '60', '15', 'Harry potter and philosophi stone' ),
( '34', '20000', '15000', '2', '26', '40000', '10000', 'The clean coder' ),
( '35', '20', '15', '3', '26', '60', '15', 'Harry potter and philosophi stone' ),
( '36', '13414', '31431', '3', '26', '40242', '-54051', 'Code completef' ),
( '37', '20000', '15000', '2', '27', '40000', '10000', 'The clean coder' ),
( '38', '20', '15', '3', '27', '60', '15', 'Harry potter and philosophi stone' ),
( '39', '13414', '31431', '3', '27', '40242', '-54051', 'Code completef' ),
( '40', '20000', '15000', '5', '28', '100000', '25000', 'The clean coder' ),
( '41', '20', '15', '5', '28', '100', '25', 'Harry potter and philosophi stone' ),
( '42', '13414', '31431', '5', '28', '67070', '-90085', 'Code completef' ),
( '43', '20000', '15000', '5', '31', '100000', '25000', 'The clean coder' ),
( '44', '20', '15', '5', '31', '100', '25', 'Harry potter and philosophi stone' ),
( '45', '13414', '31431', '5', '31', '67070', '-90085', 'Code completef' ),
( '46', '55', '34', '5', '31', '275', '105', '7 habit of effective people' ),
( '47', '20000', '15000', '5', '33', '100000', '25000', 'The clean coder' ),
( '48', '20', '15', '5', '33', '100', '25', 'Harry potter and philosophi stone' ),
( '49', '13414', '31431', '5', '33', '67070', '-90085', 'Code completef' ),
( '50', '55', '34', '5', '33', '275', '105', '7 habit of effective people' ),
( '51', '20000', '15000', '5', '34', '100000', '25000', 'The clean coder' ),
( '52', '20000', '15000', '5', '35', '100000', '25000', 'The clean coder' ),
( '53', '13414', '31431', '1', '36', '13414', '-18017', 'Code completef' ),
( '54', '22', '15', '2', '36', '44', '14', 'Call of the Dragon' ),
( '55', '20000', '15000', '20', '38', '400000', '100000', 'The clean coder' ),
( '56', '55', '34', '1', '40', '55', '21', '7 habit of effective people' ),
( '57', '13414', '31431', '1', '40', '13414', '-18017', 'Code completef' ),
( '58', '55', '34', '2', '41', '110', '42', '7 habit of effective people' ),
( '59', '125', '4', '1', '42', '125', '121', 'Quẳng gánh lo đi và vui sống' ),
( '60', '13414', '31431', '1', '42', '13414', '-18017', 'Code completef' ),
( '61', '13414', '31431', '1', '43', '13414', '-18017', 'Code completef' ),
( '62', '20000', '15000', '3', '44', '60000', '15000', 'The clean coder' ),
( '63', '20000', '15000', '1', '51', '20000', '5000', 'The clean coder' ),
( '64', '20000', '15000', '5', '52', '100000', '25000', 'The clean coder' ),
( '65', '20000', '15000', '1', '53', '20000', '5000', 'The clean coder' ),
( '66', '12', '4', '3', '54', '36', '24', 'Code dạo ký sự' ),
( '67', '20000', '15000', '3', '55', '60000', '15000', 'The clean coder' ),
( '68', '20000', '15000', '2', '56', '40000', '10000', 'The clean coder' ),
( '69', '13414', '31431', '2', '56', '26828', '-36034', 'Code completef' ),
( '70', '55', '34', '1', '57', '55', '21', '7 habit of effective people' ),
( '71', '13414', '31431', '2', '58', '26828', '-36034', 'Onpiece chap 85' ),
( '72', '20000', '15000', '1', '59', '20000', '5000', 'The clean coder' ),
( '73', '13414', '31431', '2', '60', '26828', '-36034', 'Code completef' ),
( '74', '13414', '31431', '2', '61', '26828', '-36034', 'Code completef' );
-- ---------------------------------------------------------


-- Dump data of "bills" ------------------------------------
INSERT INTO `bills`(`id`,`note`,`status`,`id_user`,`id_shipper`,`created_at`,`updated_at`,`total`,`profit`,`id_address`) VALUES 
( '2', 'giao truoc 8h', 'success', '3', '2', NULL, '2019-03-09 07:07:02', '50000', '10000', '1' ),
( '11', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 17:04:16', '2019-01-30 17:04:16', '0', '0', '1' ),
( '12', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 17:05:47', '2019-01-30 17:05:47', '0', '0', '1' ),
( '13', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 17:06:11', '2019-01-30 17:06:11', '0', '0', '1' ),
( '14', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 17:08:04', '2019-01-30 17:08:04', '0', '0', '1' ),
( '15', 'giao truoc 12h', 'Pendding', '2', '2', '2019-01-30 17:08:54', '2019-03-09 07:07:11', '0', '0', '1' ),
( '16', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 17:10:39', '2019-01-30 17:10:39', '0', '0', '1' ),
( '17', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:40:31', '2019-01-30 18:40:31', '0', '0', '1' ),
( '18', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:41:14', '2019-01-30 18:41:14', '0', '0', '1' ),
( '19', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:43:06', '2019-01-30 18:43:06', '0', '0', '1' ),
( '20', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:44:23', '2019-01-30 18:44:23', '0', '0', '1' ),
( '21', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:44:33', '2019-01-30 18:44:33', '0', '0', '1' ),
( '22', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:46:35', '2019-01-30 18:46:35', '0', '0', '1' ),
( '23', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:46:46', '2019-01-30 18:46:46', '0', '0', '1' ),
( '24', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:47:02', '2019-01-30 18:47:02', '40060', '10015', '1' ),
( '25', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:48:18', '2019-01-30 18:48:18', '40060', '10015', '1' ),
( '26', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:51:52', '2019-01-30 18:51:52', '80302', '-44036', '1' ),
( '27', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:52:21', '2019-01-30 18:52:21', '80302', '-44036', '1' ),
( '28', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:52:27', '2019-01-30 18:52:27', '167170', '-65060', '1' ),
( '29', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:56:41', '2019-01-30 18:56:41', '0', '0', '1' ),
( '30', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:58:15', '2019-01-30 18:58:15', '0', '0', '1' ),
( '31', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:59:12', '2019-01-30 18:59:12', '167445', '-64955', '1' ),
( '32', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:59:32', '2019-01-30 18:59:32', '0', '0', '1' ),
( '33', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 18:59:52', '2019-01-30 18:59:52', '167445', '-64955', '1' ),
( '34', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 19:01:11', '2019-01-30 19:01:11', '100000', '25000', '1' ),
( '35', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 19:04:03', '2019-01-30 19:04:03', '100000', '25000', '1' ),
( '36', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 19:04:55', '2019-01-30 19:04:55', '13458', '-18003', '1' ),
( '37', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 19:05:58', '2019-01-30 19:05:58', '0', '0', '1' ),
( '38', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 19:07:38', '2019-01-30 19:07:38', '400000', '100000', '1' ),
( '39', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 19:10:29', '2019-01-30 19:10:29', '0', '0', '1' ),
( '40', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 21:04:36', '2019-01-30 21:04:36', '13469', '-17996', '1' ),
( '41', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-30 22:41:09', '2019-01-30 22:41:09', '110', '42', '1' ),
( '42', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-31 18:57:26', '2019-01-31 18:57:26', '13539', '-17896', '1' ),
( '43', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-31 19:10:38', '2019-01-31 19:10:38', '13414', '-18017', '2' ),
( '44', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-31 19:11:48', '2019-01-31 19:11:48', '60000', '15000', '1' ),
( '50', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-31 19:21:37', '2019-01-31 19:21:37', '0', '0', '1' ),
( '51', 'giao truoc 12h', 'Pendding', '2', '0', '2019-01-31 19:22:18', '2019-01-31 19:22:18', '20000', '5000', '1' ),
( '52', 'giao truoc 12h', 'Pendding', '2', '0', '2019-02-02 17:59:58', '2019-02-02 17:59:59', '100000', '25000', '2' ),
( '53', 'giao truoc 12h', 'Pendding', '2', '0', '2019-02-03 23:17:34', '2019-02-03 23:17:34', '20000', '5000', '1' ),
( '54', 'giao truoc 12h', 'Pendding', '2', '0', '2019-02-04 06:43:13', '2019-02-04 06:43:13', '36', '24', '1' ),
( '55', 'giao truoc 12h', 'Pendding', '2', '0', '2019-02-11 14:19:03', '2019-02-11 14:19:03', '60000', '15000', '3' ),
( '56', 'giao truoc 12h', 'Pendding', '2', '0', '2019-03-08 07:41:52', '2019-03-08 07:41:52', '66828', '-26034', '1' ),
( '57', 'giao truoc 12h', 'Pendding', '2', '0', '2019-03-08 08:17:50', '2019-03-08 08:17:50', '55', '21', '2' ),
( '58', 'giao truoc 12h', 'Pendding', '2', '0', '2019-03-08 08:19:20', '2019-03-08 08:19:20', '26828', '-36034', '1' ),
( '59', 'giao truoc 12h', 'Pendding', '2', '0', '2019-03-08 08:43:45', '2019-03-08 08:43:45', '20000', '5000', '1' ),
( '60', 'giao truoc 12h', 'Pendding', '2', '0', '2019-03-08 08:48:01', '2019-03-08 08:48:01', '26828', '-36034', '1' ),
( '61', 'giao truoc 12h', 'Pendding', '2', '0', '2019-05-04 14:57:31', '2019-05-04 14:57:31', '26828', '-36034', '1' );
-- ---------------------------------------------------------


-- Dump data of "book" -------------------------------------
INSERT INTO `book`(`id`,`name`,`author`,`pageNumber`,`weight`,`size`,`image`,`description`,`downloads`,`language`,`type`,`wordWise`,`id_price`,`id_category`,`id_sale`,`publicDate`,`created_at`,`updated_at`) VALUES 
( '1', 'The clean coder', 'Robert C.Martin Series', '200', '50', '20*50', '5154eSTKUxL._SX382_BO1,204,203,200_.jpg', '<p>In&nbsp;<em><strong>The Clean Coder: A Code of Conduct for Professional Programmers,</strong>&nbsp;</em>legendary software expert Robert C. Martin introduces the disciplines, techniques, tools, and practices of true software craftsmanship. This book is packed with practical advice&ndash;about everything from estimating and coding to refactoring and testing. It covers much more than technique: It is about attitude. Martin shows how to approach software development with honor, self-respect, and pride; work well and work clean; communicate and estimate faithfully; face difficult decisions with clarity and honesty; and understand that deep knowledge comes with a responsibility to act.</p>', '0', 'Tiếng việt', '0', '0', '1', '1', '1', '0000-00-00', NULL, '2019-01-30 06:00:22' ),
( '2', 'Code completef', 'Steve McConnell', '255', '25', '22', '51FUYfErOXL._SX408_BO1,204,203,200_.jpg', '<p>good</p>', '0', 'Tiếng anh', '0', '0', '2', '1', '1', '0000-00-00', '2018-12-23 22:52:15', '2018-12-30 18:26:27' ),
( '3', 'Onpiece chap 85', 'orda', '255', '25', '22', 'op85.jpg', '<p>fafa</p>', '0', 'Tiếng việt', '1', '1', '3', '1', '1', '0000-00-00', '2018-12-23 22:54:23', '2018-12-23 22:54:23' ),
( '5', 'Harry potter and philosophi stone', 'Jk.Rowling', '1000', '12', '25', '516dAYHDdKL._SX319_BO1,204,203,200_.jpg', '<p>good</p>', '0', 'Tiếng anh', '1', '1', '5', '1', '1', '0000-00-00', '2018-12-30 16:33:55', '2018-12-30 16:33:55' ),
( '6', 'Call of the Dragon', 'Jessica Drake', '255', '12', '12', '51mgSmrJ7XL._SY346_.jpg', '<p>good</p>', '0', 'Tiếng việt', '1', '1', '6', '1', '1', '0000-00-00', '2018-12-30 16:34:24', '2018-12-30 16:34:24' ),
( '7', 'C# 7.1 and .net core 2.0-Modern Cross-Platform Development', 'Mark j.Price', '555', '12', '12', '51Dzl2ZEnkL._SX404_BO1,204,203,200_.jpg', '<p>best</p>', '0', 'Tiếng việt', '1', '1', '7', '1', '1', '0000-00-00', '2018-12-30 16:35:16', '2018-12-30 16:35:16' ),
( '8', 'Clean Architecture', 'Robert C.Martin Series', '450', '23', '12', '41BjtnvIUQL._SX382_BO1,204,203,200_.jpg', '<p>good</p>', '0', 'Tiếng việt', '1', '1', '8', '1', '1', '0000-00-00', '2018-12-30 16:35:52', '2018-12-30 16:35:52' ),
( '9', 'Onepiece chap 86', 'Eichiro Oda', '250', '11', '12', '61yH6Reo7FL._SY346_.jpg', '<p>good</p>', '0', 'Tiếng việt', '1', '1', '9', '1', '1', '0000-00-00', '2018-12-30 16:36:27', '2018-12-30 16:36:27' ),
( '10', 'Harry potter and Sorcerers Stone', 'Jk.Rowling', '256', '12', '12', '51U6bQbA8oL._SY346_.jpg', '<p>good</p>', '0', 'Tiếng việt', '1', '1', '10', '1', '1', '0000-00-00', '2018-12-30 16:37:14', '2018-12-30 16:37:14' ),
( '11', 'Think and grow rich', 'napoleon hill', '1', '3', '2', '51H8cXlGepL._SX320_BO1,204,203,200_.jpg', '<p>best</p>', '0', 'Tiếng việt', '1', '1', '11', '1', '1', '0000-00-00', '2018-12-30 16:38:45', '2018-12-30 16:38:45' ),
( '12', 'book thief', 'markus zusak', '241', '23', '124', '51dEuPZMS-L._SX322_BO1,204,203,200_.jpg', '<p>good</p>', '0', 'Tiếng việt', '1', '1', '12', '1', '1', '0000-00-00', '2019-01-03 21:53:34', '2019-01-03 21:53:34' ),
( '13', 'Be Prepared', 'vera borsgol', '214', '12', '12', '61znRNLLWqL._SY346_.jpg', '<p>good</p>', '0', 'Tiếng việt', '1', '1', '13', '1', '1', '0000-00-00', '2019-01-03 21:54:06', '2019-01-03 21:54:06' ),
( '14', '7 habit of effective people', 'stephen r.covey', '12', '12', '123', '81jRm4KF2fL._AC_UL270_SR178,270_.jpg', '<p>ggg</p>', '0', 'Tiếng việt', '1', '1', '14', '1', '1', '0000-00-00', '2019-01-03 21:54:43', '2019-01-03 21:54:43' ),
( '15', 'Mind map', 'tony buzzan', '1', '3', '2', '510vnU5zvIL._AC_UL270_SR190,270_.jpg', '<p>6</p>', '0', 'Tiếng việt', '1', '1', '15', '1', '1', '0000-00-00', '2019-01-03 21:55:03', '2019-01-03 21:55:03' ),
( '16', 'The witch boy', 'molly knox', '12', '4', '3', '81WeVVNa-kL.__BG0,0,0,0_FMpng_AC_UL320_SR214,320_.jpg.png', '<p>7</p>', '0', 'Tiếng việt', '1', '1', '16', '1', '1', '0000-00-00', '2019-01-03 21:55:35', '2019-01-03 21:55:35' ),
( '17', 'A mind for number', 'barbaba oakley', '1', '3', '2', '81mVZQLTTlL._AC_UL270_SR180,270_.jpg', '<p>6</p>', '0', 'Tiếng việt', '1', '1', '17', '1', '1', '0000-00-00', '2019-01-03 21:55:57', '2019-01-03 21:55:57' ),
( '18', 'Crime traveler', 'brainw ashed', '1', '3', '2', '51m6LyY12DL._SY346_.jpg', '<p>6</p>', '0', 'Tiếng việt', '1', '1', '18', '1', '1', '0000-00-00', '2019-01-03 21:56:24', '2019-01-03 21:56:24' ),
( '19', 'The last musketeer', 'double cross', '1', '3', '2', '51j0P6DnFLL._SY346_.jpg', '<p>6</p>', '0', 'Tiếng việt', '1', '1', '19', '1', '1', '0000-00-00', '2019-01-03 21:56:42', '2019-01-03 21:56:42' ),
( '20', 'Thép đã tôi thế đấy', 'Nikolai copski', '1', '3', '2', '38c09abb2718a17d455983070e2e42a8c113067419094de34c95e395a.301x439.w.b.jpg', '<p>6</p>', '0', 'Tiếng việt', '1', '1', '20', '1', '1', '0000-00-00', '2019-01-03 22:35:35', '2019-01-03 22:35:35' ),
( '21', 'Thế giới phẳng', 'thomas lffriendman', '1', '3', '2', 'sach-the-gioi-phang.jpg', '<p>a</p>', '0', 'Tiếng việt', '1', '1', '21', '1', '1', '0000-00-00', '2019-01-03 22:36:16', '2019-01-03 22:36:16' ),
( '22', 'Nếu chỉ còn một ngày để sống', 'Nicola yoon', '1', '3', '2', 'bia-cuon-Neu-chi-con-mot-ng.jpg', '<p>a</p>', '0', 'Tiếng việt', '1', '1', '22', '1', '1', '0000-00-00', '2019-01-03 22:36:45', '2019-01-03 22:36:45' ),
( '23', 'Kĩ thuật lập trình C', 'Giáo trình', '1', '3', '2', 'giao-trinh-ky-thuat-lap-trinh.jpg', '<p>a</p>', '0', 'Tiếng việt', '1', '1', '23', '1', '1', '0000-00-00', '2019-01-03 22:37:06', '2019-01-03 22:37:06' ),
( '24', 'Đi tìm lẽ sống', 'Viktor e .frankl', '1', '3', '2', 'sach-di-tim-le-song.jpg', '<p>6</p>', '0', 'Tiếng việt', '1', '1', '24', '1', '1', '0000-00-00', '2019-01-03 22:37:29', '2019-01-03 22:37:29' ),
( '25', 'Code dạo ký sự', 'phạm huy hoàng', '1', '3', '2', 'image_145411.jpg', '<p>a</p>', '0', 'Tiếng việt', '1', '1', '25', '1', '1', '0000-00-00', '2019-01-03 22:37:49', '2019-01-03 22:37:49' ),
( '26', 'Quẳng gánh lo đi và vui sống', 'Dale carnegie', '1', '3', '2', 'Quang-ganh-lo-di-va-vui-song.jpg', '<p>a</p>', '0', 'Tiếng việt', '1', '1', '26', '1', '1', '0000-00-00', '2019-01-03 22:38:18', '2019-01-03 22:38:18' ),
( '27', 'Bố già', 'Mario puzo', '1', '3', '2', 'bo-gia.gif', '<p>a</p>', '0', 'Tiếng việt', '1', '1', '27', '1', '1', '0000-00-00', '2019-01-03 22:38:41', '2019-01-03 22:38:41' ),
( '28', 'One piece 61', 'odra', '1', '3', '2', 'One_Piece,_Volume_61_Cover_(Japanese).jpg', '<p>1</p>', '0', 'Tiếng việt', '1', '1', '28', '1', '1', '0000-00-00', '2019-01-03 22:39:02', '2019-01-03 22:39:02' ),
( '29', 'how to win friend and influence', 'dale carnegie', '1', '3', '2', '41QwNC5ugjL._SY346_.jpg', '<p>1</p>', '0', 'Tiếng việt', '1', '1', '29', '1', '1', '0000-00-00', '2019-01-03 22:39:41', '2019-01-03 22:39:41' );
-- ---------------------------------------------------------


-- Dump data of "books_link" -------------------------------
INSERT INTO `books_link`(`id`,`name`,`typeName`,`link`,`id_book`) VALUES 
( '1', 'bo gia', 'epub', 'Sachvui.Com-bo-gia.epub', '27' ),
( '2', 'bo gia', 'mobi
', 'Sachvui.Com-bo-gia.mobi
', '27' ),
( '3', 'bo gia', 'pdf
', 'Sachvui.Com-bo-gia.pdf', '27' );
-- ---------------------------------------------------------


-- Dump data of "category" ---------------------------------
INSERT INTO `category`(`id`,`logo`,`name`,`bookNumber`,`created_at`,`updated_at`,`id_loai`) VALUES 
( '1', '<i class="fab fa-acquisitions-incorporated"></i>', 'Làm giàu', '28', NULL, '2019-12-20 11:26:45', '1' ),
( '3', '<i class="fas fa-book-dead"></i>', 'Giao tiếp', '0', '2019-01-05 13:02:08', '2019-12-20 11:26:45', '1' );
-- ---------------------------------------------------------


-- Dump data of "dcategory" --------------------------------
INSERT INTO `dcategory`(`id`,`name`,`bookNumber`,`logo`) VALUES 
( '1', 'Tâm lý và kỹ năng', '0', '<i class="fab fa-accusoft"></i>' ),
( '6', 'Tiểu thuyết', '0', '<i class="fab fa-wolf-pack-battalion"></i>' ),
( '11', 'Truyện tranh', '0', '<i class="fas fa-anchor"></i>' ),
( '12', 'Học ngoại ngữ', '0', '<i class="fas fa-language"></i>' ),
( '13', 'Kinh doanh', '0', '<i class="far fa-building"></i>' ),
( '14', 'Giáo dục', '0', '<i class="fas fa-university"></i>' ),
( '15', 'Trẻ em', '0', '<i class="fas fa-child"></i>' ),
( '16', 'Khoa học và công nghệ', '0', '<i class="fas fa-atom"></i>' ),
( '17', 'Phát triển bản thân', '0', '<i class="fas fa-user-graduate"></i>' ),
( '18', 'Nấu ăn', '0', '<i class="fas fa-cookie"></i>' ),
( '21', 'Y tế', '0', '<i class="fas fa-notes-medical"></i>' );
-- ---------------------------------------------------------


-- Dump data of "defaultkey" -------------------------------
INSERT INTO `defaultkey`(`id`,`id_type`,`value`,`id_user`) VALUES 
( '1', '1', '1', '2' );
-- ---------------------------------------------------------


-- Dump data of "infor" ------------------------------------
INSERT INTO `infor`(`id`,`name`,`birthday`,`gender`,`phoneNumber`,`email`,`logo`,`id_user`) VALUES 
( '1', 'ngoc', '0000-00-00', 'man', '0988929018', 'dominhngoc1995hy@gmail.com', 'no', '2' ),
( '2', 'do minh ngoc', '2019-02-13', 'man', '0988929018', 'dominhngoc1995hy@gmail.com', 'no', '4' );
-- ---------------------------------------------------------


-- Dump data of "migrations" -------------------------------
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES 
( '112', '2014_10_12_000000_create_users_table', '1' ),
( '113', '2014_10_12_100000_create_password_resets_table', '1' ),
( '114', '2018_12_19_051621_create_sale', '1' ),
( '115', '2018_12_19_051649_create_price', '1' ),
( '116', '2018_12_19_051941_create_category', '1' ),
( '117', '2018_12_19_052012_create_shipper', '1' ),
( '118', '2018_12_19_052030_create_customer', '1' ),
( '119', '2018_12_19_052048_create_book', '1' ),
( '120', '2018_12_19_052110_create_bills', '1' ),
( '121', '2018_12_19_052223_create_bill_details', '1' ),
( '122', '2018_12_19_061238_create_promotion', '1' ),
( '123', '2018_12_20_045532_add_rank', '1' ),
( '124', '2018_12_22_043231_create_user', '1' ),
( '125', '2018_12_24_061350_create_admin', '2' ),
( '126', '2018_12_24_214731_admin', '3' );
-- ---------------------------------------------------------


-- Dump data of "password_resets" --------------------------
-- ---------------------------------------------------------


-- Dump data of "price" ------------------------------------
INSERT INTO `price`(`id`,`buyPrice`,`sellPrice`,`created_at`,`updated_at`) VALUES 
( '1', '15000.00', '20000.00', NULL, NULL ),
( '2', '31431.00', '13414.00', '2018-12-23 22:52:15', '2018-12-23 22:52:15' ),
( '3', '31431.00', '13414.00', '2018-12-23 22:54:23', '2018-12-23 22:54:23' ),
( '4', '30.00', '35.00', '2018-12-30 16:24:18', '2018-12-30 16:24:18' ),
( '5', '15.00', '20.00', '2018-12-30 16:33:55', '2018-12-30 16:33:55' ),
( '6', '15.00', '22.00', '2018-12-30 16:34:24', '2018-12-30 16:34:24' ),
( '7', '35.00', '55.00', '2018-12-30 16:35:16', '2018-12-30 16:35:16' ),
( '8', '44.00', '60.00', '2018-12-30 16:35:52', '2018-12-30 16:35:52' ),
( '9', '5.00', '10.00', '2018-12-30 16:36:27', '2018-12-30 16:36:27' ),
( '10', '23.00', '44.00', '2018-12-30 16:37:14', '2018-12-30 16:37:14' ),
( '11', '35.00', '40.00', '2018-12-30 16:38:45', '2018-12-30 16:38:45' ),
( '12', '124313.00', '125000.00', '2019-01-03 21:53:34', '2019-01-03 21:53:34' ),
( '13', '423.00', '423.00', '2019-01-03 21:54:06', '2019-01-03 21:54:06' ),
( '14', '34.00', '55.00', '2019-01-03 21:54:43', '2019-01-03 21:54:43' ),
( '15', '4.00', '5.00', '2019-01-03 21:55:03', '2019-01-03 21:55:03' ),
( '16', '5.00', '6.00', '2019-01-03 21:55:35', '2019-01-03 21:55:35' ),
( '17', '4.00', '5.00', '2019-01-03 21:55:57', '2019-01-03 21:55:57' ),
( '18', '4.00', '5.00', '2019-01-03 21:56:24', '2019-01-03 21:56:24' ),
( '19', '4.00', '5.00', '2019-01-03 21:56:42', '2019-01-03 21:56:42' ),
( '20', '4.00', '5.00', '2019-01-03 22:35:35', '2019-01-03 22:35:35' ),
( '21', '12.00', '200.00', '2019-01-03 22:36:16', '2019-01-03 22:36:16' ),
( '22', '4.00', '125.00', '2019-01-03 22:36:45', '2019-01-03 22:36:45' ),
( '23', '4.00', '55.00', '2019-01-03 22:37:06', '2019-01-03 22:37:06' ),
( '24', '4.00', '120.00', '2019-01-03 22:37:29', '2019-01-03 22:37:29' ),
( '25', '4.00', '12.00', '2019-01-03 22:37:49', '2019-01-03 22:37:49' ),
( '26', '4.00', '125.00', '2019-01-03 22:38:18', '2019-01-03 22:38:18' ),
( '27', '4.00', '12.00', '2019-01-03 22:38:41', '2019-01-03 22:38:41' ),
( '28', '4.00', '5.00', '2019-01-03 22:39:02', '2019-01-03 22:39:02' ),
( '29', '4.00', '5.00', '2019-01-03 22:39:41', '2019-01-03 22:39:41' );
-- ---------------------------------------------------------


-- Dump data of "promotion" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "rank" -------------------------------------
INSERT INTO `rank`(`id`,`view`,`downloads`,`comments`) VALUES 
( '1', '1', '1', '1' );
-- ---------------------------------------------------------


-- Dump data of "sale" -------------------------------------
INSERT INTO `sale`(`id`,`salePrice`,`saleName`,`created_at`,`updated_at`,`categorySale`) VALUES 
( '1', '0.00', 'normal', NULL, NULL, '' ),
( '6', '135.00', 'hay', '2018-12-23 10:42:41', '2018-12-23 10:42:41', 'Self-Helf' ),
( '7', '135.00', 'hay', '2018-12-23 10:43:38', '2018-12-23 10:43:38', 'Self-Helf' ),
( '8', '1.00', '124', '2018-12-23 10:44:26', '2018-12-23 10:44:26', 'Self-Helf' ),
( '9', '2.00', '4321', '2018-12-23 10:44:58', '2018-12-23 10:44:58', 'Self-Helf' );
-- ---------------------------------------------------------


-- Dump data of "shipper" ----------------------------------
INSERT INTO `shipper`(`id`,`name`,`email`,`password`,`cmnd`,`licensePlate`,`phoneNumber`,`remember_token`,`created_at`,`updated_at`) VALUES 
( '1', 'Do Minh Ngoc', 'man', 'ngoc1995', '013481133', 'h5-n1', '0988929018', NULL, NULL, NULL ),
( '2', 'afsda', 'fasfa', 'faf', 'ff', 'asfs', 'fasf', NULL, NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "test" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "user" -------------------------------------
INSERT INTO `user`(`id`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
( '2', 'dominhngoc1995@gmail.com', '1', NULL, NULL, NULL ),
( '3', 'man', 'ngoc1995', NULL, NULL, NULL ),
( '4', 'ngoc', 'ngoc', NULL, NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
( '1', 'ngoc', 'dominhngoc1995@gmail.com', NULL, '1', NULL, NULL, NULL ),
( '2', 'ngoc', '', NULL, '1', NULL, NULL, NULL ),
( '3', 'ngoc', 'ngoc', NULL, 'ngoc', NULL, NULL, NULL );
-- ---------------------------------------------------------


-- CREATE INDEX "id_user" --------------------------------------
CREATE INDEX `id_user` USING BTREE ON `address`( `id_user` );
-- -------------------------------------------------------------


-- CREATE INDEX "bill_details_id_bill_foreign" -----------------
CREATE INDEX `bill_details_id_bill_foreign` USING BTREE ON `bill_details`( `id_bill` );
-- -------------------------------------------------------------


-- CREATE INDEX "bills_id_shipper_foreign" ---------------------
CREATE INDEX `bills_id_shipper_foreign` USING BTREE ON `bills`( `id_shipper` );
-- -------------------------------------------------------------


-- CREATE INDEX "id_address" -----------------------------------
CREATE INDEX `id_address` USING BTREE ON `bills`( `id_address` );
-- -------------------------------------------------------------


-- CREATE INDEX "id_user" --------------------------------------
CREATE INDEX `id_user` USING BTREE ON `bills`( `id_user` );
-- -------------------------------------------------------------


-- CREATE INDEX "book_id_category_foreign" ---------------------
CREATE INDEX `book_id_category_foreign` USING BTREE ON `book`( `id_category` );
-- -------------------------------------------------------------


-- CREATE INDEX "book_id_price_foreign" ------------------------
CREATE INDEX `book_id_price_foreign` USING BTREE ON `book`( `id_price` );
-- -------------------------------------------------------------


-- CREATE INDEX "book_id_sale_foreign" -------------------------
CREATE INDEX `book_id_sale_foreign` USING BTREE ON `book`( `id_sale` );
-- -------------------------------------------------------------


-- CREATE INDEX "id_book" --------------------------------------
CREATE INDEX `id_book` USING BTREE ON `books_link`( `id_book` );
-- -------------------------------------------------------------


-- CREATE INDEX "id_loai" --------------------------------------
CREATE INDEX `id_loai` USING BTREE ON `category`( `id_loai` );
-- -------------------------------------------------------------


-- CREATE INDEX "id_user" --------------------------------------
CREATE INDEX `id_user` USING BTREE ON `defaultkey`( `id_user` );
-- -------------------------------------------------------------


-- CREATE INDEX "id_user" --------------------------------------
CREATE INDEX `id_user` USING BTREE ON `infor`( `id_user` );
-- -------------------------------------------------------------


-- CREATE INDEX "password_resets_email_index" ------------------
CREATE INDEX `password_resets_email_index` USING BTREE ON `password_resets`( `email` );
-- -------------------------------------------------------------


-- CREATE LINK "address_ibfk_1" --------------------------------
ALTER TABLE `address`
	ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY ( `id_user` )
	REFERENCES `user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "bill_details_id_bill_foreign" ------------------
ALTER TABLE `bill_details`
	ADD CONSTRAINT `bill_details_id_bill_foreign` FOREIGN KEY ( `id_bill` )
	REFERENCES `bills`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "bills_ibfk_1" ----------------------------------
ALTER TABLE `bills`
	ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY ( `id_user` )
	REFERENCES `user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "bills_ibfk_2" ----------------------------------
ALTER TABLE `bills`
	ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY ( `id_address` )
	REFERENCES `address`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "book_id_category_foreign" ----------------------
ALTER TABLE `book`
	ADD CONSTRAINT `book_id_category_foreign` FOREIGN KEY ( `id_category` )
	REFERENCES `category`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "book_id_price_foreign" -------------------------
ALTER TABLE `book`
	ADD CONSTRAINT `book_id_price_foreign` FOREIGN KEY ( `id_price` )
	REFERENCES `price`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "book_id_sale_foreign" --------------------------
ALTER TABLE `book`
	ADD CONSTRAINT `book_id_sale_foreign` FOREIGN KEY ( `id_sale` )
	REFERENCES `sale`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "books_link_ibfk_1" -----------------------------
ALTER TABLE `books_link`
	ADD CONSTRAINT `books_link_ibfk_1` FOREIGN KEY ( `id_book` )
	REFERENCES `book`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "category_ibfk_1" -------------------------------
ALTER TABLE `category`
	ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY ( `id_loai` )
	REFERENCES `dcategory`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "defaultkey_ibfk_1" -----------------------------
ALTER TABLE `defaultkey`
	ADD CONSTRAINT `defaultkey_ibfk_1` FOREIGN KEY ( `id_user` )
	REFERENCES `user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "infor_ibfk_1" ----------------------------------
ALTER TABLE `infor`
	ADD CONSTRAINT `infor_ibfk_1` FOREIGN KEY ( `id_user` )
	REFERENCES `user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


