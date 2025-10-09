CREATE OR REPLACE FUNCTION fn_is_word_comprised(
    set_of_letters VARCHAR(50),
    word VARCHAR(50)
)
RETURNS BOOLEAN AS
$$
DECLARE
    letters TEXT := LOWER(set_of_letters);
    word_l TEXT := LOWER(word);
    letter CHAR;
BEGIN
    FOR i IN 1..LENGTH(word_l) LOOP
        letter := SUBSTR(word_l, i, 1);

        IF letter ~ '[a-z]' THEN
            IF POSITION(letter IN letters) = 0 THEN
                RETURN FALSE;
            END IF;

            letters := REGEXP_REPLACE(letters, letter, '', '');
        END IF;
    END LOOP;

    RETURN TRUE;
END;
$$
LANGUAGE plpgsql;