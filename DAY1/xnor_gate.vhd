LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY xnorGate IS
    PORT (
        a, b : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE xnorLogic OF xnorGate IS
BEGIN
    y <= a XNOR b;
END ARCHITECTURE;