LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY mod_3 IS
    PORT (
        CLK, CLR : IN std_logic;
        output : OUT std_logic_vector(2 DOWNTO 0));
END mod_3;

ARCHITECTURE bhv OF mod_3 IS
    SIGNAL tmp : std_logic_vector(2 DOWNTO 0);
BEGIN
    PROCESS (CLK, CLR)
        VARIABLE i : INTEGER := 0;
    BEGIN
        IF (CLR = '1') THEN
            tmp <= "000";
        ELSIF (clk = '1' AND clk'event) THEN
            FOR i IN 0 TO 2 LOOP
                tmp <= tmp + 1;
            END LOOP;
        END IF;
    END PROCESS;
    output <= tmp;
END bhv;