SELECT DISTINCT country_id, count(city) AS num_city
    FROM city
    GROUP BY country_id
    ORDER BY num_city DESC;