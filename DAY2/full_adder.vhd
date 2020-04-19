LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY FA_DF IS
    PORT (
        a, b, cin : IN std_logic;
        sum, cout : OUT std_logic);
END ENTITY;

ARCHITECTURE dataflow OF FA_DF IS
BEGIN
    sum <= a XOR b XOR cin;
    cout <= (a AND b) OR (b AND cin) OR (a AND cin);
END ARCHITECTURE;