library ieee;
use ieee.std_logic_1164.all;

entity arr04 is
  port (clk : in std_logic;
        rst : std_logic;
        sel_i : std_logic;
        v : std_logic;
        res : out std_logic_vector(0 to 1));
end arr04;

architecture behav of arr04 is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        res <= "00";
      else
        if sel_i = '0' then
          res (0) <= v;
        else
          res (1) <= v;
        end if;
      end if;
    end if;
  end process;
end behav;
