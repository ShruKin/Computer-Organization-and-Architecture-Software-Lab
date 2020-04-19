LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY encoder42_df IS
    PORT (
        Y3, Y2, Y1, Y0 : IN BIT;
        A1, A0 : OUT BIT
    );
END encoder42_df;

ARCHITECTURE dataflow OF encoder42_df IS
BEGIN
    A1 <= Y3 OR Y2;
    A0 <= Y1 OR Y3;

END dataflow;