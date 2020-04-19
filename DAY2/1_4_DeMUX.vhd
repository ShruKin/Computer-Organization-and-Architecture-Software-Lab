LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY demux14_df IS
    PORT (
        s1, s0, Y : IN BIT;
        d0, d1, d2, d3 : OUT BIT
    );
END demux14_df;
ARCHITECTURE dataflow OF demux14_df IS
BEGIN
    d0 <= (NOT s0 AND NOT s1 AND Y);
    d1 <= (NOT s0 AND s1 AND Y);
    d2 <= (s0 AND NOT s1 AND Y);
    d3 <= (s0 AND s1 AND Y);
END dataflow;