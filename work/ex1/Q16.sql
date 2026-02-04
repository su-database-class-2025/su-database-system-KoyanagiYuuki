SELECT category.name, count(rental.rental_id)
    FROM rental LEFT OUTER JOIN inventory ON rental.inventory_id = inventory.inventory_id
    LEFT OUTER JOIN film ON film.film_id = inventory.film_id
    LEFT OUTER JOIN film_category ON film_category.film_id = film.film_id
    LEFT OUTER JOIN category ON category.category_id = film_category.category_id
    GROUP BY category.name;
