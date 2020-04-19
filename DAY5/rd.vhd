LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY rd IS
    PORT (
        q : IN std_logic_vector(4 DOWNTO 1);
        m : IN std_logic_vector(4 DOWNTO 1);
        r : OUT std_logic_vector(4 DOWNTO 1);
        qo : OUT std_logic_vector(4 DOWNTO 1)
    );
END rd;

ARCHITECTURE arc OF rd IS
BEGIN
    PROCESS (q, m)
        VARIABLE a : std_logic_vector(4 DOWNTO 1);
        VARIABLE qv : std_logic_vector(4 DOWNTO 1);
        VARIABLE mv : std_logic_vector(4 DOWNTO 1);
    BEGIN
        qv := q;
        mv := m;
        a := "0000";
        FOR i IN 4 DOWNTO 1 LOOP
            a(4 DOWNTO 2) := a(3 DOWNTO 1);
            a(1) := qv(4);
            qv(4 DOWNTO 2) := qv(3 DOWNTO 1);
            a(4 DOWNTO 1) := a(4 DOWNTO 1) + (NOT mv(4 DOWNTO 1)) + 1;
            IF (a(4) = '0') THEN
                qv(1) := '1';
            ELSIF (a(4) = '1') THEN
                qv(1) := '0';
                a(4 DOWNTO 1) := a(4 DOWNTO 1) + mv(4 DOWNTO 1);
            END IF;
        END LOOP;
        qo <= qv;
        r <= a;
    END PROCESS;
END arc;