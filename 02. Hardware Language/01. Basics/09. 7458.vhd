library ieee;
use ieee.std_logic_1164.all;
entity top_module is
  port (
    p1a, p1b, p1c, p1d, p1e, p1f, p2a, p2b, p2c, p2d: in std_logic;
    p2y: out std_logic
  );
  end entity;
    
    architecture rtl of top_module is
      begin
        p1y <= (p1a and p1b and p1c) or (p1d and p1e and p1f);
        p2y <= (p2a and p2b) or (p2c and p2d)
      end architecture;
