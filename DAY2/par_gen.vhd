LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY par_gen IS
    PORT (
        D0, D1, D2 : IN BIT;
        even, odd : OUT BIT
    );
END par_gen;

ARCHITECTURE dataflow OF par_gen IS
BEGIN
    even <= D0 XOR D1 XOR D2;
    odd <= NOT(D0 XOR D1 XOR D2);
END dataflow;