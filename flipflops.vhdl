-- D Flip-Flop (with async reset)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity d_ff is
    Port ( clk, rst, d : in STD_LOGIC;
           q, qn : out STD_LOGIC );
end d_ff;
architecture Behavioral of d_ff is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            q <= '0';
        elsif rising_edge(clk) then
            q <= d;
        end if;
        qn <= not q;
    end process;
end Behavioral;

-- SR Flip-Flop (with async reset)
entity sr_ff is
    Port ( clk, rst, s, r : in STD_LOGIC;
           q, qn : out STD_LOGIC );
end sr_ff;
architecture Behavioral_sr of sr_ff is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            q <= '0';
        elsif rising_edge(clk) then
            if (s = '0' and r = '0') then
                -- Retain state
            elsif (s = '0' and r = '1') then
                q <= '0';
            elsif (s = '1' and r = '0') then
                q <= '1';
            else
                q <= 'X';  -- Invalid
            end if;
        end if;
        qn <= not q;
    end process;
end Behavioral_sr;

-- JK Flip-Flop (with async reset)
entity jk_ff is
    Port ( clk, rst, j, k : in STD_LOGIC;
           q, qn : out STD_LOGIC );
end jk_ff;
architecture Behavioral_jk of jk_ff is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            q <= '0';
        elsif rising_edge(clk) then
            if (j = '0' and k = '0') then
                -- Retain state
            elsif (j = '0' and k = '1') then
                q <= '0';
            elsif (j = '1' and k = '0') then
                q <= '1';
            elsif (j = '1' and k = '1') then
                q <= not q;
            end if;
        end if;
        qn <= not q;
    end process;
end Behavioral_jk;

-- T Flip-Flop (with async reset)
entity t_ff is
    Port ( clk, rst, t : in STD_LOGIC;
           q, qn : out STD_LOGIC );
end t_ff;
architecture Behavioral_t of t_ff is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            q <= '0';
        elsif rising_edge(clk) then
            if (t = '1') then
                q <= not q;
            end if;
            -- else retain state
        end if;
        qn <= not q;
    end process;
end Behavioral_t;

