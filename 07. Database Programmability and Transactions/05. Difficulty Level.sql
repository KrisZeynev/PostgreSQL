CREATE OR REPLACE FUNCTION fn_difficulty_level(level INT)
RETURNS varchar AS
$$
DECLARE
    diff_level VARCHAR;
BEGIN
    IF level <= 40 THEN
        diff_level := 'Normal Difficulty';
    ELSIF level BETWEEN 41 AND 60 THEN
        diff_level := 'Nightmare Difficulty';
    ELSIF level > 60 THEN
        diff_level := 'Hell Difficulty';
    END IF;
    RETURN diff_level;
END;
$$
LANGUAGE plpgsql;

SELECT
    ug.user_id,
    ug.level,
    ug.cash,
    fn_difficulty_level(ug.level) AS difficulty_level
FROM users_games AS ug
ORDER BY ug.user_id;