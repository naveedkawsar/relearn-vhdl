-- Simple buffer design

-- Import std_logic from IEEE library
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY DECLARATION: name, inputs, outputs
entity buffer_gate is
  port (
  x: in   std_logic;
  y: out  std_logic
);
end buffer_gate;

-- FUNCTIONAL DESCRIPTION: how the logic block works
architecture rtl of buffer_gate is
begin
  process(x) is
  begin
    -- y <= x;
    -- Truth table
    if (x = '0') then
      y <= '0';
    else
      y <= '1';
    end if;
  end process;
end rtl;
