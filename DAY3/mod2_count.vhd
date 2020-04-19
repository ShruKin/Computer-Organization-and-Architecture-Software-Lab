LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY mod_2 IS
    PORT (
        CLK, CLR : IN std_logic;
        output : OUT std_logic_vector(1 DOWNTO 0));
END mod_2;

ARCHITECTURE bhv OF mod_2 IS
    SIGNAL tmp : std_logic_vector(1 DOWNTO 0);
BEGIN
    PROCESS (CLK, CLR)
        VARIABLE i : INTEGER := 0;
    BEGIN
        IF (CLR = '1') THEN
            tmp <= "00";
        ELSIF (clk = '1' AND clk'event) THEN
            FOR i IN 0 TO 1 LOOP
                tmp <= tmp + 1;
            END LOOP;
        END IF;
    END PROCESS;
    output <= tmp;
END bhv;