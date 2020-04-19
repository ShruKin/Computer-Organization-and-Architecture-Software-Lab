LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY HA_DF IS
    PORT (
        a, b : IN std_logic;
        sum, cout : OUT std_logic);
END ENTITY;

ARCHITECTURE dataflow OF HA_DF IS
BEGIN
    sum <= a XOR b;
    cout <= a AND b;
END ARCHITECTURE;