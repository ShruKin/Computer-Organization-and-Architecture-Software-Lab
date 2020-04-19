LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gray2bcd IS
    PORT (
        G : IN std_logic_vector(3 DOWNTO 0);
        b : OUT std_logic_vector(3 DOWNTO 0)
    );
END gray2bcd;

ARCHITECTURE dataflow OF gray2bcd IS

BEGIN
    b(3) <= G(3);
    b(2) <= G(3) XOR G(2);
    b(1) <= G(3) XOR G(2) XOR G(1);
    b(0) <= G(3) XOR G(2) XOR G(1) XOR G(0);

END dataflow;