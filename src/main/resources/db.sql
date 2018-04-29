DROP DATABASE `accounts`;
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
  `name`      VARCHAR(255)     DEFAULT NULL,
  `surname`   VARCHAR(255)     DEFAULT NULL,
  `birthday`  VARCHAR(255)     DEFAULT NULL,
  `email`     VARCHAR(255)     DEFAULT NULL,
  `telephone` VARCHAR(255)     DEFAULT NULL,
  `address`   VARCHAR(255)     DEFAULT NULL,
  `password`  VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;

INSERT INTO `user` VALUE (1,
                          'admin',
                          'Serhio',
                          'Shvets',
                          '1990-01-01',
                          'admin@gmail.com',
                          '555-555',
                          'UK, REARQUHAR, 15 Bootham Terrace',
                          '$2a$04$M/N0Ls42asrwjxcMwjZFbOTKmZyhrdW.lZ8XjjgXf.EYad3ibO3qK');

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

INSERT INTO `user_role` VALUE (1, 1);
INSERT INTO `user_role` VALUE (1, 2);

DROP TABLE IF EXISTS `user_mail`;
CREATE TABLE `user_mail` (
  id              INT(11) NOT NULL AUTO_INCREMENT,
  publicationDate VARCHAR(255),
  title           VARCHAR(255),
  sendMessage     VARCHAR(4000),
  subMessage      VARCHAR(255),
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

DROP TABLE IF EXISTS `Lesson`;

CREATE TABLE `Lesson` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lessonName` VARCHAR(255),
  `teacherName` VARCHAR(255),
  `estimateForm` VARCHAR(255),
  `ectsPoint` INT,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


INSERT INTO `Lesson` VALUE (1,'Algebra liniowa z geometrią','dr Andrzej Braun', 'Exam', 5);


DROP TABLE IF EXISTS `Estimate`;

CREATE TABLE `Estimate` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idStudent` INT NOT NULL,
  `idLesson` INT NOT NULL,
  `estimate` VARCHAR(255),
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

SELECT * FROM user;