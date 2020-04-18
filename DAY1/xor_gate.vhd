LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY xorGate IS
    PORT (
        a, b : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE xorLogic OF xorGate IS
BEGIN
    y <= a XOR b;
END ARCHITECTURE;