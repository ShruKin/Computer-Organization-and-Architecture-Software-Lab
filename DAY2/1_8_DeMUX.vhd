LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY demux18_df IS
    PORT (
        s0, S1, S2, O : IN STD_LOGIC;
        d0, d1, d2, d3, d4, d5, d6, d7 : OUT STD_LOGIC);
END demux18_df;
ARCHITECTURE dataflow OF demux18_df IS
BEGIN
    d0 <= (NOT s2) AND (NOT s1) AND (NOT s0) AND O;
    d1 <= (NOT s2) AND (NOT s1) AND s0 AND O;
    d2 <= (NOT s2) AND s1 AND (NOT s0) AND O;
    d3 <= (NOT s2) AND s1 AND s0 AND O;
    d4 <= s2 AND (NOT s1) AND (NOT s0) AND O;
    d5 <= s2 AND (NOT s1) AND s0 AND O;
    d6 <= s2 AND s1 AND (NOT s0) AND O;
    d7 <= s2 AND s1 AND s0 AND O;
END dataflow;