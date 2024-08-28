DELIMITER //
create procedure AddValidBooking(BookingDate Date,Tableno int)
BEGIN
DECLARE a int;
START TRANSACTION;
SELECT Count(*) into a from Bookings WHERE Date=BookingDate AND TableNo=Tableno;
IF a>0 THEN
SELECT CONCAT(TableNo," is already Booked");
RollBACK;
ELSE INSERT INTO Bookings VALUE(5,BookingDate,Tableno,1);
Commit;
END IF;
END //
DELIMITER ;
CALL AddValidBooking('2022-10-10',5)