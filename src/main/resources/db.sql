CREATE DATABASE IF NOT EXISTS `accounts`;
USE `accounts`;
--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id`   INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45)      DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1, 'ROLE_USER');
INSERT INTO `role` VALUES (2, 'ROLE_ADMIN');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id`        INT(11) NOT NULL AUTO_INCREMENT,
  `username`  VARCHAR(255)     DEFAULT NULL,
  `email`     VARCHAR(255)     DEFAULT NULL,
  `telephone` VARCHAR(255)     DEFAULT NULL,
  `password`  VARCHAR(255)     DEFAULT NULL,

  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` INT(11) NOT NULL,
  `role_id` INT(11) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  KEY `fk_user_role_roleid_idx` (`role_id`),
  CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


DROP TABLE IF EXISTS `user_mail`;
CREATE TABLE `user_mail` (
  id              INT(11) NOT NULL AUTO_INCREMENT,
  publicationDate VARCHAR(255),
  title           VARCHAR(255),
  sendMessage     VARCHAR(4000),
  PRIMARY KEY (id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


DROP TABLE IF EXISTS `LessonPlan`;

CREATE TABLE `LessonPlan` (
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `dateLesson`  DATE,
  `beginLesson` VARCHAR(255),
  `endLesson`   VARCHAR(255),
  `lessonName`  VARCHAR(255),
  `teacher`     VARCHAR(255),
  `classRoom`   VARCHAR(255),
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
