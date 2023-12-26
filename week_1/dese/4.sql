SELECT t.city, COUNT(t.city) FROM (SELECT * FROM "schools" WHERE type = 'Public School') t GROUP BY t.city ORDER BY COUNT(t.city) DESC, t.city LIMIT 10;
