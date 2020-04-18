LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY norGate IS
    PORT (
        a, b : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE norLogic OF norGate IS
BEGIN
    y <= a NOR b;
END ARCHITECTURE;