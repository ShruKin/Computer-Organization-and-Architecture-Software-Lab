LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY sipo IS
    PORT (
        clk, clear, din : IN std_logic;
        Q : OUT std_logic_vector(3 DOWNTO 0));
END sipo;

ARCHITECTURE bhv OF sipo IS
    SIGNAL temp : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (clk, clear)
    BEGIN
        IF clear = '1' THEN
            temp <= "0000";
        ELSIF (CLK'event AND CLK = '1') THEN
            temp(3) <= din;
            temp(2 DOWNTO 0) <= temp(3 DOWNTO 1);
        END IF;
    END PROCESS;
    Q <= temp;
END bhv;