LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux116_df IS
    PORT (
        s0, S1, S2, S3, O : IN STD_LOGIC;
        d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15 : OUT STD_LOGIC);
END demux116_df;

ARCHITECTURE dataflow OF demux116_df IS
BEGIN
    d0 <= (NOT s3) AND (NOT s2) AND (NOT s1) AND (NOT s0) AND O;
    d1 <= (NOT s3) AND (NOT s2) AND (NOT s1) AND s0 AND O;
    d2 <= (NOT s3) AND (NOT s2) AND s1 AND (NOT s0) AND O;
    d3 <= (NOT s3) AND (NOT s2) AND s1 AND s0 AND O;
    d4 <= (NOT s3) AND s2 AND (NOT s1) AND (NOT s0) AND O;
    d5 <= (NOT s3) AND s2 AND (NOT s1) AND s0 AND O;
    d6 <= (NOT s3) AND s2 AND s1 AND (NOT s0) AND O;
    d7 <= (NOT s3) AND s2 AND s1 AND s0 AND O;
    d8 <= s3 AND (NOT s2) AND (NOT s1) AND (NOT s0) AND O;
    d9 <= s3 AND (NOT s2) AND (NOT s1) AND s0 AND O;
    d10 <= s3 AND (NOT s2) AND s1 AND (NOT s0) AND O;
    d11 <= s3 AND (NOT s2) AND s1 AND s0 AND O;
    d12 <= s3 AND s2 AND (NOT s1) AND (NOT s0) AND O;
    d13 <= s3 AND s2 AND (NOT s1) AND s0 AND O;
    d14 <= s3 AND s2 AND s1 AND (NOT s0) AND O;
    d15 <= s3 AND s2 AND s1 AND s0 AND O;
END dataflow;