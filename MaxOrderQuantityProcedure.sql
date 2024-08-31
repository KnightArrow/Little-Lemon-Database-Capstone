DELIMITER $$
CREATE DEFINER=`projectuser`@`%` PROCEDURE `MaxOrderQuantity`()
SELECT MAX(Quantity) FROM Orders$$
DELIMITER ;
