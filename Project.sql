DELIMITER $$

CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    DECLARE rows_affected INT;
    DELETE FROM Orders
    WHERE OrderID = order_id;
    SET rows_affected = ROW_COUNT();
    IF rows_affected > 0 THEN
        SELECT CONCAT('Confirmation: Order ', order_id, ' is cancelled.') AS message;
    ELSE
        SELECT CONCAT('Order ', order_id, ' not found.') AS message;
    END IF;
END$$

DELIMITER ;
