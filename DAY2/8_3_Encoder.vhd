LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY encoder83_df IS
    PORT (
        Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0 : IN BIT;
        A2, A1, A0 : OUT BIT
    );
END encoder83_df;

ARCHITECTURE dataflow OF encoder83_df IS
BEGIN
    A2 <= Y7 OR Y6 OR Y5 OR Y4;
    A1 <= Y7 OR Y6 OR Y3 OR Y2;
    A0 <= Y7 OR Y5 OR Y3 OR Y1;
END dataflow;