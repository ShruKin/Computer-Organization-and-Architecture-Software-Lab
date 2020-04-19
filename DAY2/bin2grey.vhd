LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bin2gray IS
    PORT (
        bin : IN std_logic_vector(3 DOWNTO 0);
        G : OUT std_logic_vector(3 DOWNTO 0)
    );
END bin2gray;
ARCHITECTURE dataflow OF bin2gray IS BEGIN
    G(3) <= bin(3);
    G(2) <= bin(3) XOR bin(2);
    G(1) <= bin(2) XOR bin(1);
    G(0) <= bin(1) XOR bin(0);

END dataflow;