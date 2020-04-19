LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MUX_8_1_df IS
    PORT (
        I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2 : IN BIT;
        Y : OUT BIT
    );
END MUX_8_1_df;

ARCHITECTURE dataflow OF MUX_8_1_df IS
BEGIN
    Y <= ((I0 AND (NOT S0) AND (NOT S1) AND (NOT S2)) OR
        (I1 AND (NOT S0) AND (NOT S1) AND S2) OR
        (I2 AND (NOT S0) AND (S1) AND (NOT S2)) OR
        (I3 AND (NOT S0) AND (S1) AND S2) OR
        (I4 AND (S0) AND (NOT S1) AND (NOT S2)) OR
        (I5 AND (S0) AND (NOT S1) AND S2) OR
        (I6 AND (S0) AND (S1) AND (NOT S2)) OR
        (I7 AND (S0) AND (S1) AND (S2)));
END dataflow;