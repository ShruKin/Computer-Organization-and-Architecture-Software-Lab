LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Dec_4_16_df IS
    PORT (
        I0, I1, I2, I3 : IN BIT;
        Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : OUT BIT;
        Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15 : OUT BIT
    );
END Dec_4_16_df;

ARCHITECTURE dataflow OF Dec_4_16_df IS
BEGIN
    Y0 <= (NOT I0) AND (NOT I1) AND (NOT I2) AND (NOT I3);
    Y1 <= (NOT I0) AND (NOT I1) AND (NOT I2) AND (I3);
    Y2 <= (NOT I0) AND (NOT I1) AND (I2) AND (NOT I3);
    Y3 <= (NOT I0) AND (NOT I1) AND (I2) AND (I3);
    Y4 <= (NOT I0) AND (I1) AND (NOT I2) AND (NOT I3);
    Y5 <= (NOT I0) AND (I1) AND (NOT I2) AND (I3);
    Y6 <= (NOT I0) AND (I1) AND (I2) AND (NOT I3);
    Y7 <= (NOT I0) AND (I1) AND (I2) AND (I3);
    Y8 <= (I0) AND (NOT I1) AND (NOT I2) AND (NOT I3);
    Y9 <= (I0) AND (NOT I1) AND (NOT I2) AND (I3);
    Y10 <= (I0) AND (NOT I1) AND (I2) AND (NOT I3);
    Y11 <= (I0) AND (NOT I1) AND (I2) AND (I3);
    Y12 <= (I0) AND (I1) AND (NOT I2) AND (NOT I3);
    Y13 <= (I0) AND (I1) AND (NOT I2) AND (I3);
    Y14 <= (I0) AND (I1) AND (I2) AND (NOT I3);
    Y15 <= (I0) AND (I1) AND (I2) AND (I3);
END dataflow;