SELECT players.first_name, players.last_name, t.salary/t.H as 'dollars per hit' FROM "players" JOIN (SELECT salaries.player_id, salaries.salary, performances.H FROM "salaries" JOIN "performances" ON salaries.player_id = performances.player_id WHERE salaries.year = performances.year AND performances.H != 0 AND performances.year = 2001) t ON t.player_id = players.id ORDER BY (t.salary/t.H) LIMIT 10;
