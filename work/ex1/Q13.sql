SELECT * 
    FROM address LEFT OUTER JOIN store ON store.address_id = address.address_id;