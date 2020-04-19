LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY addsubtract IS
    PORT (
        S : IN STD_LOGIC;
        A, B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        Sout : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        Cout : OUT STD_LOGIC
    );
END addsubtract;

ARCHITECTURE behavioral OF addsubtract IS
    SIGNAL Sum : STD_LOGIC_VECTOR (4 DOWNTO 0);
BEGIN
    WITH S SELECT
        Sum <= ('0' & A) + ('0' & B) WHEN '0'
        , ('0' & A) - ('0' & B) + "10000" WHEN OTHERS;
    Cout <= Sum(4);
    Sout <= Sum(3 DOWNTO 0);
END behavioral;