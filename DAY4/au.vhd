LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY ARITHMETIC_UNIT IS
    PORT (
        a, b : IN std_logic_vector(3 DOWNTO 0);
        op : IN std_logic_vector(2 DOWNTO 0);
        f : OUT std_logic_vector(3 DOWNTO 0));
END ARITHMETIC_UNIT;

ARCHITECTURE bhv OF ARITHMETIC_UNIT IS
BEGIN
    PROCESS (op, a, b)
        VARIABLE temp : std_logic_vector(3 DOWNTO 0);
    BEGIN
        CASE op IS
            WHEN "000" => temp := a + b;
            WHEN "001" => temp := a + b + 1;
            WHEN "010" => temp := a + (NOT B) + 1;
            WHEN "011" => temp := a + (NOT B);
            WHEN "100" => temp := a + 1;
            WHEN "101" => temp := a - 1;
            WHEN "110" => temp := a;
            WHEN "111" => temp := b;
            WHEN OTHERS => NULL;
        END CASE;
        f <= temp;
    END PROCESS;
END bhv;