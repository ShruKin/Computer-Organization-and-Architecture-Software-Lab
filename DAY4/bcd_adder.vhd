LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY bcd_adder IS
    PORT (
        a, b : IN std_logic_vector(3 DOWNTO 0);
        cin : IN std_logic;
        o : OUT std_logic_vector(3 DOWNTO 0);
        cout : OUT std_logic);
END bcd_adder;

ARCHITECTURE bhv OF bcd_adder IS
    SIGNAL c, k, j, l : std_logic_vector(3 DOWNTO 0);
    SIGNAL m, n : std_logic;
BEGIN
    PROCESS (a, b, cin, c, j, k, l, m, n)
    BEGIN
        k(0) <= a(0) XOR b(0) XOR cin;
        c(0) <= (a(0) AND b(0)) OR (b(0) AND cin) OR (cin AND a(0));
        k(1) <= a(1) XOR b(1) XOR c(0);
        c(1) <= (a(1) AND b(1)) OR (b(1) AND c(0)) OR (c(0) AND a(1));
        k(2) <= a(2) XOR b(2) XOR c(1);
        c(2) <= (a(2) AND b(2)) OR (b(2) AND c(1)) OR (c(1) AND a(2));
        k(3) <= a(3) XOR b(3) XOR c(2);
        c(3) <= (a(3) AND b(3)) OR (b(3) AND c(2)) OR (c(2) AND a(3));
        n <= c(3) OR (k(3) AND k(2)) OR (k(3) AND k(1));
        cout <= n;
        j(3) <= '0';
        j(2) <= n;
        j(1) <= n;
        j(0) <= '0';
        m <= '0';
        o(0) <= j(0) XOR k(0) XOR m;
        l(0) <= (j(0) XOR k(0)) OR (k(0) AND m) OR (m AND j(0));
        o(1) <= j(1) XOR k(1) XOR l(0);
        l(1) <= (j(1) XOR k(1)) OR (k(1) AND l(0)) OR (l(0) AND j(1));
        o(2) <= j(2) XOR k(2) XOR l(1);
        l(2) <= (j(2) XOR k(2)) OR (k(2) AND l(1)) OR (l(1) AND j(2));
        o(3) <= j(3) XOR k(3) XOR l(2);
    END PROCESS;
END bhv;