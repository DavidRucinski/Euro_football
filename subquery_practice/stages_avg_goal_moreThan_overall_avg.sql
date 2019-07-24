SELECT stage,
       ROUND(s.avg_goals,2) AS avg_goal,
    --> average goals scored in the 2012/2013 season // Overall
    (SELECT ROUND(AVG(home_team_goal + away_team_goal), 2)
       FROM Match 
      WHERE season = '2012/2013') AS overall_avg
FROM 
	--> average goals scored in each stage during the 2012/2013 season
	  (SELECT stage,
              AVG(home_team_goal + away_team_goal) AS avg_goals
	     FROM Match
	    WHERE season = '2012/2013'
	 GROUP BY stage) AS s
WHERE 
	--> stages where the average goals exceeds the overall average
	s.avg_goals > (SELECT AVG(home_team_goal + away_team_goal) 
                     FROM Match 
                    WHERE season = '2012/2013');