LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gray2bin IS
    PORT (
        G : IN std_logic_vector(3 DOWNTO 0);
        bin : OUT std_logic_vector(3 DOWNTO 0)
    );
END gray2bin;

ARCHITECTURE dataflow OF gray2bin IS BEGIN
    bin(3) <= G(3);
    bin(2) <= G(3) XOR G(2);
    bin(1) <= G(3) XOR G(2) XOR G(1);
    bin(0) <= G(3) XOR G(2) XOR G(1) XOR G(0);

END dataflow;