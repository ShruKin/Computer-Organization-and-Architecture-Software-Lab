LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY orGate IS
    PORT (
        a, b : IN BIT;
        y : OUT BIT);
END ENTITY;
ARCHITECTURE orLogic OF orGate IS
BEGIN
    y <= a OR b;
END ARCHITECTURE;