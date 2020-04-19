LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY piso IS
    PORT (
        clr, din, CLK : IN std_logic;
        p : IN std_logic_vector (3 DOWNTO 0);
        sout : OUT std_logic
    );
END piso;

ARCHITECTURE bhv OF piso IS
    SIGNAL temp : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (clr, CLK)
    BEGIN

        IF (clr = '1') THEN
            temp <= "0000";
        ELSIF (CLK'event AND CLK = '1') THEN
            temp <= din & p(3 DOWNTO 1);
        END IF;
    END PROCESS;
    sout <= temp(3);
END bhv;