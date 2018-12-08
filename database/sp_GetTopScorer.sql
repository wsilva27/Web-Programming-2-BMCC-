DELIMITER $$
CREATE PROCEDURE GetTopScorer()
BEGIN
SELECT T2.PLAYER_ID, T1.PLAYER_NAME, T3.TEAM_NAME, COUNT(T1.PLAYER_ID) AS GOALS
	FROM PLAYER AS T1
	INNER JOIN SCORE AS T2 ON T1.PLAYER_ID=T2.PLAYER_ID
	INNER JOIN TEAM AS T3 ON T1.TEAM_ID=T3.TEAM_ID
GROUP BY T2.PLAYER_ID
ORDER BY COUNT(T1.PLAYER_ID) DESC;
END $$
DELIMITER ;