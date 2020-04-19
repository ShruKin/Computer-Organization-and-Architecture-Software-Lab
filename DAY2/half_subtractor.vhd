LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY HS_DF IS
    PORT (
        a, b : IN std_logic;
        diff, bout : OUT std_logic);
END ENTITY;

ARCHITECTURE dataflow OF HS_DF IS
BEGIN
    diff <= a XOR b;
    bout <= NOT(a) AND b;
END ARCHITECTURE;