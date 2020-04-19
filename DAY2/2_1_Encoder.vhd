LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY encoder21_df IS
    PORT (
        Y1, Y0 : IN BIT;
        A0 : OUT BIT
    );
END encoder21_df;

ARCHITECTURE dataflow OF encoder21_df IS
BEGIN
    A0 <= Y1;
END dataflow;