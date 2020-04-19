LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY priorityencoder83 IS
    PORT (
        enable : IN std_logic;
        encoder_in : IN std_logic_vector (7 DOWNTO 0);
        binary_out : OUT std_logic_vector (2 DOWNTO 0)
    );
END priorityencoder83;

ARCHITECTURE behavior OF priorityencoder83 IS
BEGIN
    binary_out <= "000" WHEN enable = '0' ELSE
        "111" WHEN encoder_in(0) = '1' ELSE
        "110" WHEN encoder_in(1) = '1' ELSE
        "101" WHEN encoder_in(2) = '1' ELSE
        "100" WHEN encoder_in(3) = '1' ELSE
        "011" WHEN encoder_in(4) = '1' ELSE
        "010" WHEN encoder_in(5) = '1' ELSE
        "001" WHEN encoder_in(6) = '1' ELSE
        "000" WHEN encoder_in(7) = '1' ELSE
        "000";
END behavior;