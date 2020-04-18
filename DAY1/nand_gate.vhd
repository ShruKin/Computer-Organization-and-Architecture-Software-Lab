LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY nandGate IS
    PORT (
        a, b : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE nandLogic OF nandGate IS
BEGIN
    y <= a NAND b;
END ARCHITECTURE;