LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rc_adder IS
    PORT (
        num1 : IN std_logic_vector(3 DOWNTO 0); --4 bit input 1
        num2 : IN std_logic_vector(3 DOWNTO 0); -- 4 bit input 2
        sum : OUT std_logic_vector(3 DOWNTO 0); -- 4 bit sum
        carry : OUT std_logic -- carry out.
    );
END rc_adder;

ARCHITECTURE Behavioral OF rc_adder IS
    SIGNAL c0, c1, c2, c3 : std_logic := '0';
BEGIN
    PROCESS (num1, num2, c0, c1, c2, c3)
    BEGIN
        --first full adder
        sum(0) <= num1(0) XOR num2(0);
        c0 <= num1(0) AND num2(0);
        --second full adder
        sum(1) <= num1(1) XOR num2(1) XOR c0;
        c1 <= (num1(1) AND num2(1)) OR (num1(1) AND c0) OR (num2(1) AND c0);
        --third full adder
        sum(2) <= num1(2) XOR num2(2) XOR c1;
        c2 <= (num1(2) AND num2(2)) OR (num1(2) AND c1) OR (num2(2) AND c1);
        --fourth(final) full adder
        sum(3) <= num1(3) XOR num2(3) XOR c2;
        c3 <= (num1(3) AND num2(3)) OR (num1(3) AND c2) OR (num2(3) AND c2);
        --final carry assignment
        carry <= c3;
    END PROCESS;
END Behavioral;