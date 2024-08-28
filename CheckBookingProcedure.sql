DELIMITER //

CREATE PROCEDURE CheckBooking(IN BookDate DATE, IN TableN INT)
BEGIN
    DECLARE a INT DEFAULT 0;
    SELECT COUNT(*) INTO a 
    FROM Bookings 
    WHERE TableNo = TableN AND Date = BookDate;
    IF a > 0 THEN
        SELECT CONCAT('Table ', TableN, ' is already booked on ', BookDate) AS BookingStatus;
    ELSE
        SELECT CONCAT('Table ', TableN, ' is available on ', BookDate) AS BookingStatus;
    END IF;
END //

DELIMITER ;
/* FOR Revision:
1. You cannot directly use select statement in IF-THEN.
2. Use Count() function as true or false.alter
3. Exists keyword cannot be use directly with IF. 
*/
CALL CheckBooking("2022-11-12",3)