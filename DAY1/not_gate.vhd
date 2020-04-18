LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY notGate IS
    PORT (
        a : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE notLogic OF notGate IS
BEGIN
    y <= NOT a;
END ARCHITECTURE;