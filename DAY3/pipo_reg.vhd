LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY pipo IS
    PORT (
        CLR, CLOCK : IN std_logic;
        din : IN std_logic_vector(3 DOWNTO 0);
        q : OUT std_logic_vector(3 DOWNTO 0));
END pipo;

ARCHITECTURE bhv OF pipo IS
    SIGNAL tmp : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (CLR, CLOCK, din)
    BEGIN
        IF (CLR = '1') THEN
            tmp <= "0000";
        ELSIF (CLOCK = '1' AND CLOCK'EVENT) THEN
            tmp <= din;
        END IF;
        q <= tmp;
    END PROCESS;
END bhv;