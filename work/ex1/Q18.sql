SELECT country.country, count(customer.customer_id) AS num_customer, sum(payment.amount) AS sales
    FROM payment LEFT OUTER JOIN customer ON payment.customer_id = customer.customer_id
    LEFT OUTER JOIN address ON customer.address_id = address.address_id
    LEFT OUTER JOIN city ON city.city_id = address.city_id
    LEFT OUTER JOIN country ON country.country_id = city.country_id
    GROUP BY country.country;