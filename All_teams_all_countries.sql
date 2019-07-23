-- Teams for country and Matches +data
SELECT c.id, c.name AS "Country",
		l.name AS "League",
		m.home_team_api_id, m.away_team_api_id,
		m.home_team_goal, m.away_team_goal, m.date
FROM Country AS c
INNER JOIN League AS l
ON c.id = l.id
	INNER JOIN Match AS m
	ON l.id = m.league_id