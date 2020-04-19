LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY siso IS
    PORT (
        si : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        so : OUT STD_LOGIC);
END siso;

ARCHITECTURE bhv OF siso IS
    SIGNAL temp : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (clk)
    BEGIN
        IF (clk'event AND clk = '1') THEN
            temp <= si & temp(3 DOWNTO 1);
        END IF;
    END PROCESS;
    so <= temp(0);
END bhv;