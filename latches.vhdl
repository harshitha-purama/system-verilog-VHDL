-- SR Latch
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sr_latch is
    Port ( S, R : in STD_LOGIC;
           Q, Qn : out STD_LOGIC );
end sr_latch;
architecture Behavioral of sr_latch is
    signal Q_reg : STD_LOGIC := '0';
begin
    process(S, R)
    begin
        if (S = '0' and R = '0') then
            -- Latch retains state
        elsif (S = '0' and R = '1') then
            Q_reg <= '0';
        elsif (S = '1' and R = '0') then
            Q_reg <= '1';
        else
            Q_reg <= 'X'; -- Invalid
        end if;
    end process;
    Q <= Q_reg;
    Qn <= not Q_reg;
end Behavioral;

-- Gated SR Latch
entity gated_sr_latch is
    Port ( S, R, En : in STD_LOGIC;
           Q : out STD_LOGIC );
end gated_sr_latch;
architecture Behavioral_gsrl of gated_sr_latch is
    signal Q_reg : STD_LOGIC := '0';
begin
    process(S, R, En)
    begin
        if (En = '1') then
            if (S = '1' and R = '0') then
                Q_reg <= '1';
            elsif (S = '0' and R = '1') then
                Q_reg <= '0';
            end if;
        end if;
    end process;
    Q <= Q_reg;
end Behavioral_gsrl;

-- D Latch
entity d_latch is
    Port ( D, En : in STD_LOGIC;
           Q : out STD_LOGIC );
end d_latch;
architecture Behavioral_dl of d_latch is
    signal Q_reg : STD_LOGIC := '0';
begin
    process(D, En)
    begin
        if (En = '1') then
            Q_reg <= D;
        end if;
    end process;
    Q <= Q_reg;
end Behavioral_dl;

-- JK Latch
entity jk_latch is
    Port ( J, K, En : in STD_LOGIC;
           Q : out STD_LOGIC );
end jk_latch;
architecture Behavioral_jk of jk_latch is
    signal Q_reg : STD_LOGIC := '0';
begin
    process(J, K, En)
    begin
        if (En = '1') then
            if (J = '0' and K = '0') then
                -- retain state
            elsif (J = '0' and K = '1') then
                Q_reg <= '0';
            elsif (J = '1' and K = '0') then
                Q_reg <= '1';
            elsif (J = '1' and K = '1') then
                Q_reg <= not Q_reg;
            end if;
        end if;
    end process;
    Q <= Q_reg;
end Behavioral_jk;

-- T Latch
entity t_latch is
    Port ( T, En : in STD_LOGIC;
           Q : out STD_LOGIC );
end t_latch;
architecture Behavioral_tl of t_latch is
    signal Q_reg : STD_LOGIC := '0';
begin
    process(T, En)
    begin
        if (En = '1') then
            if (T = '1') then
                Q_reg <= not Q_reg;
            end if;
        end if;
    end process;
    Q <= Q_reg;
end Behavioral_tl;

