LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Dec_3_8_df IS
    PORT (
        I0, I1, I2 : IN BIT;
        Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : OUT BIT
    );
END Dec_3_8_df;

ARCHITECTURE dataflow OF Dec_3_8_df IS
BEGIN
    Y0 <= (NOT I0) AND (NOT I1) AND (NOT I2);
    Y1 <= (NOT I0) AND (NOT I1) AND (I2);
    Y2 <= (NOT I0) AND (I1) AND (NOT I2);
    Y3 <= (NOT I0) AND (I1) AND (I2);
    Y4 <= (I0) AND (NOT I1) AND (NOT I2);
    Y5 <= (I0) AND (NOT I1) AND (I2);
    Y6 <= (I0) AND (I1) AND (NOT I2);
    Y7 <= (I0) AND (I1) AND (I2);
END dataflow;