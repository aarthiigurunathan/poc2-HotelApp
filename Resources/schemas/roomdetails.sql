use hotelapp;

CREATE TABLE `roomdetails` (
  `RoomNumber` int NOT NULL,
  `RoomType` varchar(45) NOT NULL,
  `RoomAvailability` varchar(45) NOT NULL,
  PRIMARY KEY (`RoomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci