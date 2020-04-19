LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY up_down3 IS
    PORT (
        C, CLR, up_down : IN std_logic;
        Q : OUT std_logic_vector(2 DOWNTO 0));
END up_down3;

ARCHITECTURE bhv OF up_down3 IS
    SIGNAL tmp : std_logic_vector(2 DOWNTO 0);
BEGIN
    PROCESS (C, CLR)
    BEGIN
        IF (CLR = '1') THEN
            tmp <= "000";
        ELSIF (C'event AND C = '1') THEN
            IF (up_down = '1') THEN
                tmp <= tmp + 1;
            ELSE
                tmp <= tmp - 1;
            END IF;
        END IF;
    END PROCESS;
    Q <= tmp;
END bhv;