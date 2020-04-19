LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY comparator2 IS
    PORT (
        a, b : IN std_logic_vector (1 DOWNTO 0);
        result : OUT std_logic_vector (2 DOWNTO 0)

    );
END comparator2;

ARCHITECTURE behavior OF comparator2 IS
BEGIN
    PROCESS (a, b)
    BEGIN
        IF a < b THEN
            result <= "001";
        ELSIF a = b THEN
            result <= "010";
        ELSIF a > b THEN
            result <= "100";
        ELSE
            result <= "000";
        END IF;
    END PROCESS;
END behavior;