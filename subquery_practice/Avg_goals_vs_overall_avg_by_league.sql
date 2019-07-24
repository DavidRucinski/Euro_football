  SELECT l.name AS league,
         ROUND(AVG(m.home_team_goal + m.away_team_goal), 2) AS avg_goals,
    
	/* Subquery to calculate overall average goals scored */
	(SELECT ROUND(AVG(home_team_goal + away_team_goal), 2) 
       FROM Match
      WHERE season = '2013/2014') AS overall_avg --> Have same WHERE clause in main query
	 
--	ROUND(AVG(m.home_goal + m.away_goal) - 
--		(SELECT AVG(home_goal + away_goal)
--		 FROM match 
--       WHERE season = '2013/2014'),2) AS diff	 
--> To see the difference of overall vs avg for the season
	 
     FROM League AS l
LEFT JOIN match AS m
       ON l.country_id = m.country_id
    WHERE season = '2013/2014'
 GROUP BY league;