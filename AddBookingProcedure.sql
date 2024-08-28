delimiter //
CREATE PROCEDURE AddBooking(bid int,cid int,bdate date,tableno int)
begin
INSERT INTO Bookings VALUE(bid,bdate,tableno,cid);
SELECT "NEW BOOKING ADDED" AS CONFIRMATION;
end //
DELIMITER ;
CALL AddBooking(7,3,'2022-12-30',5);