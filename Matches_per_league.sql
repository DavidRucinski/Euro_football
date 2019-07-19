SELECT 
    l.name AS league,
    COUNT(m.country_id) as matches
FROM League AS l
LEFT JOIN Match AS m
ON l.country_id = m.country_id
GROUP BY l.name;