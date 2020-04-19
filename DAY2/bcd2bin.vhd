LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bcd2bin IS
    PORT (
        d : IN std_logic_vector(3 DOWNTO 0);
        b : OUT std_logic_vector(3 DOWNTO 0)
    );
END bcd2bin;
ARCHITECTURE dataflow OF bcd2bin IS
BEGIN

    b(3) <= d(3);
    b(2) <= d(2);
    b(1) <= d(1);
    b(0) <= d(0);
END dataflow;