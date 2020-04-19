LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY encoder_3 IS
    PORT (
        a : IN std_logic_vector(15 DOWNTO 0);
        b : OUT std_logic_vector(3 DOWNTO 0)
    );
END encoder_3;

ARCHITECTURE behave OF encoder_3 IS
BEGIN
    PROCESS (a)
    BEGIN
        IF (a = "1000000000000000") THEN
            b <= "0000";
        ELSIF (a = "0100000000000000") THEN
            b <= "0001";
        ELSIF (a = "0010000000000000") THEN
            b <= "0010";
        ELSIF (a = "0001000000000000") THEN
            b <= "0011";
        ELSIF (a = "0000100000000000") THEN
            b <= "0100";
        ELSIF (a = "0000010000000000") THEN
            b <= "0101";
        ELSIF (a = "0000001000000000") THEN
            b <= "0110";
        ELSIF (a = "0000000100000000") THEN
            b <= "0111";
        ELSIF (a = "0000000010000000") THEN
            b <= "1000";
        ELSIF (a = "0000000001000000") THEN
            b <= "1001";
        ELSIF (a = "0000000000100000") THEN
            b <= "1010";
        ELSIF (a = "0000000000010000") THEN
            b <= "1011";
        ELSIF (a = "0000000000001000") THEN
            b <= "1100";
        ELSIF (a = "0000000000000100") THEN
            b <= "1101";
        ELSIF (a = "0000000000000010") THEN
            b <= "1110";
        ELSIF (a = "0000000000000001") THEN
            b <= "1111";
        END IF;
    END PROCESS;
END behave;