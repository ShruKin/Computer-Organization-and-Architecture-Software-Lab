LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY priorityencoder42 IS
    PORT (
        enable : IN std_logic;
        encoder_in : IN std_logic_vector (3 DOWNTO 0);
        binary_out : OUT std_logic_vector (1 DOWNTO 0)
    );
END priorityencoder42;

ARCHITECTURE behavior OF priorityencoder42 IS
BEGIN
    binary_out <= "00" WHEN enable = '0' ELSE
        "11" WHEN encoder_in(0) = '1' ELSE
        "10" WHEN encoder_in(1) = '1' ELSE
        "01" WHEN encoder_in(2) = '1' ELSE
        "00" WHEN encoder_in(3) = '1' ELSE
        "00";
END behavior;