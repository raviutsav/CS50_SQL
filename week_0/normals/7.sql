SELECT ROUND(AVG("0m"), 2) as 'Average Equator Ocean Surface Temperature' FROM "normals" WHERE "latitude" <= 0.5 AND "latitude" >= -0.5;
