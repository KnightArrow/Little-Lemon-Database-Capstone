CREATE PROCEDURE CancelBooking(bookingid int)
DELETE FROM Bookings WHERE BookingID=bookingid;
call CancelBooking(6);