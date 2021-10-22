Given Requirement:

•	Implement session & logout properly
•	package structure 
•	Differentiate between Admin and non-admin users (explore normalization concept in Database)
•	clean segregation of MVC (DTO for DB classes, Util, Controllers, Service)
•	Room, book room with details (no. of persons to stay, date of stay from and to, PAN card etc.,)
•	have admin login to show all bookings from all customers
•	have particular user login to show "My Bookings" (only specific to logged in customers)
 
	Menu: Home - To display available rooms with room specifications (like Single, Double, Executive suit). The Booked room should be displayed with different
	color to denote it is booked.
	MyBooking - (should be displayed only to non-admin users). To show in table format the details of booking with date, room type, room no, etc.,
	Bookings - (Should be displayed only to Admin login). To show all the rooms and booking detail of each room.
	Logout (should not see details when clicked back button in browser after logout)

Work done by me:

1.	Created Separate Packages (MVC) like:
i.	View – JSP and HTML, CSS files
ii.	Controller - .java files which handles the servlet DB of the project
iii.	Util.dao – For Database connection and which is called as import package in controller files
2.	Differentiated Admin and User login.
3.	Also, showed their room booked information in separate My Booking page, which gives information according to their individual login.
4.	Room availability information is also updated in database, which can be accessed by admin.
5.	Handled Session Login ( Logout partially done )

