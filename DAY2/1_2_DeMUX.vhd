LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY demux12_df IS
    PORT (
        I, S : IN BIT;

        O1, O2 : OUT BIT);
END demux12_df;
ARCHITECTURE dataflow OF demux12_df IS
BEGIN
    O1 <= I AND (NOT S);
    O2 <= I AND S;
END dataflow;