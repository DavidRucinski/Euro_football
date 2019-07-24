SELECT c.name AS country,
	ROUND(AVG(CASE WHEN m.season='2013/2014' AND m.home_team_goal = m.away_team_goal THEN 1
			 WHEN m.season='2013/2014' AND m.home_team_goal != m.away_team_goal THEN 0
			 END),2) AS percent_ties_2013_2014,
	ROUND(AVG(CASE WHEN m.season='2014/2015' AND m.home_team_goal = m.away_team_goal THEN 1
			 WHEN m.season='2014/2015' AND m.home_team_goal != m.away_team_goal THEN 0
			 END),2) AS percent_ties_2014_2015
FROM Country AS c
LEFT JOIN Match AS m
ON c.id = m.country_id
GROUP BY country;