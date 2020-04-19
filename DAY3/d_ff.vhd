LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_ff IS
    PORT (
        D, CLOCK : IN std_logic;
        Q, QBAR : OUT std_logic);
END d_ff;

ARCHITECTURE bhv OF d_ff IS
BEGIN
    PROCESS (CLOCK)
    BEGIN
        IF (CLOCK = '1' AND CLOCK'EVENT) THEN
            Q <= D;
        END IF;
    END PROCESS;
END bhv;