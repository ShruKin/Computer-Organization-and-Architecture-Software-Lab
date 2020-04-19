LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY down_4bit IS
    PORT (
        CLR, CLOCK : IN std_logic;
        q : OUT std_logic_vector(3 DOWNTO 0));
END down_4bit;

ARCHITECTURE bhv OF down_4bit IS
    SIGNAL tmp : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (CLR, CLOCK)
    BEGIN
        IF (CLR = '1') THEN
            tmp <= "1111";
        ELSIF (CLOCK = '1' AND CLOCK'EVENT) THEN
            tmp <= tmp - 1;
        END IF;
    END PROCESS;
    q <= tmp;
END bhv;