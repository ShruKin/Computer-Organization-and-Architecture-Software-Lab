LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY SHIFTER_UNIT IS
    PORT (
        A : IN std_logic_vector(1 DOWNTO 0);
        --B:	in std_logic_vector(1 downto 0);
        Sel : IN std_logic;
        Res : OUT std_logic_vector(1 DOWNTO 0)
    );
END SHIFTER_UNIT;

ARCHITECTURE behv OF SHIFTER_UNIT IS
BEGIN
    PROCESS (A, Sel)
        VARIABLE a1 : std_logic_vector(1 DOWNTO 0);
        VARIABLE b1 : std_logic_vector(1 DOWNTO 0);
    BEGIN
        a1 := A;

        CASE Sel IS
            WHEN '0' =>
                b1(1) := a1(0);
                b1(0) := '0';
            WHEN '1' =>
                b1(0) := a1(1);
                b1(1) := '0';
            WHEN OTHERS =>
                Res <= "XX";
        END CASE;
        Res <= b1;
    END PROCESS;
END behv;