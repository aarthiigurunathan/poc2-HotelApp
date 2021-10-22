use hotelapp;

CREATE TABLE `bookingdetails` (
`UserName` varchar(45) NOT NULL,
`RoomNumber` int default NULL,
`RoomType` varchar(45) DEFAULT NULL,
`BookingDate` varchar(45) DEFAULT NULL,
`StartDate` varchar(45) DEFAULT NULL,
`EndDate` varchar(45) DEFAULT NULL,
PRIMARY KEY (`userName`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci