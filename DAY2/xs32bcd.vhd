LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY e3_2_bin IS
    PORT (
        e : IN bit_vector(3 DOWNTO 0);
        b : OUT bit_vector(3 DOWNTO 0)
    );
END e3_2_bin;

ARCHITECTURE dataflow OF e3_2_bin IS BEGIN
    b(3) <= (e(3)AND e(2)) OR (e(3)AND e(1)AND e(0));
    b(2) <= (NOT e(2) AND (NOT e(1))) OR ((NOT e(2))AND NOT e(0)) OR (e(2)AND e(1)AND e(0));
    b(1) <= (e(1) XOR e(0));
    b(0) <= NOT e(0);
END dataflow;