-- - 8 
-- Select goals scored only by non-German players in matches where GER was the id of either team1 or team2.
SELECT DISTINCT player 
FROM goal JOIN game ON goal.matchid = game.id
WHERE (team1 = 'GER' OR team2 = 'GER')
  AND teamid <> 'GER'
