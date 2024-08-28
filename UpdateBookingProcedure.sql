DELIMITER //

CREATE PROCEDURE UpdateBooking(IN bookingid INT, IN bookingdate DATE)
BEGIN
    UPDATE Bookings 
    SET Date = bookingdate 
    WHERE BookingID = bookingid;
END //

DELIMITER ;
