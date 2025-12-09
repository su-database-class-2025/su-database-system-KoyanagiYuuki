SELECT DISTINCT country_id, count(city) AS num_city
    FROM city
    GROUP BY country_id
    HAVING count(city) >= 20
    ORDER BY num_city DESC;