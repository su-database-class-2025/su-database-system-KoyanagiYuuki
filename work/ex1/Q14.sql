SELECT store.store_id, address.address_id, city.city 
    FROM address LEFT OUTER JOIN store ON store.address_id = address.address_id
         LEFT OUTER JOIN city ON address.city_id = city.city_id;