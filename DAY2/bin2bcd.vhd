LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bin2bcd IS
    PORT (
        d : IN std_logic_vector(3 DOWNTO 0);
        b : OUT std_logic_vector(7 DOWNTO 0)
    );
END bin2bcd;

ARCHITECTURE dataflow OF bin2bcd IS
BEGIN
    b(7) <= '0';
    b(6) <= '0';
    b(5) <= '0';
    b(4) <= (d(3) AND d(2)) OR (d(2) AND d(1));
    b(3) <= d(3) AND (NOT d(2)) AND (NOT d(1));
    b(2) <= ((NOT d(3)) AND d(2)) OR (d(2) AND d(1));
    b(1) <= (d(3) AND d(2) AND (NOT d(1))) OR ((NOT d(3)) AND d(1));
    b(0) <= d(0);
END dataflow;