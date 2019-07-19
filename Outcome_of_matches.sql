SELECT id,
    home_team_goal,
    away_team_goal,	
CASE WHEN home_team_goal > away_team_goal THEN 'Home Team Win'
	 WHEN home_team_goal < away_team_goal THEN 'Away Team Win'
	 ELSE 'Tie' END AS Outcome
	 
FROM match
WHERE season = '2008/2009'; --> Can pick which season
