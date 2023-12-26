SELECT ttt.first_name, ttt.last_name FROM (SELECT * FROM (SELECT  players.id, players.first_name, players.last_name FROM "players" JOIN (SELECT salaries.player_id, salaries.salary, performances.H FROM "salaries" JOIN "performances" ON salaries.player_id = performances.player_id WHERE salaries.year = performances.year AND performances.H != 0 AND performances.year = 2001) t ON t.player_id = players.id ORDER BY (t.salary/t.H) LIMIT 10)
INTERSECT
SELECT * FROM (SELECT players.id, players.first_name, players.last_name FROM "players" JOIN (SELECT salaries.player_id, salaries.salary, performances.RBI FROM "salaries" JOIN "performances" ON salaries.player_id = performances.player_id WHERE salaries.year = performances.year AND performances.RBI != 0 AND performances.year = 2001) t ON t.player_id = players.id ORDER BY (t.salary/t.RBI) LIMIT 10)) ttt ORDER BY ttt.id;