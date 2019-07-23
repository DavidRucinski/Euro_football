SELECT m.date,
	t.team_long_name AS opponent, 
CASE WHEN home_team_goal > away_team_goal THEN 'Home Team Win'
	 WHEN home_team_goal < away_team_goal THEN 'Away Team Win'
	 ELSE 'Tie' END AS Outcome
FROM Match AS m
LEFT JOIN Team AS t
ON m.away_team_api_id = t.team_api_id

-- Filter for a team
-- WHERE m.home_team_api_id = 8634