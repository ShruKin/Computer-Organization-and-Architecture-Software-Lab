LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sr_ff IS
    PORT (
        S, R, CLOCK : IN std_logic;
        Q, QBAR : OUT std_logic);
END sr_ff;

ARCHITECTURE bhv OF sr_ff IS
BEGIN
    PROCESS (S, R, CLOCK)
        VARIABLE tmp : std_logic;
    BEGIN
        IF (CLOCK = '1' AND CLOCK'EVENT) THEN
            IF (S = '0' AND R = '0') THEN
                tmp := tmp;
            ELSIF (S = '0' AND R = '1') THEN
                tmp := '0';
            ELSIF (S = '1' AND R = '0') THEN
                tmp := '1';
            ELSE
                tmp := 'Z';
            END IF;
        END IF;
        Q <= tmp;
        QBAR <= NOT tmp;
    END PROCESS;
END bhv;