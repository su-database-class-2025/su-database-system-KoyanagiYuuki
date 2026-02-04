SELECT city.city
    FROM city LEFT OUTER JOIN address ON address.city_id = city.city_id
    WHERE address.city_id IS NULL;