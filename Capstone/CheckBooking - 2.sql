CREATE PROCEDURE 'CheckBooking' (booking_date DATE, table_number INT)
BEGIN
DECLARE BookedTable INT DEFAULT 0;
    SELECT COUNT(BookedTable)
        INTO BookedTable
        FROM Bookings WHERE BookingDate = booking_date and TableNumber = table_number
        IF BookedTable > 0 THEN
            SELECT CONCAT("Table", table_number, "is already booked") AS "Booking Status";
            ELSE
            SELECT CONCAT("Table", table_number,"is not booked") AS "Booking Status;" 
        END IF;
END


