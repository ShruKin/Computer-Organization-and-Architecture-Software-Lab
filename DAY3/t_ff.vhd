LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY t_ff IS
    PORT (
        T, CLOCK : IN std_logic;
        Q, QBAR : OUT std_logic);
END t_ff;

ARCHITECTURE bhv OF t_ff IS
    SIGNAL tmp : std_logic;

BEGIN
    PROCESS (CLOCK)
    BEGIN
        IF (CLOCK = '1' AND CLOCK'EVENT) THEN
            IF (T = '0') THEN
                tmp <= tmp;
            ELSE
                tmp <= NOT tmp;
            END IF;
        END IF;
    END PROCESS;
    Q <= tmp;
END bhv;