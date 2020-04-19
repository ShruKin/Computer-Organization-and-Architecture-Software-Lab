LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY jk_ff IS
    PORT (
        J, K, CLOCK : IN std_logic;
        Q, QBAR : OUT std_logic);
END jk_ff;

ARCHITECTURE bhv OF jk_ff IS
BEGIN
    PROCESS (J, K, CLOCK)
        VARIABLE tmp : std_logic;
    BEGIN
        IF (CLOCK = '1' AND CLOCK'EVENT) THEN
            IF (J = '0' AND K = '0') THEN
                tmp := tmp;
            ELSIF (J = '0' AND K = '1') THEN
                tmp := '0';
            ELSIF (J = '1' AND K = '0') THEN
                tmp := '1';
            ELSE
                tmp := NOT tmp;
            END IF;
        END IF;
        Q <= tmp;
        QBAR <= NOT tmp;
    END PROCESS;
END bhv;