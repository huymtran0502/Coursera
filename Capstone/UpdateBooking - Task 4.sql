CREATE DEFINER = 'admin1'@'%' PROCEDURE 'UpdateBooking' (booking_id INT, booking_date DATE)
BEGIN
UPDATE bookings SET BookingDate = booking_date WHERE BookingID = booking_id;
SELECT CONCAT("Booking",booking_id,"Updated") AS "Confirmation";
END