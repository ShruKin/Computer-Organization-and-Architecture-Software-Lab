LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MUX_2_1_bh IS
    PORT (
        I0, I1, S : IN BIT;
        Y : OUT BIT
    );
END MUX_2_1_bh;

ARCHITECTURE behavioural OF MUX_2_1_bh IS
BEGIN
    PROCESS (I0, I1, S)
    BEGIN
        IF (S = '0') THEN
            Y <= I0;
        ELSE
            Y <= I1;
        END IF;
    END PROCESS;
END behavioural;