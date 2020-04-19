LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY up_2bit IS
    PORT (
        CLR, CLOCK : IN std_logic;
        q : OUT std_logic_vector(1 DOWNTO 0));
END up_2bit;

ARCHITECTURE bhv OF up_2bit IS
    SIGNAL tmp : std_logic_vector(1 DOWNTO 0);
BEGIN
    PROCESS (CLR, CLOCK)
    BEGIN
        IF (CLR = '1') THEN
            tmp <= "00";
        ELSIF (CLOCK = '1' AND CLOCK'EVENT) THEN
            tmp <= tmp + 1;
        END IF;
    END PROCESS;
    q <= tmp;
END bhv;