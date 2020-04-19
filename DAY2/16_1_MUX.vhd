LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MUX_16_1_df IS
    PORT (
        I0, I1, I2, I3, I4, I5, I6, I7 : IN BIT;
        I8, I9, I10, I11, I12, I13, I14, I15 : IN BIT;
        S0, S1, S2, S3 : IN BIT;
        Y : OUT BIT
    );
END MUX_16_1_df;

ARCHITECTURE dataflow OF MUX_16_1_df IS
BEGIN
    Y <= ((I0 AND (NOT S0) AND (NOT S1) AND (NOT S2) AND (NOT S3)) OR
        (I1 AND (NOT S0) AND (NOT S1) AND (NOT S2) AND (S3)) OR
        (I2 AND (NOT S0) AND (NOT S1) AND (S2) AND (NOT S3)) OR
        (I3 AND (NOT S0) AND (NOT S1) AND (S2) AND (S3)) OR
        (I4 AND (NOT S0) AND (S1) AND (NOT S2) AND (NOT S3)) OR
        (I5 AND (NOT S0) AND (S1) AND (NOT S2) AND (S3)) OR
        (I6 AND (NOT S0) AND (S1) AND (S2) AND (NOT S3)) OR
        (I7 AND (NOT S0) AND (S1) AND (S2) AND (S3)) OR
        (I8 AND (S0) AND (NOT S1) AND (NOT S2) AND (NOT S3)) OR
        (I9 AND (S0) AND (NOT S1) AND (NOT S2) AND (S3)) OR
        (I10 AND (S0) AND (NOT S1) AND (S2) AND (NOT S3)) OR
        (I11 AND (S0) AND (NOT S1) AND (S2) AND (S3)) OR
        (I12 AND (S0) AND (S1) AND (NOT S2) AND (NOT S3)) OR
        (I13 AND (S0) AND (S1) AND (NOT S2) AND (S3)) OR
        (I14 AND (S0) AND (S1) AND (S2) AND (NOT S3)) OR
        (I15 AND (S0) AND (S1) AND (S2) AND (S3)));
END dataflow;