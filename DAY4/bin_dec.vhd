LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY bin_dec IS
    PORT (
        A : IN std_logic_vector(3 DOWNTO 0);
        O : OUT std_logic_vector(3 DOWNTO 0)
    );
END bin_dec;

ARCHITECTURE behv OF bin_dec IS
BEGIN
    PROCESS (A)
        VARIABLE y, x, s, cout, cin : std_logic;
    BEGIN

        y := '1';
        cin := '0';

        FOR I IN 0 TO 3 LOOP
            x := A(I);
            s := x XOR y XOR cin;
            cout := (x AND y) OR (y AND cin) OR (cin AND x);

            O(I) <= s;
            cin := cout;
        END LOOP;
    END PROCESS;
END behv;