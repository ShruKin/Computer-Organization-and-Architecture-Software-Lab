LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY par_check IS
    PORT (
        D0, D1, D2, D3 : IN BIT;
        even, odd : OUT BIT
    );
END par_check;

ARCHITECTURE dataflow OF par_check IS
BEGIN
    even <= D0 XOR D1 XOR D2 XOR D3;
    odd <= NOT(D0 XOR D1 XOR D2 XOR D3);
END dataflow;