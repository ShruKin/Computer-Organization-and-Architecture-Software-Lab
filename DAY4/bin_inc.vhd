LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;
ENTITY bin_inc IS
    PORT (
        A : IN std_logic_vector(3 DOWNTO 0);
        O : OUT std_logic_vector(3 DOWNTO 0)
    );
END bin_inc;

ARCHITECTURE behv OF bin_inc IS
BEGIN
    PROCESS (A)
        VARIABLE y, x, s, c : std_logic;
    BEGIN

        y := '1';
        x := A(0);

        FOR I IN 0 TO 3 LOOP
            x := A(I);
            s := x XOR y;
            c := x AND y;

            O(I) <= s;
            y := c;
        END LOOP;
    END PROCESS;
END behv;