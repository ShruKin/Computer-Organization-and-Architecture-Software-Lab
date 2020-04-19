LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Dec_1_2_bh IS
    PORT (
        I0 : IN BIT;
        Y0, Y1 : OUT BIT
    );
END Dec_1_2_bh;

ARCHITECTURE behavioural OF Dec_1_2_bh IS
BEGIN
    PROCESS (I0)
    BEGIN
        IF (I0 = '0') THEN
            Y0 <= '1';
            Y1 <= '0';
        ELSE
            Y0 <= '0';
            Y1 <= '1';
        END IF;
    END PROCESS;
END behavioural;