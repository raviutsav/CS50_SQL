SELECT salaries.year, salaries.salary FROM "salaries" JOIN "players" ON salaries.player_id = players.id WHERE first_name = 'Cal' ORDER BY salaries.year DESC;
