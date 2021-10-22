use hotelapp;

CREATE TABLE `userdetail` (
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) NOT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `UserType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci