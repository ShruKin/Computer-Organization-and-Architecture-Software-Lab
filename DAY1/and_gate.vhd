LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY andGate IS
    PORT (
        a, b : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE andLogic OF andGate IS
BEGIN
    y <= a AND b;
END ARCHITECTURE;