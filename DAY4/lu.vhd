LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY LOGICAL_UNIT IS
    PORT (
        a, b : IN std_logic_vector(3 DOWNTO 0);
        op : IN std_logic_vector(2 DOWNTO 0);
        zero : OUT std_logic;
        f : OUT std_logic_vector(3 DOWNTO 0));
END LOGICAL_UNIT;

ARCHITECTURE bhv OF LOGICAL_UNIT IS
BEGIN
    PROCESS (op, a, b)
        VARIABLE temp : std_logic_vector(3 DOWNTO 0);
    BEGIN
        CASE op IS
            WHEN "000" => temp := a OR b;
            WHEN "001" => temp := a AND b;
            WHEN "010" => temp := NOT a;
            WHEN "011" => temp := a NOR b;
            WHEN "100" => temp := a NAND b;
            WHEN "101" => temp := a XOR b;
            WHEN "110" => temp := a XNOR b;
            WHEN "111" => IF a < b THEN
                temp := "1111";
            ELSE
                temp := "0000";
        END IF;
        WHEN OTHERS => NULL;
    END CASE;
    IF temp = "0000" THEN
        zero <= '1';
    ELSE
        zero <= '0';
    END IF;
    f <= temp;
END PROCESS;