LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bin2e3 IS
    PORT (
        b : IN bit_vector(3 DOWNTO 0);
        e : OUT bit_vector(3 DOWNTO 0)
    );
END bin2e3;
ARCHITECTURE dataflow OF bin2e3 IS BEGIN
    e(3) <= b(3) OR (b(2) AND (b(1) OR b(0)));
    e(2) <= b(2) XOR (b(1) OR b(0));
    e(1) <= NOT (b(1) XOR b(0));
    e(0) <= NOT b(0);
END dataflow;