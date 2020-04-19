LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY CLA IS
    PORT (
        a, b : IN std_logic_vector(3 DOWNTO 0);
        cin : IN std_logic;
        s : OUT std_logic_vector(3 DOWNTO 0);
        cout : OUT std_logic
    );
END CLA;

ARCHITECTURE bhv OF CLA IS
    SIGNAL p, g, c : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (a, b, cin, c, p, g)
    BEGIN
        p(0) <= a(0) OR b(0);
        g(0) <= a(0) AND b(0);
        p(1) <= a(1) OR b(1);
        g(1) <= a(1) AND b(1);
        p(2) <= a(2) OR b(2);
        g(2) <= a(2) AND b(2);
        p(3) <= a(3) OR b(3);
        g(3) <= a(3) AND b(3);
        c(0) <= g(0) OR (p(0) AND cin);
        c(1) <= g(1) OR (p(1) AND c(0));
        c(2) <= g(2) OR (p(2) AND c(1));
        c(3) <= g(3) OR (p(3) AND c(2));
        cout <= c(3);
        s(0) <= a(0) XOR b(0) XOR cin;
        s(1) <= a(1) XOR b(1) XOR c(0);
        s(2) <= a(2) XOR b(2) XOR c(1);
        s(3) <= a(3) XOR b(3) XOR c(2);
    END PROCESS;
END bhv;