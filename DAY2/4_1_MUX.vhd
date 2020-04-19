LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MUX_4_1_df IS
    PORT (
        I0, I1, I2, I3, S0, S1 : IN BIT;
        Y : OUT BIT
    );
END MUX_4_1_df;

ARCHITECTURE dataflow OF MUX_4_1_df IS
BEGIN
    Y <= ((I0 AND (NOT S0) AND (NOT S1)) OR
        (I1 AND (NOT S0) AND S1) OR
        (I2 AND S0 AND (NOT S1)) OR
        (I3 AND S0 AND S1));
END dataflow;