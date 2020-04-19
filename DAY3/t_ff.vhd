LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY t_ff IS
    PORT (
        T, CLOCK, SET : IN std_logic;
        Q, QBAR : OUT std_logic);
END t_ff;

ARCHITECTURE bhv OF t_ff IS

BEGIN

    PROCESS (CLOCK, SET)
        VARIABLE tmp : std_logic;
    BEGIN
        IF (CLOCK = '1' AND CLOCK'EVENT) THEN
            IF (SET = '1') THEN
                tmp := '1';
            ELSIF (T = '0') THEN
                tmp := tmp;
            ELSE
                tmp := NOT tmp;
            END IF;
        END IF;

        Q <= tmp;
        Qbar <= NOT tmp;
    END PROCESS;
END bhv;