SELECT acc_id, acc_type, acc_name, acc_description, price_p_night, service_fee, cleaning_fee, amenity_name 
FROM accommodation 
	INNER JOIN amenity_relation USING (acc_id)
	INNER JOIN amenity USING (amenity_id)
	;