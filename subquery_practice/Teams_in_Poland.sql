-- Teams in Poland
SELECT team_long_name,team_short_name AS abbreviation
  FROM Team
 WHERE team_api_id IN 
 /* Subquery to match to Poland's id */
  (SELECT home_team_api_id
     FROM Match
    WHERE country_id = 15722);





