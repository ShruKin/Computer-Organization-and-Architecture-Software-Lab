LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY FS_DF IS
    PORT (
        a, b, bin : IN std_logic;
        sum, bout : OUT std_logic);
END ENTITY;

ARCHITECTURE dataflow OF FS_DF IS
BEGIN
    sum <= a XOR b XOR bin;
    bout <= (NOT(a) AND bin) OR (NOT(a) AND b) OR (b AND bin);
END ARCHITECTURE;