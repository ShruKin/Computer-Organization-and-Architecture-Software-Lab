LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY ALU IS
    PORT (
        A : IN std_logic_vector(1 DOWNTO 0);
        B : IN std_logic_vector(1 DOWNTO 0);
        Sel : IN std_logic_vector(1 DOWNTO 0);
        Res : OUT std_logic_vector(1 DOWNTO 0));
END ALU;

ARCHITECTURE behv OF ALU IS
BEGIN

    PROCESS (A, B, Sel)
    BEGIN

        CASE Sel IS
            WHEN "00" =>
                Res <= A + B;
            WHEN "01" =>
                Res <= A + (NOT B) + 1;
            WHEN "10" =>
                Res <= A AND B;
            WHEN "11" =>
                Res <= A OR B;
            WHEN OTHERS =>
                Res <= "XX";
        END CASE;

    END PROCESS;

END behv;