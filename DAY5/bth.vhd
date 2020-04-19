LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY bth IS
    PORT (
        m : IN std_logic_vector(4 DOWNTO 1);
        mc : IN std_logic_vector(4 DOWNTO 1);
        o : OUT std_logic_vector(8 DOWNTO 1));
END bth;

ARCHITECTURE arc OF bth IS
BEGIN
    PROCESS (m, mc)
        VARIABLE ea : std_logic_vector(4 DOWNTO 1);
        VARIABLE q : std_logic_vector(4 DOWNTO 1);
        VARIABLE b : std_logic_vector(4 DOWNTO 1);
        VARIABLE qn : std_logic_vector(2 DOWNTO 1);
    BEGIN
        ea := "0000";
        b := m;
        q := mc;
        qn := q(1) & '0';
        FOR i IN 4 DOWNTO 1 LOOP
            IF qn = "01" THEN
                ea := ea(4 DOWNTO 1) + b(4 DOWNTO 1);
                q := ea(1) & q(4 DOWNTO 2);
                ea := ea(4) & ea(4 DOWNTO 2);
                qn := q(1) & qn(2);
            ELSIF qn = "10" THEN
                ea := ea(4 DOWNTO 1) + NOT(b(4 DOWNTO 1)) + 1;
                q := ea(1) & q(4 DOWNTO 2);
                ea := ea(4) & ea(4 DOWNTO 2);
                qn := q(1) & qn(2);
            ELSE
                q := ea(1) & q(4 DOWNTO 2);
                ea := ea(4) & ea(4 DOWNTO 2);
                qn := q(1) & qn(2);
            END IF;
        END LOOP;
        o <= ea(4 DOWNTO 1) & q(4 DOWNTO 1);
    END PROCESS;
END arc;