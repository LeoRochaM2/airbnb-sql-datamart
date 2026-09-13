SELECT booking_id, check_in_date, check_out_date, n_nights, n_guests, booking_status,booking_timestamp, total_price, title, rating_stars,
review_timestamp, cleanliness, accuracy, check_in, communication, location, general_value 
FROM booking 
	INNER JOIN acc_review USING (booking_id)
	INNER JOIN review USING (review_id)
    INNER JOIN review_relation USING (review_id)
    INNER JOIN review_value USING (value_id)
;